module Env where

import AbsBnfc
import Control.Applicative
import qualified Data.Map.Strict as Map
import Utils
import Data.Maybe

type EnvT = Map.Map String [Entity]

data ArrD = Arr1D [AbsBnfc.VType] | ArrND [ArrD]
    deriving (Show,Eq)

data Entity = Var { getTypeV :: AbsBnfc.BasicType,
                    getNameV :: String 
                    }
            | Fnct { getTypeF :: AbsBnfc.BasicType,
                     getNameF :: String,
                     getParamF :: [(Entity, AbsBnfc.Modality)]  -- siamo sicuri saranno
                                                                -- solo Var grazie alla
                                                                -- BNF
                    }
            | Arr { getTypeA :: AbsBnfc.BasicType,
                    getNameA :: String,
                    getDimA  :: [Integer]
                    }
            | Ptr { getTypeP :: AbsBnfc.BasicType,
                    getNameP :: String,
                    getLevP  :: Integer
                    }
            deriving (Show, Eq)

--crea l'env vuoto
emptyEnv :: EnvT
emptyEnv = Map.empty

-- TODO: controllo sui merge! se ho cose con medesimi nomi come si combina?
mergeEnv e1 e2 = Map.union e1 e2

--crea una Var
makeVar :: String -> AbsBnfc.BasicType -> Entity
makeVar str tipo = Var tipo str

--crea un Arr
makeArr :: String -> AbsBnfc.BasicType -> [Integer] -> Entity
makeArr str tipo dims = Arr tipo str dims

--inserisce una var
insertVar :: LIdent -> AbsBnfc.BasicType -> EnvT -> EnvT
insertVar x@(LIdent str) tipo env = Map.insert str [(makeVar str tipo)] env

-- inserisce un Arr
insertArr :: LIdent -> BasicType -> [Integer] -> EnvT -> EnvT
insertArr x@(LIdent str) tipo dims env = Map.insert str [(makeArr str tipo dims)] env

-- inserisce caso gen
insertEnv :: BasicType -> LExp -> EnvT -> EnvT
insertEnv tipo lexp env
    | isVar lexp = insertVar (getLIdentlexp lexp) tipo env
    | isArr lexp = insertArr (getLIdentlexp lexp) tipo (fromJust $ getDim lexp) env
--    | otherwise = "non implementato"

