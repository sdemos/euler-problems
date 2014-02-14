# largest prime factor
# author: stphndemos

import math

num = 600851475143
prime_factors = []
done = True

while True:
    done = True
    for i in range(2,int(math.sqrt(num))+1):
        if num%i == 0:
            prime_factors.append(i)
            num /= i
            done = False
            break
    if done:
        prime_factors.append(num)
        break


print prime_factors

