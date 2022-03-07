package main

import "fmt"

func fibonacci(n int) int {
	if n == 0 || n == 1 {
		return n
	}

	fib_1 := 1
	fib_2 := 0

	for i := 0; i < n; i++ {
		fib_1, fib_2 = fib_2, fib_2 + fib_1
	}

	return fib_2
}

func main() {
	fmt.Println("Fibonacci 2")
	// fmt.Println(fibonacci(8))
	for i := 0; i < 9; i++ {
		fmt.Printf("Fibonacci ke-%d adalah %d\n", i, fibonacci(i))
	}
}
