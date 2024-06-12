from Mathematics.PrimeCheck import is_prime

count = 0
tot = 0
n = 11

while count < 11:
    if is_prime(n):
        n_str = str(n)
        n_left = n_str
        n_right = n_str
        count_ind = 0
        for i in range(len(n_str)-1):
            n_left = n_left[1:len(n_str)]
            n_right = n_right[0:(len(n_str)-1)]
            if is_prime(int(n_left)) and is_prime(int(n_right)):
                count_ind = count_ind + 1
            else:
                break
        if count_ind == 2*(len(n_str)-1):
            count = count + 1
            tot = tot + n
    n += 2

print(tot)