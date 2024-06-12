# Project Euler Problem 38

maximum = 0

for n in range(2, 10):
    # find largest possible integer for each n
    ndig = 1
    while (ndig + 1) * n < 9:  # number of digits of the concatenated product must be 9
        ndig = ndig + 1
    for integer in range(1, 10 ** ndig):
        # concatenated product
        prod = ''
        for i in range(1, n+1):
            prod = prod + str(integer * i)
        if (len(prod) == 9) and ('1' in prod) and ('2' in prod) and ('3' in prod) and \
                ('4' in prod) and ('5' in prod) and ('6' in prod) and ('7' in prod) and \
                ('8' in prod) and ('9' in prod):
            p = int(prod)
            if p > maximum:
                maximum = p

print(maximum)