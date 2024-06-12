# Project Euler Problem 42

using DelimitedFiles

#= Read the data into an array =#
data = readdlm("words.txt", ',', header = false)

count = 0
for i in 1:lastindex(data)
    sum = 0
    for j in 1:length(data[i])
        sum += Int(data[i][j]) - 64
    end
    n = 1
    tri = 0
    while tri < sum
        tri = (1/2) * n * (n + 1)
        if sum == tri
            global count += 1
            break
        end
        n += 1
    end
end