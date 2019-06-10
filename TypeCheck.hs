module TypeCheck where

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

data TEnv = TEnv {
  vTypes :: TypeEnv,
  rVal :: Maybe TypeValue
  }

type TypeEnv = Map Ident TypeValue
type Result a = StateT TEnv (ExceptT String IO) a

data TypeValue = MyInt
               | MyStr
               | MyBool
               | MyFunction TypeValue [TypeValue]
               | MyVoid
               | MyAny deriving (Eq)

failure :: Show a => a -> Result ()
failure x = do
  liftIO $ putStrLn $ show x

checkProgram :: Program -> Result ()
checkProgram (Program fundefs) = do
  modify $ \env -> env {vTypes = Map.insert (Ident "print") (MyFunction MyVoid [MyAny]) (vTypes env)}
  checkFunDefs fundefs

checkFunDefs :: [FunDef] -> Result ()
checkFunDefs [] = return ()
checkFunDefs (x : xs) = do
  checkFunDef x
  checkFunDefs xs

argGetIdent :: Arg -> Result Ident
argGetIdent (Arg t i) = return i

checkFunDef :: FunDef -> Result TypeValue
checkFunDef x = case x of
  FnDef type_ ident@(Ident name) args blk -> do
    argIdents <- mapM argGetIdent args
    argTypes <- mapM argGetType args
    t <- return $ getType type_
    modify $ \env -> env {vTypes = Map.insert ident (MyFunction t argTypes) (vTypes env)}
    env <- gets vTypes
    fun <- checkFunction env argIdents argTypes blk
    checkError (fun == t) ("Return value does not match function type. In function: " ++ name ++ ".")
    return $ fun

checkStmts :: [Stmt] -> Result ()
checkStmts = mapM_ checkStmt

declType :: Ident -> TypeValue -> Result ()
declType i t = do
  modify $ \env -> env {vTypes = Map.insert i t (vTypes env)}
  return ()

declItem :: TypeValue -> Item -> Result ()
declItem t (NoInit i) = do
  declType i t
declItem t (Init i@(Ident name) e) = do -- TODO: ponowna deklaracja
  v <- checkExpr e
  env <- get
  res <- return $ Map.lookup i (vTypes env)
  case res of
    (Nothing) -> declType i t
    (Just a) -> checkError (a == t) ("Ponowna deklaracja zmiennej " ++ name ++ " z innym typem.")

checkIfStmt :: Expr -> Stmt -> Result ()
checkIfStmt expr stmt1 = checkElseStmt expr stmt1 Empty

checkElseStmt :: Expr -> Stmt -> Stmt -> Result ()
checkElseStmt expr stmt1 stmt2 = do
  t <- checkExpr expr
  checkError (t == MyBool) "Only Bool expressions in if statements are allowed."
  checkStmt stmt1
  checkStmt stmt2

checkWhileStmt :: Expr -> Stmt -> Result ()
checkWhileStmt expr stmt = checkIfStmt expr stmt

block :: Result x -> Result x
block res = do
  old <- gets vTypes
  co <- res
  modify $ \e -> e {vTypes = old}
  return co

  -- chce odstawiac tylko stan
  -- to samo w blocku
checkFunction :: TypeEnv -> [Ident] -> [TypeValue] -> Block -> Result TypeValue
checkFunction env argsIden argsTypes blk = do
  currentState <- gets vTypes
  modify $ \e -> e {vTypes = env}
  retType <- gets rVal
  modify $ \e -> e {rVal = Nothing}
  zipWithM_ declType argsIden argsTypes
  checkStmt (BStmt blk)
  newRType <- gets rVal
  modify $ \e -> e {vTypes = currentState}
  modify $ \e -> e {rVal = retType}
  case newRType of
    (Nothing) -> do
      return MyVoid
    (Just a) -> do
      return a

argGetType :: Arg -> Result TypeValue
argGetType (Arg t i) = return $ getType t

getType :: Type -> TypeValue
getType Int = MyInt
getType Str = MyStr
getType Bool = MyBool
getType (Fun a b) = MyFunction (getType a) (fmap getType b)
getType Void = MyVoid

checkIntType :: Expr -> String -> Result ()
checkIntType e msg = do
  t <- checkExpr e
  checkError (t == MyInt) msg

checkStmt :: Stmt -> Result ()
checkStmt x = case x of
  Empty -> return ()
  BStmt (Block stmts) -> block $ checkStmts stmts
  Decl type_ items -> mapM_ (declItem (getType type_)) items
  Ass i@(Ident name) expr -> do
    mType <- gets $ (Map.lookup i) . vTypes
    t <- checkExpr expr
    case mType of
         (Nothing) -> throwError ("Variable " ++ name ++ " not declared")
         (Just iType) -> checkError (t == iType) ("Assigning " ++ (show t) ++ " to variable '" ++ name ++ "', which is of type " ++ show(iType) ++ ".")
  Incr ident -> do
    t <- checkExpr (EVar ident)
    checkError (t == MyInt) "Incrementing is possible only with int."
  Decr ident -> do
    t <- checkExpr (EVar ident)
    checkError (t == MyInt) "Decrementing is possible only with int."
  Ret expr -> do
    t <- checkExpr expr
    checkReturn t
  VRet -> checkReturn MyVoid
  Cond expr stmt ->  do
    checkIfStmt expr stmt
  CondElse expr stmt1 stmt2 -> do
    checkElseStmt expr stmt1 stmt2
  While expr stmt -> do
    checkIfStmt expr stmt
  Debug -> return ()
  SExp expr -> do
    checkExpr expr
    return ()
  FDef fdef -> do
    checkFunDef fdef
    return ()

checkReturn :: TypeValue -> Result ()
checkReturn t = do
    currRet <- gets rVal
    case currRet of
      Nothing -> do
        modify $ \env -> env {rVal = (Just t)}
        newt <- gets rVal
        return ()
      (Just a) -> return ()

instance Show TypeValue where
  show MyInt = "int"
  show MyStr = "string"
  show MyBool = "bool"
  show (MyFunction a x) = (show a) ++ "->" ++ (show x)
  show MyVoid = "void"

checkExpr :: Expr -> Result TypeValue
checkExpr (EAdd expr1 addop expr2) = do
  v1 <- checkExpr expr1
  v2 <- checkExpr expr2
  checkAddOp addop v1 v2
checkExpr (EMul expr1 _ expr2) = do
  msg <- return "Multiplication allowed only for int."
  checkIntType expr1 msg
  checkIntType expr2 msg
  return $ MyInt
checkExpr (ERel expr1 _ expr2) = do
  v1 <- checkExpr expr1
  v2 <- checkExpr expr2
  checkError (v1 == v2) "Cannot compare variables of different type."
  return MyBool
checkExpr x = case x of
  ELam type_ args block -> do
    argIdents <- mapM argGetIdent args
    argTypes <- mapM argGetType args
    t <- return $ getType type_
    env <- gets vTypes
    fun <- checkFunction env argIdents argTypes block
    checkError (t == fun) "Lambda return type does not match declaration."
    return (MyFunction t argTypes)
  EVar ident@(Ident name) -> do
    state <- gets vTypes
    mtype <- return $ Map.lookup ident state
    case mtype of
         Nothing -> throwError ("Using undeclared variable " ++ name)
         (Just t) -> return t
  ELitInt integer -> return $ MyInt
  ELitTrue -> return $ MyBool
  ELitFalse -> return $ MyBool
  EApp ident exprs -> do
    fun <- checkExpr ident
    args <- mapM checkExpr exprs
    case fun of
      (MyFunction t argT@(h:r)) ->
        case h of
          MyAny -> return t
          _ -> do
            checkError (argT == args) "Error with argument types."
            return t
      (MyFunction t []) -> do
        checkError (args == []) "Wrong arguments."
        return t
      _ -> throwError "Application function error."
        
  EString string -> return $ MyStr
  Neg expr -> do
    msg <- return "Cannot negate type other than int."
    checkIntType expr msg
    return MyInt
  Not expr -> do
    checkBoolType expr "Not applies only to bool."
    return MyBool
  EAnd expr1 expr2 -> do
    msg <- return "And applies only to bool."
    checkBoolType expr1 msg
    checkBoolType expr2 msg
    return MyBool
  EOr expr1 expr2 -> do
    msg <- return "Or applies only to bool."
    checkBoolType expr1 msg
    checkBoolType expr2 msg
    return MyBool

checkBoolType :: Expr -> String -> Result ()
checkBoolType e msg = do
  t <- checkExpr e
  checkError (t == MyBool) msg

checkAddOp :: AddOp -> TypeValue -> TypeValue -> Result TypeValue
checkAddOp Minus MyInt MyInt = return $ MyInt
checkAddOp Minus _ _ = throwError "JEBUDU"

checkAddOp x v1 v2 = case x of
  Plus -> do
    checkError (v1 == v2) "Dodawac mozna tylko te same typy"
    return v1

checkError :: Bool -> String -> Result ()
checkError cond msg = case cond of
  True -> return ()
  False -> throwError msg
