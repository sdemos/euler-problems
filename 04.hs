-- finding the largest palindromic number formed by the multiplication of two 3-digit numbers
-- author: stphndemos

import Data.List as List

isPalindrome :: (Show a, Eq a) => a -> Bool
isPalindrome x = (reverse . show) x == (show x)

main = List.find isPalindrome [x*y | x <- [999,998..100], y <- [999,998..100]]
