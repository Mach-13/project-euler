# Project Euler Problem 39

maximum = 0
max_p = 12

for p in range(12, 1001):
    count = 0
    for a in range(1, p):
        for b in range(a, p):
            if p - a - b <= b:
                break
            if a**2 + b**2 == (p-a-b)**2:
                count = count + 1
    if count > maximum:
        maximum = count
        max_p = p

print(maximum)
print(max_p)