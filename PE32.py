import itertools as it

s = '123456789'
comb = list(it.permutations(s))

pan = []
for i in range(len(comb)):
    m = ''.join(comb[i])
    for j in range(4):
        for k in range(j+1, 5):
            a = int(m[0:(j+1)])
            b = int(m[(j+1):(k+1)])
            c = int(m[(k+1):9])
            if (a*b == c) and (c not in pan):
                pan.append(c)

print(pan)
print(sum(pan))