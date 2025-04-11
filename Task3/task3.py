numbers = int(input())
count = 0
while(numbers>0):
    perem = int(input())
    while perem != 0:
        ost = perem % 10
        if ost % 3 == 0:
            count += ost
        perem //= 10
    numbers-=1
print(count)
