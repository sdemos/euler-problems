-- the fact that it is a grid is irrelevant because of the restrictions on directions you can move. 
-- for an nxn grid, you can only move n time right and n times down in any order
-- this can be represented as RRRDDD for a 3x3 grid
-- the number of permutations (a better phrase would be distinct anagrams) of RRRDDD is 6!/(3!3!)
-- for an nxn grid, this would be (2n)!/(n!)^2
-- so...
factorial :: Integer -> Integer
factorial n = product [1..n]

anagrams :: Integer -> Integer
anagrams n = truncate $ top / bottom
    where top    = fromInteger $ factorial (2*n)
          bottom = fromInteger $ (factorial n)^2

main = print $ anagrams 20
