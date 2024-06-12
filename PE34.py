# Project Euler Problem 34

import math

nsum = 0

for i in range(10, 99999):
    a = str(i)
    n = 0
    for j in range(0, len(a)):
        n = n + math.factorial(int(a[j]))
    if i == n:
        nsum = nsum + i

print(nsum)