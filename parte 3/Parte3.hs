{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE ScopedTypeVariables #-}


module Parte3 where

import ErrM
import LexBNF
import ParBNF
import SkelBNF
import PrintBNF
import AbsBNF

-- ((INT|DOUBLE),W,H) [...]
data Tree a = Leaf a Integer Integer | Node a Integer Integer [Tree a]
    deriving (Show, Eq)

-- instance for using <$>
instance Functor Tree where
    fmap f (Leaf x w h) = Leaf (f x) w h
    fmap f (Node x w h ts) = Node (f x) w h (map (\x -> fmap f x) ts)

-- boolean test for Err a
isOk :: Err a -> Bool
isOk (Ok x) = True
isOk (_) = False

fromOk :: Err a -> a
fromOk (Ok x) = x
fromBad :: Err a -> String
fromBad (Bad x) = x

-- return AST wrapped in Either a Either a b
-- poichè non posso usare <|> per il test di Err a Err b con a,e di risultato
-- da fromTL*2Tree, devo wrappare in Either per poter gestire l'errore e gli AST
-- corretti.
saneHTree :: String -> Either String (Either (Tree Integer) (Tree Double))
saneHTree str = 
                let partialI = ((pTreeLexI . tokens) str)
                    partialD = ((pTreeLexD . tokens) str)
                in  if (isOk partialD)
                    then  (Right (Right (fromTLD2Tree (fromOk partialD) 0)))
                    else if (isOk partialI)
                        then (Right (Left (fromTLI2Tree (fromOk partialI) 0)))
                        else (Left (fromBad partialI))

-- da AST di BNFC a AST nostro con specifiche richieste
fromTLD2Tree :: TreeLexD -> Integer -> Tree Double
fromTLD2Tree (LeafD d w) h = Leaf d w h
fromTLD2Tree (TreeD d w ts) h = Node d w h $ (\x-> fromTLD2Tree x (h+1)) <$> ts

-- da AST di BNFC a AST nostro con specifiche richieste
fromTLI2Tree :: TreeLexI -> Integer -> Tree Integer
fromTLI2Tree (LeafI d w) h = Leaf d w h
fromTLI2Tree (TreeI d w ts) h = Node d w h $ (\x-> fromTLI2Tree x (h+1)) <$> ts

-- peso massimo per albero generico
maximalWeight' :: Tree a -> Integer
maximalWeight' (Leaf _ p _) = p
maximalWeight' (Node _ x y (ts)) =maximum(map (+x) (map maximalWeight' (ts)))

-- peso massimo gestendo l'errore: Left ha errore, Right il risultato
maximalWeight :: Either String (Either (Tree Integer) (Tree Double)) -> Either String Integer
maximalWeight (Left x) = Left x
maximalWeight (Right (Right x)) = Right (maximalWeight' x)
maximalWeight (Right (Left x)) = Right (maximalWeight' x)

