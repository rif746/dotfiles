package main

import "fmt"

func rectPrime(high, wide, start int) {
	next := start
	num := 0
	for i := 1; i <= wide; i++ {
		for j := 1; j <= high; j++ {
			next = nextPrime(next)
			fmt.Print(next, " ")
			num += next
		}
		fmt.Println("")
	}
	fmt.Println(num)
}

func nextPrime(n int) int {
	prime := 2
	num := 1
	for i := 3; i < n*10; i++ {
		if num == primeNth(n)+1 {
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
	return 0
}

func primeNth(n int) int {
	prime := 2
	num := 1
	for i := 3; i < n*10; i++ {
		if prime == n {
			return num
		}

		if (i == 3 || i == 5 || i == 7) {
			num += 1
			prime = i
		} else if (i % 3 != 0 && i % 5 != 0 && i % 2 != 0 && i % 7 != 0 && i % 9 != 0) {
			num += 1
			prime = i
		}
	}
	return 0
}


func main() {
	fmt.Println("Prima segi empat")
	rectPrime(2, 3, 13)
}
