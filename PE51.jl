# Project Euler Problem 51

using Combinatorics
using Primes

n = 10000
n_answer = n

digits = ['1', '2', '3', '4', '5', '6', '7', '8', '9']

while true
    n_string = string(n)
    position = 1:length(n_string)

    global num_primes = 0

    for replace_num = 1:length(n_string)
        replace_ind = collect(combinations(position, replace_num))

        num_primes = 0

        for i = replace_ind
            num_primes = 0

            for d = digits
                global n_string_replaced = collect(n_string)
                n_string_replaced[i] = collect(repeat([d], length(i)))
                n_replaced = tryparse(Int, join(n_string_replaced))

                if isprime(n_replaced)
                    num_primes += 1
                end
            end

            if num_primes == 8
                n_string_answer = n_string_replaced
                n_string_answer[i] = collect(repeat(['1'], length(i)))
                global n_answer = tryparse(Int, join(n_string_answer))
                break
            end 
        end

        if num_primes == 8
            break
        end
    end

    if num_primes == 8
        break
    end

    global n += 1
end

println("Answer is $(n_answer)")