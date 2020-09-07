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
             | ErrT CmpType
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
            | Ptr { getTypeP :: (AbsAuL.BasicType, AbsAuL.Modality),
                    getNameP :: String,
                    getLevP  :: Integer,
                    getPos :: Posn
                    }
            deriving (Show, Eq)

-- creo func check Var,... Env
isVarEnv :: Entity -> Bool
isVarEnv (Var _ _ _) = True
isVarEnv _ = False

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
makePtr str tipo mdl posn= Arr (tipo,mdl) str posn

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

makeCmpType 0   0   tpe = Base tpe
makeCmpType 0   arr tpe = ArrT $ makeCmpType 0 (arr - 1) tpe
makeCmpType ptr 0   tpe = PtrT $ makeCmpType (ptr - 1) 0 tpe
makeCmpType ptr arr tpe = ArrT $ makeCmpType ptr (arr - 1) tpe

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


--------------
-----TIPI-----
--------------

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
isValidCmp _ _ = False 













