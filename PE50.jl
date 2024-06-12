# Project Euler Problem 50

using Primes

i = 1
psum = 0
answer = 0
consecutive = 0

while psum < 1000000
    global psum += prime(i)
    if isprime(psum)
        global answer = psum
        global consecutive = i
    end
    global i += 1
end

#= ------------------------------------------------------------------------------------------- =#

# Above method gives answer = 958577 (sum of 536 consecutive primes starting from 2)
# which was wrong, hence the correct answer is a sum of more than 536 consecutive primes

k = consecutive + 1 # start with 537 consecutive primes
correct = 0
longest = 0
status = false

# Outer loop changes the number of consecutive primes to be added
# Inner loop changes the starting index

while (!status)
    global n = 0
    local start = 2

    while !isprime(n)
        # Sum of k consecutive primes starting from (start)th prime
        global n = sum(primes(prime(start), prime(start + k - 1)))
        if n > 1000000 # if the sum reaches 1000000 before finding a prime, terminate the loop
            break
        end
        start += 1 # else keep looking for a prime
    end

    if isprime(n)
        global correct = n
        global longest = k
    end

    # If the first iteration of loop was greater than 1000000, then the program should terminate
    if start == 2
        global status = true # you don't really need this
        break
    end

    # Change the number of consecutive primes to be added
    global k += 1
end

println("$(correct) can be written as a sum of $(longest) consecutive primes")