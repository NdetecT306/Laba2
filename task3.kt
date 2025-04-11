import java.util.Scanner;
import java.util.InputMismatchException
fun main() {
    val scanner = Scanner(System.`in`)
    val numbers = scanner.nextInt()
    if (numbers <= 0) {
        println("That is impossible.")
        return
    }
    var count = 0
    for (i in 1..numbers) {
        val perem = scanner.nextInt()
        var ost = perem
        if (ost < 0) {
            ost = -ost
        }
        while (ost > 0) {
            val digit = ost % 10
            if (digit % 3 == 0) {
                count += digit
            }
            ost /= 10
        }
    }
    println("Answer: ")
    println(count)
}
