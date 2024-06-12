fifth = []

for n in range(2, 200000):
    n_str = str(n)
    fifsum = 0
    for i in range(len(n_str)):
        fifsum = fifsum + (int(n_str[i]))**5
    if n == fifsum:
        fifth.append(n)

print(sum(fifth))