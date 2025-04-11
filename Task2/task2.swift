import Foundation
if let inputNumbers = readLine(),let numbers = Int(inputNumbers) {
    var clumba: [Int] = []
    var maxFlower = 0
    if numbers <= 0 {
        print("Быть не может")
        exit(0)
    }
    for _ in 0..<numbers {
        if let inputF = readLine(),let flower = Int(inputF) {
            if flower > 0 {
            clumba.append(flower)
        }
            maxFlower = max(maxFlower, flower)
        }else {
        print("Ошибка: Некорректный ввод.")
}
    }
    if let input = readLine(), let poliv = Int(input) {
        if poliv < maxFlower {
        print(" Как купишь новую лейку - приходи.")
        exit(0)
        } 
        else {
            var step = 0
            var perem = poliv
            for (i, flower) in clumba.enumerated() {
                if perem < flower {
                    step += (i * 2 + 1)
                    perem = poliv
                } else {
                    step += 1
                }
                perem -= flower
            }
            print(step)
        }
    } else {
        print("Ошибка: Некорректный ввод.")
    }
} else {
    print("Ошибка: Некорректный ввод.")
}
