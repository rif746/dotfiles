package main

import (
	"fmt"
	"time"
)

func primeNum(n int) bool {

	if n == 2 {
		return true 
	}

	if n < 2 || (n % 2 == 0) || (n % 5 == 0) || (n % 3 == 0) {
		return false
	}

	return true
	
}

func main() {
	start := time.Now()
	fmt.Println("Tes Bilangan Prima")
	fmt.Println("1500450271 ? ", primeNum(1500450271))
	fmt.Println("15 ? ", primeNum(15))
	fmt.Println("27 ? ", primeNum(27))
	elpased := time.Since(start)
	fmt.Printf("Process took %s\n", elpased)
}
