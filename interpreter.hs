module Main where

import System.IO
import System.Environment
import LexGram
import ParGram
import AbsGram
import ErrM
import Control.Monad.State
import Control.Monad.Except
import Control.Monad.Cont
import Data.Map as Map

import MyGram
import TypeCheck

main :: IO ()
main = do
  args <- getArgs
  file <- openFile (head args) ReadMode
  input <- hGetContents file
  case (pProgram (myLexer input)) of
    (Ok tree) -> do
      let emptyTEnv = TEnv {
        vTypes = fromList [],
        rVal = Nothing
      }
      tcError <- runExceptT (execStateT (checkProgram tree) (emptyTEnv))
      case tcError of
        (Left msg) -> putStrLn $ "liz mi jaja: " ++ msg
        (Right state) -> do
          let emptyEnv = Env {
            variables = fromList [],
            conti = \_ -> throwError "Unreachable continuation."}
          error <- runContT (runExceptT (execStateT (transProgram tree) (emptyEnv))) return
          case error of
            (Left msg) -> putStrLn $ "liz mi jaja: " ++ msg
            (Right state) -> putStrLn "Program zakonczony sukcesem."
    (Bad why) -> putStrLn why

{-
jezyk ma byc definicjami funkcji
uruchamiac ma sie main!

-}
