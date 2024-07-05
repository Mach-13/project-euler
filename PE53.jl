# Project Euler Problem 53

ans_count = 0

for n = 23:100
    global r = 1

    # stop at first 1,000,000 for each n
    while (binomial(n, r) < 1000000) & (r < n)
        r += 1
    end

    if r < n
        global ans_count += (n - r - r + 1)
    end
end

println("Answer is $(ans_count)")