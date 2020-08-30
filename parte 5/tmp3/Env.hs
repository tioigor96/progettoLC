module Env where

import AbsBnfc
import Control.Applicative
import qualified Data.Map.Strict as Map
import Data.Maybe
import Data.Typeable
import ErrM
import LexBnfc
import Utils

type EnvT = Map.Map String [Entity]

data ArrD = Arr1D [AbsBnfc.VType] | ArrND [ArrD]
    deriving (Show,Eq)

data Entity = Var { getTypeV :: AbsBnfc.BasicType,
                    getNameV :: String,
                    getPos :: Posn 
                    }
            | Fnct { getTypeF :: AbsBnfc.BasicType,
                     getNameF :: String,
                     getParamF :: [(Entity, AbsBnfc.Modality)], -- siamo sicuri saranno
                                                                -- solo Var grazie alla
                                                                -- BNF
                     getPos :: Posn
                    }
            | Arr { getTypeA :: AbsBnfc.BasicType,
                    getNameA :: String,
                    getDimA  :: [Integer],
                    getPos :: Posn
                    }
            | Ptr { getTypeP :: AbsBnfc.BasicType,
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

lookupEnv :: String -> EnvT -> Maybe [Entity]
lookupEnv name env = Map.lookup name env 

-- TODO: controllo sui merge! se ho cose con medesimi nomi come si combina?
mergeEnv e1 e2 = Map.union e1 e2

--crea una Var
makeVar :: String -> AbsBnfc.BasicType -> Posn -> Entity
makeVar str tipo posn = Var tipo str posn

--crea un Arr
makeArr :: String -> AbsBnfc.BasicType -> [Integer] -> Posn  -> Entity
makeArr str tipo dims posn= Arr tipo str dims posn

--inserisce una var
insertVar :: LIdent -> AbsBnfc.BasicType -> Posn  -> EnvT -> EnvT
insertVar x@(LIdent str) tipo posn env = Map.insert str [(makeVar str tipo posn)] env

-- inserisce un Arr
insertArr :: LIdent -> BasicType -> [Integer] -> Posn -> EnvT -> EnvT
insertArr x@(LIdent str) tipo dims posn env = Map.insert str [(makeArr str tipo dims posn)] env

insEnv :: LExp -> LIdent -> BasicType -> Posn -> EnvT -> EnvT
insEnv lexp name tipo posn env
                        | isVar lexp = insertVar name tipo posn env
                        | isArr lexp = insertArr name tipo (fromJust $ getDim lexp) posn env
--                      | otherwise = "non implementato"

-- inserisce caso gen: controllo esistenza e 

insertEnv :: BasicType -> LExp -> EnvT -> Posn -> Err EnvT
insertEnv tipo lexp env posn = let nme = (getLIdentlexp lexp)
                                   name = fromLIdent nme
                                   lkup = Map.lookup name env
                                  in case lkup of
                                    Just e  -> Bad $ name ++ 
                                        " is already declared at line " ++ 
                                        ((show . getLinePosn . posLineCol . getPos . head) e) ++ 
                                        ":" ++ 
                                        ((show . getColPosn . posLineCol . getPos . head) e)
                                    Nothing -> Ok (insEnv lexp nme tipo posn env)
 
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


getTypeOf (VTypeInteger integer) = AbsBnfc.BasicType_Int
getTypeOf (VTypeString string) = AbsBnfc.BasicType_String
getTypeOf (VTypeChar char) = AbsBnfc.BasicType_Char
getTypeOf (VTypeDouble double) = AbsBnfc.BasicType_Float
getTypeOf (VTypeBoolean bool) = AbsBnfc.BasicType_Bool

                    


checkType :: ArrD -> BasicType -> String
checkType (Arr1D array) basicT 
                            | basicT == AbsBnfc.BasicType_Bool = 
                              if (all(\x-> getTypeOf x == AbsBnfc.BasicType_Bool) array)
                                then " typeOf x"
                              else 
                                "Mismatch type between elements and array definition" 
                            | basicT == BasicType_Int = 
                              if (all (\x-> getTypeOf x == AbsBnfc.BasicType_Int) array)
                                then ""
                              else 
                                "Mismatch type between elements and array definition" 
                            | basicT == BasicType_Float = 
                              if (all (\x-> getTypeOf x == AbsBnfc.BasicType_Float) array)
                                then ""
                              else 
                                "Mismatch type between elements and array definition"
                            | basicT == BasicType_String = 
                              if (all(\x-> getTypeOf x == AbsBnfc.BasicType_String) array)
                                then ""
                              else 
                                "Mismatch type between elements and array definition"
                            | basicT == BasicType_Char = 
                              if (all(\x-> getTypeOf x == AbsBnfc.BasicType_Char) array)
                                then ""
                              else 
                                "Mismatch type between elements and array definition" 
checkType (ArrND x) basicT = checkType (Arr1D flattenArray) basicT
                                where 
                                    flattenArray = flatten (ArrND x)

