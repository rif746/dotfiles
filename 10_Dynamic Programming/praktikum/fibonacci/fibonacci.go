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
	for i := 0; i < 9; i++ {
		fmt.Printf("Fibonacci ke-%d adalah %d\n", i, fibonacci(i))
	}
}
