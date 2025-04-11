mystring = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
print("Введите значение:")
while True:
    number = input()
    if number.isdigit():
        number = int(number)
        if 1 <= number and number <= 26:
            break
        else:
            print("Неправильное число. Попробуйте снова: ")
    else:
        print("Неправильный ввод. Попробуйте снова: ")
perem = number - 1
while(perem>=0):
    for i in range(number-1, perem-1, -1):
        print(mystring[i], end = " ")
    print()
    perem-=1
