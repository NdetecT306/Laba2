import sys
numbers = int(input())
max_flower = 0
if numbers <= 0:
    print("Быть не может")
    sys.exit()
else:
    clumba = []
    while(numbers>0):
        flower = int(input())
        if flower > 0:
            clumba.append(flower)
        if flower > max_flower:
            max_flower = flower
        numbers-=1
    poliv = int(input())
    if poliv < max_flower:
        print(" Как купишь новую лейку - приходи.")
        sys.exit() 
    else:
        step = 0
        perem = poliv
        for i in range(0, len(clumba)):
            if perem < clumba[i]:
                step = step + (i * 2 + 1)
                perem = poliv
            else:
                step += 1
            perem -= clumba[i]
        print(step)
