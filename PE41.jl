# Project Euler Problem 41

using Combinatorics

function isprime(n)
    if n <= 1
        return false
    elseif n == 2
        return true
    end
    for i in 2:(n-1)
        if n % i == 0
            return false
        end
    end
    return true
end

pan = 0
A = collect(permutations("1234567"))

for i in 1:lastindex(A)
    p = parse(Int, join(A[i]))
    if isprime(p) && p > pan
        global pan = p
    end
end