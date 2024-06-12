# Project Euler Problem 47

using Primes

n1 = 1
consecutive4 = false

while consecutive4 == false
    if length(unique(factor(Vector, n1))) != 4
        global n1 += 1
        continue
    end
    if length(unique(factor(Vector, n1 + 1))) != 4
        global n1 += 1
        continue
    end
    if length(unique(factor(Vector, n1 + 2))) != 4
        global n1 += 1
        continue
    end
    if length(unique(factor(Vector, n1 + 3))) != 4
        global n1 += 1
        continue
    end
    break
end