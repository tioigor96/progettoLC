module Utils where

import AbsAuL
import LexAuL
import ErrM
import Control.Applicative
import Data.Maybe


-- controllo array
isVarArr (VarMat _) = True
isVarArr _ = False

--controllo array per tipo omogeneo
sameTChk isTpe (ArrayV0 xs) = all (\x -> sameTChk isTpe x) xs
sameTChk isTpe (ArrayV1 xs) = all (\x -> isTpe x) xs

sameLenChk [l] (ArrayV1 xs) = l == (length xs)
sameLenChk _ (ArrayV1 xs) = False
sameLenChk (l:ls) (ArrayV0 xs)
                            | length xs == l = all (\x -> sameLenChk ls x) xs
                            | otherwise = False


--funtypecheck per array
isFloat (VTypeDouble _) = True
isFloat _ = False
isBool (VTypeBoolean _) = True
isBool _ = False
isChar (VTypeChar _) = True
isChar _ = False
isInt (VTypeInteger _) = True
isInt _ = False
isString (VTypeString _) = True
isString _ = False
isVoid (VTypePtrVoid _) = True
isVoid _ = False

-- per lo show type
showBBType AbsAuL.BasicType_Float = "Float"
showBBType AbsAuL.BasicType_Void = "Void"
showBBType AbsAuL.BasicType_Bool = "Bool"
showBBType AbsAuL.BasicType_Int = "Int"
showBBType AbsAuL.BasicType_String = "String"
showBBType AbsAuL.BasicType_Char = "Char"


-- controllo compatibilità tipi
{- 
AbsAuL.BasicType_Float   AbsAuL.BasicType_Void
AbsAuL.BasicType_Bool    AbsAuL.BasicType_Int
AbsAuL.BasicType_Char    AbsAuL.BasicType_String
-}
isValidCmp :: AbsAuL.BasicType -> AbsAuL.BasicType -> Bool                    -- canonici
isValidCmp (AbsAuL.BasicType_Int) (AbsAuL.BasicType_Int) = True
isValidCmp (AbsAuL.BasicType_Float) (AbsAuL.BasicType_Float) = True
isValidCmp (AbsAuL.BasicType_Void) (AbsAuL.BasicType_Void) = True
isValidCmp (AbsAuL.BasicType_Bool) (AbsAuL.BasicType_Bool) = True
isValidCmp (AbsAuL.BasicType_Char) (AbsAuL.BasicType_Char) = True
isValidCmp (AbsAuL.BasicType_String) (AbsAuL.BasicType_String) = True
isValidCmp (AbsAuL.BasicType_Float) (AbsAuL.BasicType_Int) = True             -- compatibilità tra tipi
isValidCmp (AbsAuL.BasicType_Int) (AbsAuL.BasicType_Float) = True             -- compatibilità tra tipi
-- isValidCmp (AbsAuL.BasicType_Char) (AbsAuL.BasicType_String) = True        -- e qui che famo?
-- isValidCmp (AbsAuL.BasicType_String) (AbsAuL.BasicType_Char) = True        -- e qui che famo?
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
