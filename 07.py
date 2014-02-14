# 10001st prime
# author: stphndemos

import math

num = 1
num_primes = 0

while True:
    num += 1
    prime = True
    for i in range(2, int(math.sqrt(num))+1):
        if num%i == 0:
            prime = False
            break
    if prime:
        num_primes += 1
    if num_primes == 10001:
        print num
        break
