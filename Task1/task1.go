package main
import (
	"fmt"
	"os"
	"strconv"
	"strings"
)
func main() {
	myString := "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	var number int
	var input string
	fmt.Print("Введите число: ")
	fmt.Scanln(&input)
	for {
		var err error
		number, err = strconv.Atoi(input)
		if err == nil {
			break 
		}
		fmt.Println("Это не число. Попробуйте снова: ")
		fmt.Scanln(&input)
	}
	for number <= 0 || number > 26 {
		fmt.Println("Неправильное число. Попробуйте снова.")
		fmt.Scanln(&input)
		var err error
		number, err = strconv.Atoi(input)
		if err != nil {
			fmt.Println("Это не число. Пожалуйста, введите число: ")
			fmt.Scanln(&input)
			for {
				var err error
				number, err = strconv.Atoi(input)
				if err == nil {
					break
				}
				fmt.Println("Это не число. Попробуйте снова: ")
				fmt.Scanln(&input)
			}
		}
	}
	point := number - 1
	fmt.Println("Результат:")
	for point >= 0 {
		row := []string{}
		for i := number - 1; i >= point; i-- {
			row = append(row, string(myString[i]))
		}
		fmt.Println(strings.Join(row, " "))
		point--
	}
	os.Exit(0)
}
