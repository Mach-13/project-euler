# Project Euler Problem 52

n = 1
n_ans = n

while true
    dig_set = Set(collect(string(n)))
    global count_same = 0

    for i = 1:6
        if Set(collect(string(i*n))) != dig_set
            break
        else
            count_same += 1
        end
    end

    if count_same == 6
        global n_ans = n
        break
    end

    global n += 1
end

println("Answer is $(n_ans)")