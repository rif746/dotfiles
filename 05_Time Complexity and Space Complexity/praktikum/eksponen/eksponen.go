package main

import (
	"fmt"
	"time"
)

func pangkat(x, y int) int {
	res := 1
	for i := y; i > 0; i /= 2 {
		if (i % 2 == 1) {
			res = res * x
		}
		x *= x
	}
	return res
}

func main() {
	start := time.Now()
	fmt.Println("Exponentiation")
	fmt.Println("2 pangkat 3 adalah ", pangkat(2, 3))
	fmt.Println("5 pangkat 3 adalah ", pangkat(5, 3))
	fmt.Println("10 pangkat 2 adalah ", pangkat(10, 2))
	fmt.Println("2 pangkat 5 adalah ", pangkat(2, 5))
	elpased := time.Since(start)
	fmt.Println("Process took ", elpased)
}
