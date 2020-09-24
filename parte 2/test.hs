{-# LANGUAGE DeriveFunctor #-}

data QT a = C a | Q (QT a) (QT a) (QT a) (QT a) deriving (Show, Eq)

instance Functor QT where
  fmap f (C x) = C $ f x
  fmap f (Q ss sd is id) = Q (fmap f ss) (fmap f sd) (fmap f is) (fmap f id) 

bound :: Ord a => a -> a -> a -> a
bound cm cM a 
            | a > cM = cM
            | a < cm = cm
            | otherwise = a

boundPicture :: Integral t => t -> t -> QT t -> QT t
boundPicture cm cM a = fmap (bound cm cM) a

-- ============ TEST ============


test1 =  let d = C 20; u = C 10; q = Q d u u u in
     boundPicture 4 15 (Q q (C (-10)) (C 3) q)
-- stampa: Q (Q (C 15) (C 10) (C 10) (C 10)) (C 4) (C 4) (Q (C 15) (C 10) (C 10) (C 10))

test2 =  boundPicture 10 10 (C 20)
-- stampa: (C 10)

a = Q (Q (C 15) (C 10) (C 10) (C 10)) (C 4) (C 4) (Q (C 15) (C 10) (C 10) (C 10))
b = Q (Q (C 3) (C 2) (C 44) (C 10)) (C 4) (C (-11)) (Q (C 15) (C 13) (C 10) (C 20))
c = (Q a a b b)

test3 =  boundPicture 20 50 c
{- stampa:
(Q 
 (Q 
  (Q (C 20) (C 20) (C 20) (C 20))
  (C 20)
  (C 20)
  (Q (C 20) (C 20) (C 20) (C 20))
 )
 (Q 
  (Q (C 20) (C 20) (C 20) (C 20))
  (C 20)
  (C 20)
  (Q (C 20) (C 20) (C 20) (C 20))
 )
 (Q 
  (Q (C 20) (C 20) (C 44) (C 20))
  (C 20)
  (C 20)
  (Q (C 20) (C 20) (C 20) (C 20))
 )
 (Q 
  (Q (C 20) (C 20) (C 44) (C 20))
  (C 20)
  (C 20)
  (Q (C 20) (C 20) (C 20) (C 20))
 )
)
-}

test4 = boundPicture (-10) 10 test1
-- stampa: Q (Q (C 10) (C 10) (C 10) (C 10)) (C 4) (C 4) (Q (C 10) (C 10) (C 10) (C 10))
