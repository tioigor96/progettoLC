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

data ArrD = Arr1D [AbsAuL.VType] | ArrND [ArrD]
    deriving (Show,Eq)

data Entity = Var { getTypeV :: (AbsAuL.BasicType, AbsAuL.Modality),
                    getNameV :: String,
                    getPos :: Posn 
                    }
            | Fnct { getTypeF :: AbsAuL.BasicType,
                     getNameF :: String,
                     getParamF :: [(Entity, AbsAuL.Modality)], -- siamo sicuri saranno
                                                                -- solo Var grazie alla
                                                                -- BNF
                     getPos :: Posn
                    }
            | Arr { getTypeA :: (AbsAuL.BasicType, AbsAuL.Modality),
                    getNameA :: String,
                    getDimA  :: [Integer],
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

-- TODO: controllo sui merge! se ho cose con medesimi nomi come si combina?
mergeEnv e1 e2 = Map.union e1 e2

--crea una Var
makeVar :: String -> AbsAuL.BasicType -> AbsAuL.Modality -> Posn -> Entity
makeVar str tipo mdl posn = Var (tipo,mdl) str posn

--crea un Arr
makeArr :: String -> AbsAuL.BasicType -> AbsAuL.Modality -> [Integer] -> Posn  -> Entity
makeArr str tipo mdl dims posn= Arr (tipo,mdl) str dims posn

--inserisce una var
insertVar :: LIdent -> AbsAuL.BasicType -> AbsAuL.Modality -> Posn  -> EnvT -> EnvT
insertVar x@(LIdent str) tipo mdl posn env = Map.insert str (makeVar str tipo mdl posn) env

-- inserisce un Arr
insertArr :: LIdent -> BasicType -> AbsAuL.Modality -> [Integer] -> Posn -> EnvT -> EnvT
insertArr x@(LIdent str) tipo mdl dims posn env = Map.insert str (makeArr str tipo mdl dims posn) env

insEnv :: LExp -> LIdent -> BasicType -> AbsAuL.Modality -> Posn -> EnvT -> EnvT
insEnv lexp name tipo mdl posn env
                        | isVar lexp = insertVar name tipo mdl posn env
                        | isArr lexp = insertArr name tipo mdl (fromJust $ getDim lexp) posn env
--                      | otherwise = "non implementato"

-- inserisce caso gen: controllo esistenza e 

insertEnv :: BasicType -> AbsAuL.Modality -> LExp -> EnvT -> Posn -> Err EnvT
insertEnv tipo mdl lexp env posn = let nme = (getLIdentlexp lexp)
                                       name = fromLIdent nme
                                       lkup = Map.lookup name env
                                    in case lkup of
                                       Just e  -> Bad $ name ++ 
                                           " is already declared at line " ++ 
                                           ((show . getLinePosn . posLineCol . getPos) e) ++ 
                                           ":" ++ 
                                           ((show . getColPosn . posLineCol . getPos) e)
                                       Nothing -> Ok (insEnv lexp nme tipo mdl posn env)
 
-- ====================================
-- =========== TYPE SYSTEM ============
-- ====================================

checkArrayLenght array len = if (length array) == len then      
                                ""
                             else
                                "Too much or too few elements in array"

indexOutOfBound index len = if (index < len && index > 0) then
                                ""
                            else 
                                "Index out of bound"

flatten :: ArrD -> [VType]
flatten (Arr1D x) = x
flatten (ArrND x) = concatMap flatten x


getTypeOf (VTypeInteger integer) = AbsAuL.BasicType_Int
getTypeOf (VTypeString string) = AbsAuL.BasicType_String
getTypeOf (VTypeChar char) = AbsAuL.BasicType_Char
getTypeOf (VTypeDouble double) = AbsAuL.BasicType_Float
getTypeOf (VTypeBoolean bool) = AbsAuL.BasicType_Bool

                    


checkType :: ArrD -> BasicType -> String
checkType (Arr1D array) basicT 
                            | basicT == AbsAuL.BasicType_Bool = 
                              if (all(\x-> getTypeOf x == AbsAuL.BasicType_Bool) array)
                                then " typeOf x"
                              else 
                                "Mismatch type between elements and array definition" 
                            | basicT == BasicType_Int = 
                              if (all (\x-> getTypeOf x == AbsAuL.BasicType_Int) array)
                                then ""
                              else 
                                "Mismatch type between elements and array definition" 
                            | basicT == BasicType_Float = 
                              if (all (\x-> getTypeOf x == AbsAuL.BasicType_Float) array)
                                then ""
                              else 
                                "Mismatch type between elements and array definition"
                            | basicT == BasicType_String = 
                              if (all(\x-> getTypeOf x == AbsAuL.BasicType_String) array)
                                then ""
                              else 
                                "Mismatch type between elements and array definition"
                            | basicT == BasicType_Char = 
                              if (all(\x-> getTypeOf x == AbsAuL.BasicType_Char) array)
                                then ""
                              else 
                                "Mismatch type between elements and array definition" 
checkType (ArrND x) basicT = checkType (Arr1D flattenArray) basicT
                                where 
                                    flattenArray = flatten (ArrND x)

