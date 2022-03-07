package main

import "fmt"

func primeX(n int) int {
	num := 1
	prime := 2

	for i := 3; i < n*10; i+=1 {
		if num == n {
			return prime
		}

		if (i == 3 || i == 5 || i == 7) {
			num += 1
			prime = i
		} else if (i % 3 != 0 && i % 5 != 0 && i % 2 != 0 && i % 7 != 0 && i % 9 != 0) {
			num += 1
			prime = i
		}
	}

	return prime
}

func main() {
	fmt.Println("Prime X")
	fmt.Println("Bilangan Prima ke-25 adalah ", primeX(25))
	fmt.Println("Bilangan Prima ke-5 adalah ", primeX(5))
	fmt.Println("Bilangan Prima ke-15 adalah ", primeX(15))
	fmt.Println("Bilangan Prima ke-31 adalah ", primeX(31))
	fmt.Println("Bilangan Prima ke-19 adalah ", primeX(19))
}
