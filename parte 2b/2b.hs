import Prelude hiding (map,take)

fact :: Integer -> Integer
fact n = if n ==0 then 1 else n * fact (n -1)

take:: Int -> [ a ] -> [ a ]
take _ [] = []
take n _ | n <= 0 = []
take n ( x : xs ) = x : take (n -1) xs

map f ( x : xs ) = f x : map f xs
map _ [] = []

{-
let v=fact k; k=j-2; j=2*2 in take (5-k)(v : map fact [j-k, v, v, error "q",v])
[2,2,2]

-}
