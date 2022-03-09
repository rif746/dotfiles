package main

import "fmt"

var memory map[int]int = make(map[int]int)

func fibonacci(n int) int {
	if check, value := memory[n]; value {
		return check
	}

	if n <= 1 {
		memory[n] = n
		return n
	} else {
		memory[n] = fibonacci(n-2)+fibonacci(n-1)
		return memory[n]
	}
}

func main() {
	fmt.Println("Fibonacci")
	for i := 0; i < 9; i++ {
		fmt.Printf("Fibonacci ke-%d adalah %d\n", i, fibonacci(i))
	}
}
