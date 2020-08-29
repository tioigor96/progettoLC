module Utils where

import AbsBnfc
import LexBnfc
import ErrM
import Control.Applicative
import Data.Maybe


--controllo token per errori
getLIdentT :: Token -> String
getLIdentT (PT _ (T_LIdent s)) = s

getLinePosn :: (Int, Int) -> Int
getLinePosn (ln, _) = ln
getColPosn :: (Int, Int) -> Int
getColPosn (_, cl) = cl

-- prende dal parse tree il nome
getLIdentlexp x = case x of
    (LExpS x) -> x
    (LExpDR x) -> getLIdentlexp x
    (LExpA x _) -> x
-- get string from lident
fromLIdent :: LIdent -> String
fromLIdent (LIdent s) = s

--controlla il tipo di dichiarazione
isVar :: LExp -> Bool
isVar (LExpS _) = True
isVar _ = False

isArr :: LExp -> Bool
isArr (LExpA _ _) = True
isArr _ = False

isPtr :: LExp -> Bool
isPtr (LExpDR _) = True
isPtr _ = False

--prende la dimensione
getDim :: LExp -> Maybe [Integer] 
getDim (LExpA _ d) = Just $ seqADim d
getDim _ = Nothing

-- passa da [Dim] a [Integer] per semplificare codice 
seqADim xs = map (\(Dims x)-> x) xs

--controlla tipo per array
isVTBool (VTypeBoolean _) = True
isVTBool _ = False

-- controllo errm 
isOk (Ok _) = True
isOk _ = False

fromOk :: Err a -> a
fromOk (Ok x) = x

isBad (Bad _) = True
isBad _ = False

fromBad (Bad s) = s
