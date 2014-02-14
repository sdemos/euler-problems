# Largest Product in a series
# author: stphndemos

num_str = raw_input()
sm

nums = []

for n in num_str:
    nums.append(eval(n))

num_prod_max = 0

for i in range(len(nums)):
    if i < 5: continue
    prod = 1
    for j in range(5):
        prod *= nums[i-j]
    num_prod_max = max(num_prod_max, prod)

print num_prod_max
    
