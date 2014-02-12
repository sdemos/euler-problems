-- 10001st prime number
-- author: stphndemos

import Data.List  (find)
import Data.Maybe (isJust)

listPrimes :: [Int]
listPrimes = filter isPrime [1..]

isPrime :: Int -> Bool
isPrime x = (isJust . find divisibleByX) [n | n <- [1..], n < sqrt x]
    where divisibleByX y = (x `mod` y) == 0
