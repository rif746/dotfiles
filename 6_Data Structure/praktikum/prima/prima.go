package main

import (
	"fmt"
	"time"
)

func primeNum(n int) bool {

	if n < 2 {
		return false
	}


	for i := 3; i < (n / i); i+=3 {
		if n % i == 0 {
			return false
		}
	}

	return true
	
}

func main() {
	start := time.Now()
	fmt.Println("Tes Bilangan Prima")
	fmt.Println("1000000007 ? ", primeNum(1000000007))
	elpased := time.Since(start)
	fmt.Printf("Process took %s\n", elpased)
}
