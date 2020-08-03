{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE ScopedTypeVariables #-}


-- module Main where
import ErrM
import LexBNF
import ParBNF
import SkelBNF
import PrintBNF
import AbsBNF

-- ((INT|DOUBLE),W,H) [...]
data Tree a = Leaf a Integer Integer | Node a Integer Integer [Tree a]
    deriving (Show, Eq)

instance Functor Tree where
    fmap f (Leaf x w h) = Leaf (f x) w h
    fmap f (Node x w h ts) = Node (f x) w h (map (\x -> fmap f x) ts)

isOk :: Err a -> Bool
isOk (Ok x) = True
isOk (Bad x) = False

fromOk :: Err a -> a
fromOk (Ok x) = x
fromBad :: Err a -> String
fromBad (Bad x) = x

saneHTree :: String -> Tree Double
saneHTree str = 
                let partialI = ((pTreeLexI . tokens) str)
                    partialD = ((pTreeLexD . tokens) str)
                in  if (isOk partialD)
                    then (fromTLD2Tree (fromOk partialD) 0)
                    else (fromTLI2Tree (fromOk partialI) 0)


fromTLD2Tree :: TreeLexD -> Integer -> Tree Double
fromTLD2Tree (LeafD d w) h = Leaf d w h
fromTLD2Tree (TreeD d w ts) h = Node d w h $ (\x-> fromTLD2Tree x (h+1)) <$> ts


fromTLI2Tree :: TreeLexI -> Integer -> Tree Double
fromTLI2Tree (LeafI d w) h = Leaf (fromInteger d) w h
fromTLI2Tree (TreeI d w ts) h = Node (fromInteger d) w h $ (\x-> fromTLI2Tree x (h+1)) <$> ts

