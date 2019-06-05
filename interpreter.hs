module Main where

import System.IO
import System.Environment
import LexGram
import ParGram
import AbsGram
import ErrM
import Control.Monad.State
import Control.Monad.Except
import Data.Map as Map

import MyGram

main :: IO ()
main = do
  args <- getArgs
  file <- openFile (head args) ReadMode
  input <- hGetContents file
  case (pProgram (myLexer input)) of
    (Ok tree) -> do
      error <- runExceptT (execStateT (transProgram tree) (fromList []))
      case error of
        (Left msg) -> putStrLn $ "liz mi jaja: " ++ msg
        (Right state) -> putStrLn "Program zakonczony sukcesem."
    (Bad why) -> putStrLn why
