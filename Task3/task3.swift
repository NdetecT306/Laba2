import Foundation
func main() {
    let numbers = Int(readLine()!)!
    var count = 0
    for _ in 0..<numbers {
        let perem = Int(readLine()!)!
        var temp = perem
        while temp != 0 {
            let ost = temp % 10
            if ost % 3 == 0 {
                count += ost
            }
            temp /= 10
        }
    }
    print(count)
}
main()
