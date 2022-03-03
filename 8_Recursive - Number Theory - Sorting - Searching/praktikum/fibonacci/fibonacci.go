package main

import "fmt"

func fibonacci(n int) int {
	if n == 0 || n == 1 {
		return n
	} else {
		return fibonacci(n-2)+fibonacci(n-1)
	}
}

func main() {
	fmt.Println("Fibonacci")
	fmt.Println("Fibonacci dari 8 adalah ", fibonacci(8))
}
