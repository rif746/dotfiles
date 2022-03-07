package main

import "fmt"

func pangkat(base, pangkat int) int {
	var p int = base
	for i := 1; i < pangkat; i++ {
		p *= base
	}
	return p
}

func main() {
	fmt.Println("Exponentiation")
	fmt.Println("2 pangkat 3 adalah ", pangkat(2, 3))
	fmt.Println("5 pangkat 3 adalah ", pangkat(5, 3))
	fmt.Println("10 pangkat 2 adalah ", pangkat(10, 2))
	fmt.Println("2 pangkat 5 adalah ", pangkat(2, 5))
}
