import java.util.Scanner;
import java.util.InputMismatchException
fun main() {
    val scanner = Scanner(System.`in`)
    var number: Int
    while (true) {
        try {
            number = scanner.nextInt()
            break // Exit the loop if input is valid
        } catch (e: InputMismatchException) {
            println("Это не число. Попробуйте снова.")
            scanner.nextLine() // Clear invalid input from scanner
        }
    }
    while (number <= 0 || number > 26) {
        print("Неправильное число. Попробуйте снова: ")
        try {
            number = scanner.nextInt()
            scanner.nextLine() // Consume newline
        } catch (e: InputMismatchException) {
            println("Это не число. Попробуйте снова.")
            scanner.nextLine() // Clear invalid input from scanner
            continue // Go to next loop iteration
        }
    }
    val mystring = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var point = number - 1
    while (point >= 0) {
        for (i in number - 1 downTo point) {
            print("${mystring[i]} ")
        }
        point--
        println()
    }
}
