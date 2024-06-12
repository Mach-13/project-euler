# Project Euler Problem 49

using Combinatorics
using Primes

n = 1488
seqcount = 0

while seqcount == 0
    if !isprime(n)
        global n += 1
        continue
    end

    global seq = [n, n + 3330, n + 2 * 3330]
    global perms = collect(permutations(string(n)))

    str1 = string(seq[2])
    if !isprime(seq[2]) || !in([str1[1] , str1[2], str1[3], str1[4]], perms)
        global n += 1
        continue
    end

    str2 = string(seq[3])
    if !isprime(seq[3]) || !in([str2[1] , str2[2], str2[3], str2[4]], perms)
        global n += 1
        continue
    end

    global seqcount += 1
end

answer = string(seq[1]) * string(seq[2]) * string(seq[3])

println("Answer is $(answer)")