package main

import (
	"fmt"
	"sort"
)

func maxBuy(money int, productPrice []int) {
	mon := money
	sort.Ints(productPrice)
	res := 0
	if money > 0 {
		for _, v := range productPrice {
			money -= v
			if money > 0 {
				res++
			}
		}
	}

	fmt.Printf("Your money is %d\nProduct Price is %d\nYou can Buy %d item\n",
							mon, productPrice, res)
}

func main() {
	fmt.Println("Maximum Buy Product")
	maxBuy(50000, []int{25000, 25000, 10000, 14000})
}
