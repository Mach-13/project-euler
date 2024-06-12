# Project Euler Problem 36
# Sum of double-base (base 10 and base 2) palindromes under one million

n = 0

for i in range(1, 1000000):  # iterate though 1 million
    i_str = str(i)  # convert to string array
    # create string array for reversed
    p_str = ''
    for j in range(0, len(i_str)):  # reverse using for loop
        p_str = i_str[j] + p_str
    if i_str == p_str:  # check if i is palindrome in base 10
        # create list of base 2 values up to i
        base = []
        pwr = 0
        while 2**pwr <= i:
            base.insert(0, 2**pwr)
            pwr = pwr + 1
        # Calculate i in base 2
        b2 = ''  # binary array
        i2 = i
        for k in range(0, len(base)):
            if base[k] <= i2:
                b2 = b2 + '1'
                i2 = i2 - base[k]
            else:
                b2 = b2 + '0'
        # create string array for reversed binary
        pal_b2 = ''  # reversed binary
        for m in range(0, len(b2)):
            pal_b2 = b2[m] + pal_b2
        if pal_b2 == b2:  # check if i is palindrom in base 2
            n = n + i  # if so add i to the sum

print(n)