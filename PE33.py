# Project Euler Problem 33

import numpy

n = []
d = []
nprod = 1
dprod = 1

for i in range(11, 99):
    for j in range(i+1, 100):
        num = str(i)
        den = str(j)
        if (num[1] != '0') and (den[1] != '0'):
            if num[0] == den[0]:
                num = num[1]
                den = den[1]
            elif num[0] == den[1]:
                num = num[1]
                den = den[0]
            elif num[1] == den[0]:
                num = num[0]
                den = den[1]
            elif num[1] == den[1]:
                num = num[0]
                den = den[0]
            numerator = int(num)
            denominator = int(den)
            if (len(num) == 1) and (numerator/denominator == i/j):
                n.append(i)
                d.append(j)

print(n)
print(d)
nprod = numpy.prod(n)
dprod = numpy.prod(d)
g = numpy.gcd(nprod, dprod)
print(dprod/g)