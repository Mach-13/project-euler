# Project Euler Problem 40

digit = 1
dec = ""

while length(dec) < 1000000
    global dec = dec * string(digit)
    global digit = digit + 1
end

prod = 1
for i in [1, 10, 100, 1000, 10000, 100000, 1000000]
    global prod = prod * parse(Int8, dec[i])
end