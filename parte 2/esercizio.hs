{-# LANGUAGE DeriveFunctor #-}

data QT a = C a | Q (QT a) (QT a) (QT a) (QT a) deriving (Show, Eq, Functor)

boundPicture :: Integral t => t -> t -> QT t -> QT t
boundPicture cm cM a = (bound cm cM) <$> a
 where bound cm cM a 
            | a > cM = cM
            | a < cm = cm
            | otherwise = a

main = do
  let d = C 20; u = C 10; q = Q d u u u
  print $ boundPicture 4 15 (Q q (C (-10)) (C 3) q)


