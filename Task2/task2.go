package main
import (
	"fmt"
)
func main() {
	var numbers int
	fmt.Scan(&numbers)
	if numbers <= 0 {
		fmt.Println("Быть не может")
		return
	}
	clumba := make([]int, 0)
	max := 0
	for i := 0; i < numbers; i++ {
		var flower int
		fmt.Scan(&flower)
		if flower > 0 {
			clumba = append(clumba, flower)
		}
		if flower > max {
			max = flower
		}
	}
	var poliv int
	fmt.Scan(&poliv)
	if poliv < max {
		fmt.Println("Как купишь новую лейку - приходи.")
		return
	}
	step := 0
	perem := poliv
	for i := 0; i < len(clumba); i++ {
		if perem < clumba[i] {
			step += i*2 + 1
			perem = poliv
		} else {
			step += 1
		}
		perem -= clumba[i]
	}
	fmt.Println(step)
}
