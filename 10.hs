import Data.Numbers.Primes

main = sum (takeWhile (<2000000) primes)
