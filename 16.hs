import Data.Char

sumOfDigits :: Integer -> Integer
sumOfDigits = sum . (map (toInteger . digitToInt)) . show . ((^) 2)
