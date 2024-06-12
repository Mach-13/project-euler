# Project Euler Problem 45

function is_pentagonal(int)
    if int <= 0
        return false
    end
    n = 1
    pent = 0
    while pent < int
        pent = n * (3 * n - 1) / 2
        n += 1
    end
    if pent == int
        return true
    end
    return false
end

function is_hexagonal(int)
    if int <= 0
        return false
    end
    n = 1
    hex = 0
    while hex < int
        hex = n * (2 * n - 1)
        n += 1
    end
    if hex == int
        return true
    end
    return false
end

function triangle(n)
    return n * (n + 1) / 2
end

n = 286

while !is_pentagonal(triangle(n)) || !is_hexagonal(triangle(n))
    global n += 1
end

T = triangle(n)

println("Next triangle number after 40755 that is also pentagonal and hexagonal is $(T)")