package main

import "fmt"

func moneyCoins(n int) []int {
	
	fract := []int{1, 10, 20, 50, 100, 200, 500, 1000, 2000, 5000, 10000}
	money := []int{}

	for i:= len(fract)-1; i >= 0; i-- {
		if n >= fract[i] {
			for n >= fract[i] {
				money = append(money, fract[i])
				n -= fract[i]
			}
		} else if n == 0 {
			return money
		}
	}

	return money
}

func main() {
	fmt.Println("Money Coins")
	fmt.Println("523", moneyCoins(523))
	fmt.Println("123", moneyCoins(123))
	fmt.Println("7752", moneyCoins(7752))
	fmt.Println("16600", moneyCoins(16600))
}
