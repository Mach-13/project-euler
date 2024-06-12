# Project Euler Problem 46

using Primes

function is_square(n)
    if sqrt(n) == ceil(sqrt(n))
        return true
    end
    return false
end

n = 9
conj = true
while conj
    if isprime(n)
        global n += 2
        continue
    end
    P = primes(3, n)
    notsquare = 0
    for i in 1:lastindex(P)
        if !is_square((n - P[i]) / 2)
            notsquare += 1
        end
    end
    if notsquare == length(P)
        global conj = false
    else
        global n += 2
    end
end

println("$(n) is the smallest odd composite such that the Goldbach's other conjecture is false")