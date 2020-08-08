{-# LANGUAGE DeriveFunctor #-}

--from happy and alex
import AbsBNF
import LexBNF
import ParBNF
import SkelBNF
import PrintBNF
import ErrM

-- datatype for req
data Tree a = Leaf a | Node a [Tree a] deriving (Show, Eq)


-- fmap f (Leaf x) = Leaf $ f x
-- fmap f (Node x ts) = Node (f x) (map (\x -> fmap f x) ts)

-- treefold :: ( Eq a , Show a ) = > (a - >[ b ] - > b ) -> b -> Tree a -> b
-- treefold f z Void = z
-- treefold f z ( Node x []) = f x [ z ]
-- treefold f z ( Node x ts ) = f x $ fmap ( treefold f z ) ts

treefoldr :: ( Eq a , Show a ) = > (a - >b - > c ) - >c - >(c - >b - > b ) - >b - > Tree a - > c
treefoldr f zf g zg Void = zf
treefoldr f zf g zg ( Node x xs ) = f x $ foldr ( g . treefoldr f zf g zg ) zg xs
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
annotate' (Node x ts) h = Node (h,x) $ (\x-> annotate' x (h+1)) <$> ts

annotate :: Tree a -> Tree (Integer,a)
annotate ts = annotate' ts 0

-- OCIO QUA! UNWRAP ERR WRAPPING
-- fromBad (Bad x) = x
-- fromOk (Ok x) = x

-- ID from TreeLex => Tree
changeType (LeafL y) = Leaf y
changeType (TreeL x xs) = Node x (map changeType xs)

    

-- combino il tutto
combine str = let partial = (pTreeLex . tokens) str in
        case partial of
            (Bad x) -> x
            (Ok x) -> show $ (annotate . changeType ) x


maxPathWeight :: ( Ord a , Num a ) = > Tree a -> a
maxPathWeight t = snd $ treefoldr aggr1 (0 ,( -1)) aggr2 (0 ,0 ,( -1)) t
    where
    aggr1 x ( whmx , whsmx , wmx ) = ( x + whmx , max wmx ( x + whmx + whsmx ))
    aggr2 ( wh , w ) ( whmx , whsmx , wmx )
        | wh <= whsmx = ( whmx , whsmx , nwmx )
        | wh <= whmx = ( whmx , wh , nwmx )
        | otherwise = ( wh , whmx , nwmx )
        where nwmx = max w wmx


