module Test where

import System.Environment
import Language.Java.Syntax
import Language.Java.Parser


main :: IO ()
main = do
  [ jFile ] <- getArgs
  src       <- readFile jFile
  case parser compilationUnit src of
    Left err -> putStrLn "error"
    Right compilationUnit -> putStrLn (show compilationUnit)
    
