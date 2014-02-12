-- find the smallest number divisible by 1-20
-- author: stphndemos

import Data.List as List
import Data.Maybe

smallestDivisible = List.find p [1..]
    where p x = isNothing (List.find (\y -> mod x y /= 0) [1..20])
