module Utils where

import AbsBnfc
import LexBnfc
import ErrM
import Control.Applicative
import Data.Maybe

-- controllo compatibilità tipi
{- 
AbsBnfc.BasicType_Float   AbsBnfc.BasicType_Void
AbsBnfc.BasicType_Bool    AbsBnfc.BasicType_Int
AbsBnfc.BasicType_Char    AbsBnfc.BasicType_String
-}
isValidCmp :: AbsBnfc.BasicType -> AbsBnfc.BasicType -> Bool                    -- canonici
isValidCmp (AbsBnfc.BasicType_Int) (AbsBnfc.BasicType_Int) = True
isValidCmp (AbsBnfc.BasicType_Float) (AbsBnfc.BasicType_Float) = True
isValidCmp (AbsBnfc.BasicType_Void) (AbsBnfc.BasicType_Void) = True
isValidCmp (AbsBnfc.BasicType_Bool) (AbsBnfc.BasicType_Bool) = True
isValidCmp (AbsBnfc.BasicType_Char) (AbsBnfc.BasicType_Char) = True
isValidCmp (AbsBnfc.BasicType_String) (AbsBnfc.BasicType_String) = True
isValidCmp (AbsBnfc.BasicType_Float) (AbsBnfc.BasicType_Int) = True             -- compatibilità tra tipi
isValidCmp (AbsBnfc.BasicType_Int) (AbsBnfc.BasicType_Float) = True             -- compatibilità tra tipi
-- isValidCmp (AbsBnfc.BasicType_Char) (AbsBnfc.BasicType_String) = True        -- e qui che famo?
-- isValidCmp (AbsBnfc.BasicType_String) (AbsBnfc.BasicType_Char) = True        -- e qui che famo?
isValidCmp _ _ = False                                                          -- default case

--controllo token per errori
getLIdentT :: Token -> String
getLIdentT (PT _ (T_LIdent s)) = s

getLinePosn :: (Int, Int) -> Int
getLinePosn (ln, _) = ln
getColPosn :: (Int, Int) -> Int
getColPosn (_, cl) = cl

showFromPosn :: Posn -> String
showFromPosn psn = ((show . getLinePosn . posLineCol) psn) ++ ":" ++ 
                   ((show . getColPosn . posLineCol) psn)

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
