# Project Euler Problem 43

using Combinatorics

pan = collect(permutations("0123456789"))
prime = [2, 3, 5, 7, 11, 13, 17]

sum = 0

for i in 1:lastindex(pan)
    local count = 0
    for j in 2:8
        d = parse(Int, join(pan[i][j:(j + 2)]))
        if d % prime[j - 1] == 0
            count += 1
        else
            break
        end
    end
    if count == 7
        global sum += parse(Int, join(pan[i]))
    end
end