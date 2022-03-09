package main

import "fmt"


func fibonacci(n int) int {
	var memory map[int]int = make(map[int]int)
	if check, value := memory[n]; value {
		return check
	}
	for i := 0; i <= n; i++ {
		if n <= 1 {
			memory[n] = n
			return n
		} else {
			memory[n] = fibonacci(n-2)+fibonacci(n-1)
		}
	}
	return memory[n]
}

func main() {
	fmt.Println("Fibonacci 2")
	// fmt.Println(fibonacci(8))
	for i := 0; i < 9; i++ {
		fmt.Printf("Fibonacci ke-%d adalah %d\n", i, fibonacci(i))
	}
}
