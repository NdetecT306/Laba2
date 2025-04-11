let string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
print("Введите значение:")
if let inputNumbers = readLine(), var number = Int(inputNumbers) {
    if  number <= 0 || number > 26 {
        print("Неправильное число.")
    } else {
        var perem = number - 1
        while perem >= 0 {
            for i in stride(from: number - 1, through: perem, by: -1) {
                print(string[string.index(string.startIndex, offsetBy: i)], " ",terminator: "") 
            }
            print() 
            perem -= 1
        }
    }
} else {
    print("Ошибка: Некорректный ввод для numbers. ")
}
