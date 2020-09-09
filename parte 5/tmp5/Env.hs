module Env where

import AbsAuL
import Control.Applicative
import qualified Data.Map.Strict as Map
import Data.Maybe
import Data.Typeable
import ErrM
import LexAuL
import Utils

type EnvT = Map.Map String Entity

data CmpType = Base BasicType
             | ArrT CmpType
             | PtrT CmpType
             | ErrT
             deriving (Show, Eq)


data Entity = Var { getTypeV :: (CmpType, AbsAuL.Modality),
                    getNameV :: String,
                    getPos :: Posn 
                    }
            | Fnct { getTypeF :: CmpType,
                     getNameF :: String,
                     getParamF :: [(Entity, AbsAuL.Modality)],  -- siamo sicuri saranno
                                                                -- solo Var grazie alla
                                                                -- BNF
                     getPos :: Posn
                    }
            | Arr { getTypeA :: (CmpType, AbsAuL.Modality),
                    getNameA :: String,
                    getPos :: Posn
                    }
            | Ptr { getTypeP :: (CmpType, AbsAuL.Modality),
                    getNameP :: String,
                    getPos :: Posn
                    }
            deriving (Show, Eq)

-- creo func check Var,... Env
isVarEnv :: Entity -> Bool
isVarEnv (Var _ _ _) = True
isVarEnv _ = False

isArrEnv :: Entity -> Bool
isArrEnv (Arr _ _ _) = True
isArrEnv _ = False

isPtrEnv :: Entity -> Bool
isPtrEnv (Ptr _ _ _) = True
isPtrEnv _ = False

isFnctEnv :: Entity -> Bool
isFnctEnv (Fnct _ _ _ _) = True
isFnctEnv _ = False

-- creo getType generico
getType :: Entity -> (CmpType, Modality)
getType x
        | isVarEnv x = getTypeV x
        | isArrEnv x = getTypeA x
        | isPtrEnv x = getTypeP x

--crea l'env vuoto
emptyEnv :: EnvT
emptyEnv = Map.empty

lookupEnv :: String -> EnvT -> Maybe Entity
lookupEnv name env = Map.lookup name env 

-- davanti sempre il locale
mergeEnv e1 e2 = Map.union e1 e2

--crea una Var
makeVar :: String -> CmpType -> AbsAuL.Modality -> Posn -> Entity
makeVar str tipo mdl posn = Var (tipo,mdl) str posn

--crea un Arr
makeArr :: String -> CmpType -> AbsAuL.Modality -> Posn  -> Entity
makeArr str tipo mdl posn= Arr (tipo,mdl) str posn

--crea un Ptr
makePtr :: String -> CmpType -> AbsAuL.Modality -> Posn  -> Entity
makePtr str tipo mdl posn= Ptr (tipo,mdl) str posn

--inserisce una var
insertVar :: LIdent -> CmpType -> AbsAuL.Modality -> Posn  -> EnvT -> EnvT
insertVar x@(LIdent str) tipo mdl posn env = Map.insert str (makeVar str tipo mdl posn) env

-- inserisce un Arr
insertArr :: LIdent -> CmpType -> AbsAuL.Modality  -> Posn -> EnvT -> EnvT
insertArr x@(LIdent str) tipo mdl posn env = Map.insert str (makeArr str tipo mdl posn) env

-- inserisce un ptr
insertPtr :: LIdent -> CmpType -> AbsAuL.Modality  -> Posn -> EnvT -> EnvT
insertPtr x@(LIdent str) tipo mdl posn env = Map.insert str (makePtr str tipo mdl posn) env

insEnv :: LExp -> LIdent -> CmpType -> AbsAuL.Modality -> Posn -> EnvT -> EnvT
insEnv lexp name tipo mdl posn env
                        | isVar lexp = insertVar name tipo mdl posn env
                        | isArr lexp = insertArr name tipo mdl posn env
                        | isPtr lexp = insertPtr name tipo mdl posn env

-- inserisce caso gen: controllo esistenza e 

insertEnv :: BasicType -> AbsAuL.Modality -> LExp -> EnvT -> Posn -> Err EnvT
insertEnv tipo mdl lexp env posn = let nme = (getLIdentlexp lexp)
                                       name = fromLIdent nme
                                       lkup = Map.lookup name env
                                       tpe = makeCmpType (getPtrLev lexp) (getArrLev lexp) tipo
                                    in case lkup of
                                       Just e  -> Bad $ name ++ 
                                           " is already declared at line " ++ 
                                           ((show . getLinePosn . posLineCol . getPos) e) ++ 
                                           ":" ++ 
                                           ((show . getColPosn . posLineCol . getPos) e)
                                       Nothing -> Ok (insEnv lexp nme tpe mdl posn env)


---------------------------------
---- MANIPOLARE COMPLEX TYPE ----
---------------------------------

isBaseT :: CmpType -> Bool
isBaseT (Base _) = True
isBaseT _ = False

isPtrT :: CmpType -> Bool
isPtrT (PtrT _) = True
isPtrT (ArrT x) = isPtrT x
isPtrT _ = False

isArrT :: CmpType -> Bool
isArrT (ArrT _) = True
isArrT _ = False

-- prende quante dimensioni ha un array!
getArrTLev (ArrT x) = 1 + getArrTLev x
getArrTLev _ = 0

-- crea un cmptype dati i gradi
makeCmpType :: Int -> Int -> BasicType -> CmpType
makeCmpType 0   0   tpe = Base tpe
makeCmpType 0   arr tpe = ArrT $ makeCmpType 0 (arr - 1) tpe
makeCmpType ptr 0   tpe = PtrT $ makeCmpType (ptr - 1) 0 tpe
makeCmpType ptr arr tpe = ArrT $ makeCmpType ptr (arr - 1) tpe

-- aggiunge prima del Base un livello di puntatore
addPtrT (Base x) = PtrT ( Base x )
addPtrT (PtrT x) = PtrT ( PtrT x )
addPtrT (ArrT x) = ArrT (addPtrT x)
addPtrT ErrT = ErrT

-- abbassa un cmptype dati i gradi
downCmpType :: Int -> Int -> CmpType -> CmpType
downCmpType 0   0   ctp = ctp
downCmpType 0   1   (Base BasicType_String) = (Base BasicType_Char)
downCmpType 0   arr (ArrT x) = downCmpType 0 (arr - 1) x
downCmpType 0   arr (PtrT x) = downCmpType 0 (arr - 1) x
downCmpType ptr 0   (PtrT x) = downCmpType (ptr - 1) 0 x
downCmpType ptr   arr (ArrT x) = downCmpType ptr (arr - 1) x
downCmpType ptr   arr (PtrT x) = downCmpType ptr (arr - 1) x
downCmpType _ _ _ = ErrT

getBaseType :: CmpType -> BasicType
getBaseType (Base x) = x
getBaseType (ArrT x) = (getBaseType x)
getBaseType (PtrT x) = (getBaseType x)


--------------
-----SHOW vari-----
--------------

-- per lo show type
showBBType (Base BasicType_Float) = "Float"
showBBType (Base BasicType_Void) = "Void"
showBBType (Base BasicType_Bool) = "Bool"
showBBType (Base BasicType_Int) = "Int"
showBBType (Base BasicType_String) = "String"
showBBType (Base BasicType_Char) = "Char"


showCmpType (Base x) = showBBType (Base x)
showCmpType (PtrT x) = "*" ++ (showCmpType x)
showCmpType (ArrT x) = (showCmpType x) ++ "[]"
--------------
-----TIPI-----
--------------

-- controllo compatibilità tipi per assegnamenti
-- tipi canonici
compCmpType :: CmpType -> CmpType -> CmpType
compCmpType (Base BasicType_Int) (Base BasicType_Int) = Base BasicType_Int
compCmpType (Base BasicType_Float) (Base BasicType_Float) = Base BasicType_Float
compCmpType (Base BasicType_Bool) (Base BasicType_Bool) = Base BasicType_Bool
compCmpType (Base BasicType_Char) (Base BasicType_Char) = Base BasicType_Char
compCmpType (Base BasicType_String) (Base BasicType_String) = Base BasicType_String
compCmpType (PtrT t1) (PtrT t2) = compCmpType t1 t2
compCmpType (ArrT t1) (ArrT t2) = compCmpType t1 t2
-- compatibilità tra tipi eterogenei
-- compCmpType (Base x) (Base BasicType_Void) = Base x
-- compCmpType (Base BasicType_Void) (Base x) = Base x
compCmpType (Base BasicType_Float) (Base BasicType_Int) = Base BasicType_Float
compCmpType (ArrT (Base BasicType_Char)) (Base BasicType_String) = (ArrT (Base BasicType_Char))
compCmpType (PtrT (Base BasicType_Char)) (Base BasicType_String) = (PtrT (Base BasicType_Char)) 
-- compCmpType (Base BasicType_Int) (Base BasicType_Float) = Base BasicType_Float
-- compCmpType (Base BasicType_String) (Base BasicType_Char) = Base BasicType_String
-- compCmpType (Base BasicType_Char) (Base BasicType_String) = Base BasicType_String
--tipi ricorsivi PtrT e ArrT
-- compCmpType (ArrT t1) (PtrT t2) = compCmpType t1 t2                          -- da ptr a arr no!
compCmpType (PtrT t1) (ArrT t2) = compCmpType t1 t2                             -- da arr a ptr si!
-- gestione errori
-- compCmpType x ErrT = x                                                          
-- compCmpType ErrT x = x
compCmpType _ _ = ErrT

---------------------
-----TYPE SYSTEM-----
---------------------

data Opers = OrO | AndO | NotO | EqO | NeqO | LtO | LtEO | GtO 
           | GtEO | AddO | SubO | MulO | DivO | RemO | PowO | NegO 
           | SizeO | ConcatO                                    -- per le oper. base in RExp10 # e ..
           deriving (Show, Eq)

op2CompType :: Opers -> CmpType -> CmpType -> CmpType
op2CompType OrO (Base BasicType_Bool) (Base BasicType_Bool) = (Base BasicType_Bool)

op2CompType AndO (Base BasicType_Bool) (Base BasicType_Bool) = (Base BasicType_Bool)

op2CompType EqO t1 t2 | t1 == t2 = (Base BasicType_Bool)
op2CompType EqO (Base BasicType_Float) (Base BasicType_Int) = (Base BasicType_Bool)
op2CompType EqO (Base BasicType_Int) (Base BasicType_Float) = (Base BasicType_Bool)

op2CompType NeqO t1 t2 | t1 == t2 = (Base BasicType_Bool)
op2CompType NeqO (Base BasicType_Float) (Base BasicType_Int) = (Base BasicType_Bool)
op2CompType NeqO (Base BasicType_Int) (Base BasicType_Float) = (Base BasicType_Bool)

op2CompType LtO t1 t2 | t1 == t2 = (Base BasicType_Bool)
op2CompType LtO (Base BasicType_Float) (Base BasicType_Int) = (Base BasicType_Bool)
op2CompType LtO (Base BasicType_Int) (Base BasicType_Float) = (Base BasicType_Bool)

op2CompType LtEO t1 t2 | t1 == t2 = (Base BasicType_Bool)
op2CompType LtEO (Base BasicType_Float) (Base BasicType_Int) = (Base BasicType_Bool)
op2CompType LtEO (Base BasicType_Int) (Base BasicType_Float) = (Base BasicType_Bool)

op2CompType GtO t1 t2 | t1 == t2 = (Base BasicType_Bool)
op2CompType GtO (Base BasicType_Float) (Base BasicType_Int) = (Base BasicType_Bool)
op2CompType GtO (Base BasicType_Int) (Base BasicType_Float) = (Base BasicType_Bool)

op2CompType GtEO t1 t2 | t1 == t2 = (Base BasicType_Bool)
op2CompType GtEO (Base BasicType_Float) (Base BasicType_Int) = (Base BasicType_Bool)
op2CompType GtEO (Base BasicType_Int) (Base BasicType_Float) = (Base BasicType_Bool)

op2CompType AddO (Base BasicType_Float) (Base BasicType_Int)   = (Base BasicType_Float)
op2CompType AddO (Base BasicType_Int) (Base BasicType_Float)   = (Base BasicType_Float)
op2CompType AddO (Base BasicType_Int) (Base BasicType_Int)     = (Base BasicType_Int)
op2CompType AddO (Base BasicType_Float) (Base BasicType_Float) = (Base BasicType_Float)
op2CompType AddO (Base BasicType_Char) (Base BasicType_Char)   = (Base BasicType_Char)

op2CompType SubO (Base BasicType_Float) (Base BasicType_Int)   = (Base BasicType_Float)
op2CompType SubO (Base BasicType_Int) (Base BasicType_Float)   = (Base BasicType_Float)
op2CompType SubO (Base BasicType_Int) (Base BasicType_Int)     = (Base BasicType_Int)
op2CompType SubO (Base BasicType_Float) (Base BasicType_Float) = (Base BasicType_Float)
op2CompType SubO (Base BasicType_Char) (Base BasicType_Char)   = (Base BasicType_Char)

op2CompType MulO (Base BasicType_Float) (Base BasicType_Int)   = (Base BasicType_Float)
op2CompType MulO (Base BasicType_Int) (Base BasicType_Float)   = (Base BasicType_Float)
op2CompType MulO (Base BasicType_Int) (Base BasicType_Int)     = (Base BasicType_Int)
op2CompType MulO (Base BasicType_Float) (Base BasicType_Float) = (Base BasicType_Float)

op2CompType DivO (Base BasicType_Float) (Base BasicType_Int)   = (Base BasicType_Float)
op2CompType DivO (Base BasicType_Int) (Base BasicType_Float)   = (Base BasicType_Float)
op2CompType DivO (Base BasicType_Int) (Base BasicType_Int)     = (Base BasicType_Int)
op2CompType DivO (Base BasicType_Float) (Base BasicType_Float) = (Base BasicType_Float)

op2CompType PowO (Base BasicType_Float) (Base BasicType_Int)   = (Base BasicType_Float)
op2CompType PowO (Base BasicType_Int) (Base BasicType_Float)   = (Base BasicType_Float)
op2CompType PowO (Base BasicType_Int) (Base BasicType_Int)     = (Base BasicType_Float)
op2CompType PowO (Base BasicType_Float) (Base BasicType_Float) = (Base BasicType_Float)

op2CompType RemO (Base BasicType_Float) (Base BasicType_Int)   = (Base BasicType_Int)
op2CompType RemO (Base BasicType_Int) (Base BasicType_Float)   = (Base BasicType_Int)
op2CompType RemO (Base BasicType_Int) (Base BasicType_Int)     = (Base BasicType_Int)
op2CompType RemO (Base BasicType_Float) (Base BasicType_Float) = (Base BasicType_Int)

op2CompType ConcatO (Base BasicType_Char) (Base BasicType_Char) = (Base BasicType_String)
op2CompType ConcatO (Base BasicType_String) (Base BasicType_String) = (Base BasicType_String)
op2CompType ConcatO (Base BasicType_Char) (Base BasicType_String) = (Base BasicType_String)
op2CompType ConcatO (Base BasicType_String) (Base BasicType_Char) = (Base BasicType_String)

op2CompType _ _ _ = ErrT

op1CompType :: Opers -> CmpType -> CmpType
op1CompType NotO (Base BasicType_Bool) = (Base BasicType_Bool)

op1CompType NegO (Base BasicType_Int)  = (Base BasicType_Int)
op1CompType NegO (Base BasicType_Float) = (Base BasicType_Float)

op1CompType SizeO (ArrT x) = (Base BasicType_Int)
op1CompType SizeO (PtrT x) = (Base BasicType_Int)
op1CompType SizeO (Base BasicType_String) = (Base BasicType_Int)

op1CompType _ _ = ErrT


























