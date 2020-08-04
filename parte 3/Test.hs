module Main where

import Parte3

testcase = [ "81 0"
  , "81 0 20"
  , "15 0 (32 10 18 6)"
  , "15 0 (32 10 18 6 1 3 (8 2 34 1 2 3))"
  , "15 0 (32 10 18 6 3 (8 2 34 1 2 3))"
  , "15 0 (32 10 (2 24 1 16) 18 6 (1 3 9 9) 1 3 (8 2 34 1 2 3))"
  , "8.1 0"
  , "1.5 0 (3.2 10 1.8 6)"
  , "1.5 0 (3.2 10 1.8 6 1.1 3 (8.3 2 3.4 1 2.5 3))"
  , "1.5 0 (3.2 10 6 1.1 3 (8.3 2 3.4 1 2.5 3))"
  , "1.5 0 (3.2 10 (2.1 24 1.1 16) 1.8 6 (1.2 3 9.1 9) 1.6 3 (8.2 2 3.4 1 2.7 3))"
  ]


doTest xs = let parsed = map saneHTree xs in
                zip3 xs parsed (map maximalWeight parsed)

printACase :: (String , Either String (Either (Tree Integer) (Tree Double)) , Either String Integer) -> IO()
printACase (x,y,z) = do
                        putStrLn ("INPUT: " ++ x)
                        putStrLn ("AST: " ++ (show y))
                        putStrLn ("maximalWeight: " ++ (show z))
printAllCase :: [(String , Either String (Either (Tree Integer) (Tree Double)) , Either String Integer)] -> IO()
printAllCase [] = putStrLn "No test to show"
printAllCase [x] = printACase x
printAllCase (x:xs) = do 
                        printACase x
                        putStrLn ""
                        printAllCase xs


main = do
          (printAllCase . doTest ) testcase
