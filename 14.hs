collatz :: Int -> [Int]
collatz n
    | n == 1 = [1]
    | even n = n : (collatz $ truncate $ (fromIntegral n)/2)
    | odd  n = n : (collatz $ 3 * n + 1)

-- max collatz sequence up to a number
maxCollatz :: Int -> (Int, Int)
--maxCollatz = foldl1 maxTuple (map (\n -> (n,(length . collatz)n)) [1..1000000])
maxCollatz m = foldl1 maxTuple [(n, collatzLength n) | n <- [1..m]]
    where maxTuple (c1,l1) (c2,l2)
            | l2 > l1   = (c2,l2)
            | otherwise = (c1,l1)
          collatzLength = length . collatz
