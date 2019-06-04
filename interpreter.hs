module Main where

import System.IO
import System.Environment
import LexGram
import ParGram
import AbsGram
import ErrM
import Control.Monad.State

import SkelGram

main :: IO ()
main = do
    args <- getArgs
    file <- openFile (head args) ReadMode
    input <- hGetContents file
    case (pProgram (myLexer input)) of
         (Ok tree) -> do
             stan <- execStateT (transProgram tree) []
             putStrLn $ "liz mi jaja: " ++ show stan
         (Bad why) -> putStrLn why

{-
stan zamiast errora.
uzupełnić te instrukcje tak zeby wypisalo mam stworzyc funkcje taka...
1. odpalenie calego programu. transProgram. lista definicji fukncji.
dla kazdej funkcji na liscie odpali transFunDef po kolei. ktore powinno wykonac reszte. ze stora wyciagnac maina i go wykonac.
2. moge dodac store'a ktory dla kazdej funckji zapisze ja w postaci nazwa -> parametry
3. moze byc wygodnie zmodyfikowac fundefy na statmenty
-}
