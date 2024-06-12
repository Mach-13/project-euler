# Project Euler Problem 48

last10 = 0

for i in 1:1000
    expo = 1
    for j in 1:i
        expo *= i
        if length(string(expo)) > 10
            expo = parse(Int, string(expo)[end - 9:end])
        end
    end
    global last10 += expo
    if length(string(last10)) > 10
        global last10 = parse(Int, string(last10)[end - 9:end])
    end
end

println("Last 10 digits of the sum 1^1 + 2^2 + 3^3 + ... + 1000^1000 is $(last10)")