count = 0
for i1 in range(201):
    tot = 0
    for i2 in range(101):
        for i5 in range(41):
            for i10 in range(21):
                for i20 in range(11):
                    for i50 in range(5):
                        for i100 in range(3):
                            tot = i1 + i2 + i5 + i10 + i20 + i50 + i100
                            if tot == 200:
                                count = count + 1

print(count + 1)