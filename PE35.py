def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, n):
        if n % i == 0:
            return False
    return True

n = 13  # 13 circular primes under 100
for i in range(100, 1000000):
    if is_prime(i):
        p_str = str(i)
        if ('0' not in p_str) and ('2' not in p_str) and ('4' not in p_str) and \
                ('5' not in p_str) and ('6' not in p_str) and ('8' not in p_str):
            p_count = 0
            for j in range(len(p_str)):
                p0 = p_str[0]
                p_str = p_str.replace(p_str[0], '')
                p_str = p_str + p0
                p_cir = int(p_str)
                if is_prime(p_cir) == 0:
                    break
                else:
                    p_count += 1
            if p_count == len(p_str):
                n += 1

print(n)