

module AbsBNF where

-- Haskell module generated by the BNF converter




data TreeLexD
    = TreeD Double Integer [TreeLexD] | LeafD Double Integer
  deriving (Eq, Ord, Show, Read)

data TreeLexI
    = TreeI Integer Integer [TreeLexI] | LeafI Integer Integer
  deriving (Eq, Ord, Show, Read)
