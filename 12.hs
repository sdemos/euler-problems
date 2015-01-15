import Control.Parallel.Strategies

factors :: Int -> [Int]
factors n = 1 : n : [x | x <- [2..s], n `divisibleBy` x] -- order doesn't matter, just the length
    where a `divisibleBy` b = a `mod` b == 0
          s = floor ((fromIntegral n)/2) -- /2 instead of sqrt because I need the whole list

-- infinite list of triangle numbers (formed by adding the natural numbers)
triangleNumbers :: [Int]
triangleNumbers = scanl1 (+) [1..]

--list = dropWhile (\as -> (length as) < 500) (parMap rpar factors triangleNumbers)
list = dropWhile (\as -> (length as) < 500) (map factors triangleNumbers)

main = print $ head list
