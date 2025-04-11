 import java.util.Scanner
import java.util.InputMismatchException
import java.util.Vector
fun main() {
    val scanner = Scanner(System.`in`)
    val numbers: Int = try {
        scanner.nextInt()
    } catch (e: InputMismatchException) {
        println("Not a number.")
        return
    }
    var max = 0
    if (numbers <= 0) {
        println("That is impossible.")
        return
    }
    val clumba = Vector<Int>()
    for (i in 0 until numbers) {
        val flower: Int = try {
            scanner.nextInt()
        } catch (e: InputMismatchException) {
            println("Not a number.")
            return
        }
        if (flower > 0) {
            clumba.add(flower)
        }
        if (flower > max) {
            max = flower
        }
    }
    val poliv: Int = try {
        scanner.nextInt()
    } catch (e: InputMismatchException) {
        println("Not a number.")
        return
    }
    if (poliv < max) {
        println("Go buy a new watering can")
        return
    }
    var step = 0
    var perem = poliv
    for (i in 0 until clumba.size) {
        if (perem < clumba[i]) {
            step += (i * 2 + 1)
            perem = poliv
        } else {
            step += 1
        }
        perem -= clumba[i]
    }
    println(step)
}

