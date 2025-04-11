package main
import (
    "bufio"
    "fmt"
    "os"
)
func main() {
    scanner := bufio.NewScanner(os.Stdin)
    scanner.Scan()
    var numbers int
    fmt.Sscanf(scanner.Text(), "%d", &numbers)
    count := 0
    for i := 0; i < numbers; i++ {
        scanner.Scan()
        var perem int
        fmt.Sscanf(scanner.Text(), "%d", &perem)
        for perem != 0 {
            ost := perem % 10
            if ost%3 == 0 {
                count += ost
            }
            perem /= 10
        }
    }
    fmt.Println(count)
}
