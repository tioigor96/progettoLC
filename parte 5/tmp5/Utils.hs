module Utils where

import AbsAuL
import LexAuL
import ErrM
import Control.Applicative
import Data.Maybe


-- controllo array e decl
isVarArr :: VarInit -> Bool
isVarArr (VarMat _) = True
isVarArr _ = False

isRExp :: VarInit -> Bool
isRExp (VarExp _) =True
isRExp _ = False

fromVarMat :: VarInit -> Array
fromVarMat (VarMat x) = x

--------------
-----ARRAY----
--------------

--controllo array per tipo omogeneo
sameTChk :: (VType -> Bool) -> Array -> Bool
sameTChk isTpe (ArrayV0 xs) = all (\x -> sameTChk isTpe x) xs
sameTChk isTpe (ArrayV1 xs) = all (\x -> isTpe x) xs

sameLenChk :: [Int] -> Array -> Bool
sameLenChk [l] (ArrayV1 xs) = l == (length xs)
sameLenChk _ (ArrayV1 xs) = False
sameLenChk (l:ls) (ArrayV0 xs)
                            | length xs == l = all (\x -> sameLenChk ls x) xs
                            | otherwise = False

checkTypeInit :: BasicType -> Array -> Bool
checkTypeInit btpe arr = case btpe of
                     BasicType_Float -> sameTChk isFloat arr
                     BasicType_Void -> sameTChk isVoid arr
                     BasicType_Bool -> sameTChk isBool arr
                     BasicType_Int -> sameTChk isInt arr
                     BasicType_String -> sameTChk isString arr
                     BasicType_Char -> sameTChk isChar arr

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
isVoid _ = False                                                         -- default case

--------------------------
-----POSN per errori -----
--------------------------
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

--------------------------
-----LEXP trattamenti-----
--------------------------
-- prende dal parse tree il nome
getLIdentlexp x = case x of
    (LExpS x) -> x
    (LExpDR x) -> getLIdentlexp x
    (LExpA x _) -> x
-- get string from lident
fromLIdent :: LIdent -> String
fromLIdent (LIdent s) = s


-- quante volte è dereferenziabile la LExp
getPtrLev :: LExp -> Int
getPtrLev (LExpS _) = 0
getPtrLev (LExpA _ _) = 0                                                                -- caso comulativo
getPtrLev (LExpDR x) = 1 + ( getPtrLev x)

-- quante dimensioni ha array
getArrLev :: LExp -> Int
getArrLev (LExpS _) = 0
getArrLev (LExpDR _) = 0                                                                -- caso comulativo
getArrLev (LExpA x ds) = length ds

--controlla il tipo di dichiarazione
isVar :: LExp -> Bool
isVar (LExpS _) = True
isVar _ = False

isArr :: LExp -> Bool
isArr (LExpA _ _) = True
isArr (LExpDR x) = isArr x
isArr _ = False

isPtr :: LExp -> Bool
isPtr (LExpDR _) = True
isPtr _ = False

--------------------------
-----trattare wrap ErrM-----
--------------------------
-- controllo errm 
isOk (Ok _) = True
isOk _ = False

fromOk :: Err a -> a
fromOk (Ok x) = x

isBad (Bad _) = True
isBad _ = False

fromBad (Bad s) = s
