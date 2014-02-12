-- Add up all the even fibonacci numbers from 1 to 4 million
-- author: stphndemos

fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib n = (fib $ n-1) + (fib $ n-2)

main = ( sum . filter even . takeWhile (<4000000) . map fib) [1..]
