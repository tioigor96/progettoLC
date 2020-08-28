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

makevar :: LIdent -> AbsBnfc.BasicType -> [Entity]
makevar x@(LIdent str) tipo = [Var tipo str]


emptyEnv :: EnvT
emptyEnv = Map.empty

insertEnv :: LIdent -> [Entity] -> EnvT -> EnvT
insertEnv x@(LIdent str) ent env = Map.insert str ent env



-- TODO: controllo sui merge! se ho cose con medesimi nomi come si combina?
mergeEnv e1 e2 = Map.union e1 e2

