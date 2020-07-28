{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveFoldable #-}
--from happy and alex
import System.IO ( stdin, hGetContents )
import System.Environment ( getArgs, getProgName )
import System.Exit ( exitFailure, exitSuccess )

import AbsBNF
import LexBNF
import ParBNF
import SkelBNF
import PrintBNF
import ErrM

-- datatype for req
data Tree a = Leaf a | Node a [Tree a] deriving (Show, Eq)


instance Functor Tree where
    fmap f (Leaf x) = Leaf $ f x
    fmap f (Node x ts) = Node (f x) (map (\x -> fmap f x) ts)

{-
a = Node 1 [
        Node 2 [ Leaf 21, Leaf 22, Leaf 23, Leaf 24 ],
        Node 3 [ Leaf 31, Leaf 32, Leaf 33, Leaf 34 ],
        Node 4 [ Leaf 41, Leaf 42, Leaf 43, Leaf 44 ], 
        Node 5 [ Leaf 51, Leaf 52, Leaf 53, Leaf 54 ]
        ]
-}

annotate' :: Tree a -> Integer -> Tree (Integer,a)
annotate' (Leaf x) h = Leaf (h,x)
annotate' (Node x ts) h = Node (h,x) (map (\x-> annotate' x (h+1)) ts)

annotate :: Tree a -> Tree (Integer,a)
annotate ts = annotate' ts 0

-- OCIO QUA! UNWRAP ERR WRAPPING
fromBad (Bad x) = x
fromOk (Ok x) = x


-- ID from TreeLex => Tree
changeType' [] = []
changeType' (x:xs) = (changeType x):(changeType' xs)
changeType (LeafL y) = Leaf y
changeType (TreeL x xs) = Node x (changeType' xs)

    

-- combino il tutto
combine str = let partial = (pTreeLex . tokens) str in
        case partial of
            (Bad x) -> x
            (Ok x) -> show $ (annotate . changeType ) x





























