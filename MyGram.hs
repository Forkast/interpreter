module MyGram where

-- Haskell module generated by the BNF converter

import System.IO
import Control.Monad.State
import Data.Map as Map
import Data.Maybe
import Control.Monad.Trans.Except
import Control.Monad.Except
import Data.IORef

import AbsGram
import ErrM

type DataEnv = Map Ident (IORef Value)
type Result a = StateT DataEnv (ExceptT String IO) a

failure :: Show a => a -> Result ()
failure x = do
  liftIO $ putStrLn $ show x

{-
transIdent :: Ident -> Result
transIdent x = case x of
  Ident string -> failure x -}
transProgram :: Program -> Result ()
transProgram x = case x of
  Program stmts -> transStmts stmts
{-
transBlock :: Block -> Result
transBlock x = case x of
Block stmts -> failure x-}
transStmts :: [Stmt] -> Result ()
transStmts = mapM_ transStmt

declVal :: Ident -> Value -> Result ()
declVal i v = do
  el <- liftIO (newIORef v)
  modify $ \env -> Map.insert i (el) env

declItem :: Type -> Item -> Result ()
declItem t (NoInit i) = do -- TODO: domyslna wartosc
  declVal i (MyInt 0)
declItem _ (Init i e) = do
  v <- transExpr e
  declVal i v

condRunStmt :: Value -> Stmt -> Result ()
condRunStmt exp stmt1 = condElseRunStmt exp stmt1 Empty

condElseRunStmt :: Value -> Stmt -> Stmt -> Result ()
condElseRunStmt (MyBool True) stmt1 _ = transStmt stmt1
condElseRunStmt (MyBool False) _ stmt2 = transStmt stmt2

whileRunStmt :: Expr -> Stmt -> Result ()
whileRunStmt expr stmt = do
  cond <- transExpr expr
  condRunStmt cond stmt
  whileRunStmt expr stmt

block :: Result x -> Result x
block res = do
  old <- get
  co <- res
  put old
  return co

newFunction :: DataEnv -> [Ident] -> Block -> Result Value
newFunction env argsIden blk = return $ MyFunction $ \argsVal -> do
  currentState <- get
  put env
  zipWithM_ declVal argsIden argsVal
  transStmt (BStmt blk)
  put currentState
  return (MyInt 0)

argGetIdent :: Arg -> Result Ident
argGetIdent (Arg t i) = return i

transStmt :: Stmt -> Result ()
transStmt x = case x of
  Empty -> return ()
  BStmt (Block stmts) -> block $ transStmts stmts
  Decl type_ items -> mapM_ (declItem type_) items
  Ass i expr -> do
    item <- gets $ (Map.! i)
    v <- transExpr expr
    liftIO $ writeIORef item v
  Incr ident -> failure x
  Decr ident -> failure x
  Ret expr -> failure x
  VRet -> failure x
  Cond expr stmt ->  do
    cond <- transExpr expr
    condRunStmt cond stmt
  CondElse expr stmt1 stmt2 -> do
    cond <- transExpr expr
    condElseRunStmt cond stmt1 stmt2
  While expr stmt -> do
    whileRunStmt expr stmt
  Debug -> do
    liftIO $ putStrLn "uwaga teraz debuguje"
    state <- get
    liftIO $ mapM readIORef state >>= print
  FnDef type_ ident args blk -> do
    argIdents <- mapM argGetIdent args
    ref <- liftIO $ newIORef (MyInt 0)
    modify $ \env -> Map.insert ident ref env
    env <- get
    fun <- newFunction env argIdents blk
    liftIO $ writeIORef ref fun
  SExp expr -> do
    transExpr expr
    return ()

{-
transItem :: Item -> Result
transItem x = case x of
  NoInit ident -> failure x
  Init ident expr -> failure x
transType :: Type -> Result
transType x = case x of
  Int -> failure x
  Str -> failure x
  Bool -> failure x
  Void -> failure x
  Ref type_ -> failure x
  Fun type_ types -> failure x
-}

type Fun = [Value] -> Result Value

data Value = MyInt Int
           | MyStr String
           | MyBool Bool
           | MyFunction Fun
           | MyLambda Type [Type] Block

data Operator = MyAdd (Value -> Value -> Value)
              | MyMul (Value -> Value -> Value)
              | MyRel (Value -> Value -> Value)

instance Show Value where
  show (MyInt x) = show x
  show (MyStr x) = x
  show (MyBool x) = show x
  show (MyFunction x) = show "funkcja"

myAdd :: Value -> Value -> Value
myAdd (MyInt x) (MyInt y) = MyInt (x + y)
myAdd (MyStr x) (MyStr y) = MyStr (x ++ y)

myMin :: Value -> Value -> Value
myMin (MyInt x) (MyInt y) = MyInt (x - y)

myMul :: Value -> Value -> Value
myMul (MyInt x) (MyInt y) = MyInt (x * y)

myDiv :: Value -> Value -> Value
myDiv (MyInt x) (MyInt y) = MyInt (x `div` y)

myMod :: Value -> Value -> Value
myMod (MyInt x) (MyInt y) = MyInt (mod x y)

myLth :: Value -> Value -> Value
myLth (MyInt x) (MyInt y) = MyBool (x < y)
myLth (MyStr x) (MyStr y) = MyBool (x < y)

myLe :: Value -> Value -> Value
myLe (MyInt x) (MyInt y) = MyBool (x <= y)
myLe (MyStr x) (MyStr y) = MyBool (x <= y)

myGth :: Value -> Value -> Value
myGth (MyInt x) (MyInt y) = MyBool (x > y)
myGth (MyStr x) (MyStr y) = MyBool (x > y)

myGe :: Value -> Value -> Value
myGe (MyInt x) (MyInt y) = MyBool (x >= y)
myGe (MyStr x) (MyStr y) = MyBool (x >= y)

myEqu :: Value -> Value -> Value
myEqu (MyInt x) (MyInt y) = MyBool (x == y)
myEqu (MyStr x) (MyStr y) = MyBool (x == y)

myNe :: Value -> Value -> Value
myNe (MyInt x) (MyInt y) = MyBool (x /= y)
myNe (MyStr x) (MyStr y) = MyBool (x /= y)

transExpr :: Expr -> Result Value
transExpr (EAdd expr1 addop expr2) = do
  v1 <- transExpr expr1
  v2 <- transExpr expr2
  (MyAdd x) <- transAddOp addop
  return $ x v1 v2
transExpr (EMul expr1 mulop expr2) = do
  v1 <- transExpr expr1
  v2@(MyInt x2) <- transExpr expr2
  case mulop of
    Times -> do
      (MyMul x) <- transMulOp mulop
      return $ x v1 v2
    _ -> do
      (MyMul x) <- transMulOp mulop
      if x2 == 0 then
        throwError "dzielisz przez zero! debilu."
      else
        return $ x v1 v2
transExpr (ERel expr1 relop expr2) = do
  v1 <- transExpr expr1
  v2 <- transExpr expr2
  (MyRel x) <- transRelOp relop
  return $ x v1 v2
transExpr x = case x of
  ELam type_ types block -> return $ MyLambda type_ types block
  EVar ident -> do
    state <- get
    liftIO $ readIORef $ state Map.! ident
  ELitInt integer -> return $ MyInt $ fromInteger integer
  ELitTrue -> return $ MyBool True
  ELitFalse -> return $ MyBool False
  EApp ident exprs -> do
    MyFunction f <- transExpr ident
    args <- mapM transExpr exprs
    f args
  EString string -> return $ MyStr string
--   Neg expr -> failure x
--   Not expr -> failure x
--   EAnd expr1 expr2 -> failure x
--   EOr expr1 expr2 -> failure x
-- transExpr (EAdd (ELitInt x) addop exp1) = transExpr 
    

transAddOp :: AddOp -> Result Operator
transAddOp x = case x of
  Plus -> return $ (MyAdd myAdd)
  Minus -> return $ (MyAdd myMin)

transMulOp :: MulOp -> Result Operator
transMulOp x = case x of
  Times -> return $ (MyMul myMul)
  Div -> return $ (MyMul myDiv)
  Mod -> return $ (MyMul myMod)

transRelOp :: RelOp -> Result Operator
transRelOp x = case x of
  LTH -> return $ (MyRel myLth)
  LE -> return $ (MyRel myLe)
  GTH -> return $ (MyRel myGth)
  GE -> return $ (MyRel myGe)
  EQU -> return $ (MyRel myEqu)
  NE -> return $ (MyRel myNe)
