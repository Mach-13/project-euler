# Project Euler Problem 44

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

j = 1
status = false

while status == false
    Pj = j * (3 * j - 1) / 2
    for k in 1:j
        Pk = k * (3 * k - 1) / 2
        if !is_pentagonal(Pj + Pk)
            continue
        end
        if is_pentagonal(Pj - Pk)
            global P1 = Pk
            global P2 = Pj
            global D = Pj - Pk
            global status = true
            break
        end
    end
    global j += 1
end

println("$(P1) and $(P2) are pentagonal numbers such that their sum and difference are pentagonal")
println("and their difference is minimized at $(D)")