package main

import "fmt"

func primeNum(n int) bool {

	if n < 2 {
		return false
	}

	for i := 2; i < n; i++ {
		if n % i == 0 {
			return false
		}
	}

	return true
	
}

func main() {
	fmt.Println("Tes Bilangan Prima")
	fmt.Println("11 ? ", primeNum(11))
	fmt.Println("13 ? ", primeNum(13))
	fmt.Println("17 ? ", primeNum(17))
	fmt.Println("20 ? ", primeNum(20))
	fmt.Println("35 ? ", primeNum(35))
}
