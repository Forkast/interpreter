module MyGram where

-- Haskell module generated by the BNF converter

import System.IO
import Control.Monad.State
import Data.Map as Map
import Data.Maybe
import Control.Monad.Trans.Except
import Control.Monad.Except
import Control.Monad.Cont
import Data.IORef

import AbsGram
import ErrM

data Env = Env {
  variables :: DataEnv,
  conti :: Value -> Result Value
}

type DataEnv = Map Ident (IORef Value)
type Result a = StateT Env (ExceptT String (ContT (Either String Env) IO)) a

type Fun = [Value] -> Result Value

data Value = MyInt Int
           | MyStr String
           | MyBool Bool
           | MyFunction Fun
           | MyVoid

instance Show Value where
  show (MyInt x) = show x
  show (MyStr x) = x
  show (MyBool x) = show x
  show (MyFunction x) = "function_type"
  show MyVoid = "void"

failure :: Show a => a -> Result ()
failure x = do
  liftIO $ putStrLn $ show x

myPrint :: [Value] -> Result Value
myPrint x = do
  w <- return $ fmap show x
  p <- return $ unwords w
  liftIO $ putStrLn p
  return MyVoid

transProgram :: Program -> Result Value
transProgram (Program fundefs) = do
  ref <- liftIO $ newIORef (MyFunction myPrint)
  modify $ \env -> env {variables = Map.insert (Ident "print") ref (variables env)}
  transFunDefs fundefs
  transExpr $ EApp (EVar (Ident "main")) []

transFunDefs :: [FunDef] -> Result ()
transFunDefs [] = return ()
transFunDefs (x : xs) = do
  transFunDef x
  transFunDefs xs

transFunDef :: FunDef -> Result ()
transFunDef x = case x of
  FnDef type_ ident args blk -> do
    argIdents <- mapM argGetIdent args
    ref <- liftIO $ newIORef (defaultValue type_)
    modify $ \env -> env {variables = Map.insert ident ref (variables env)}
    env <- get
    fun <- newFunction env argIdents blk
    liftIO $ writeIORef ref fun

transStmts :: [Stmt] -> Result ()
transStmts = mapM_ transStmt

declVal :: Ident -> Value -> Result ()
declVal i v = do
  el <- liftIO (newIORef v)
  modify $ \env -> env {variables = Map.insert i el (variables env)}

declItem :: Type -> Item -> Result ()
declItem t (NoInit i) = do
  declVal i (defaultValue t)
declItem _ (Init i e) = do
  v <- transExpr e
  declVal i v

defaultValue :: Type -> Value
defaultValue Int = MyInt 0
defaultValue Str = MyStr ""
defaultValue Bool = MyBool False
defaultValue Void = MyVoid

condRunStmt :: Value -> Stmt -> Result ()
condRunStmt exp stmt1 = condElseRunStmt exp stmt1 Empty

condElseRunStmt :: Value -> Stmt -> Stmt -> Result ()
condElseRunStmt (MyBool True) stmt1 _ = transStmt stmt1
condElseRunStmt (MyBool False) _ stmt2 = transStmt stmt2

whileRunStmt :: Expr -> Stmt -> Result ()
whileRunStmt expr stmt = do
  cond <- transExpr expr
  case cond of
    (MyBool True) -> do
      condRunStmt cond stmt
      whileRunStmt expr stmt
    (MyBool False) -> return ()

block :: Result x -> Result x
block res = do
  old <- get
  co <- res
  put old
  return co

newFunction :: Env -> [Ident] -> Block -> Result Value
newFunction env argsIden blk = return $ MyFunction $ \argsVal -> do
  currentState <- get
  put env
  zipWithM_ declVal argsIden argsVal
  result <- callCC $ \ret -> do
    modify $ \env -> env {conti = ret}
    transStmt (BStmt blk)
    return MyVoid
  put currentState
  return result

argGetIdent :: Arg -> Result Ident
argGetIdent (Arg t i) = return i

transStmt :: Stmt -> Result ()
transStmt x = case x of
  Empty -> return ()
  BStmt (Block stmts) -> block $ transStmts stmts
  Decl type_ items -> mapM_ (declItem type_) items
  Ass i expr -> do
    item <- gets $ (Map.! i) . variables
    v <- transExpr expr
    liftIO $ writeIORef item v
  Incr i -> do
    ref <- gets $ (Map.! i) . variables
    (MyInt v) <- liftIO $ readIORef ref
    liftIO $ writeIORef ref (MyInt (v + 1))
    return ()
  Decr i -> do
    ref <- gets $ (Map.! i) . variables
    (MyInt v) <- liftIO $ readIORef ref
    liftIO $ writeIORef ref (MyInt (v - 1))
    return ()
  Ret expr -> do
    v <- transExpr expr
    ret <- gets conti
    ret v
    return ()
  VRet -> do
    ret <- gets conti
    ret MyVoid
    return ()
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
    liftIO $ mapM readIORef (variables state) >>= print
  SExp expr -> do
    transExpr expr
    return ()
  FDef fdef -> transFunDef fdef

data Operator = MyAdd (Value -> Value -> Value)
              | MyMul (Value -> Value -> Value)
              | MyRel (Value -> Value -> Value)

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
        throwError "Dividing by zero."
      else
        return $ x v1 v2
transExpr (ERel expr1 relop expr2) = do
  v1 <- transExpr expr1
  v2 <- transExpr expr2
  (MyRel x) <- transRelOp relop
  return $ x v1 v2
transExpr x = case x of
  ELam type_ args block -> do
    argIdents <- mapM argGetIdent args
    env <- get
    fun <- newFunction env argIdents block
    return fun
  EVar ident -> do
    state <- get
    liftIO $ readIORef $ (variables state) Map.! ident
  ELitInt integer -> return $ MyInt $ fromInteger integer
  ELitTrue -> return $ MyBool True
  ELitFalse -> return $ MyBool False
  EApp ident exprs -> do
    MyFunction f <- transExpr ident
    args <- mapM transExpr exprs
    f args
  EString string -> return $ MyStr string
  Neg expr -> do
    (MyInt val) <- transExpr expr
    return (MyInt (-val))
  Not expr -> do
    (MyBool b) <- transExpr expr
    return (MyBool (not b))
  EAnd expr1 expr2 -> do
    (MyBool b1) <- transExpr expr1
    (MyBool b2) <- transExpr expr2
    return (MyBool (b1 && b2))
  EOr expr1 expr2 ->  do
    (MyBool b1) <- transExpr expr1
    (MyBool b2) <- transExpr expr2
    return (MyBool (b1 || b2))

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
