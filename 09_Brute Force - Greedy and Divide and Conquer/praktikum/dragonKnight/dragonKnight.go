package main

import "fmt"

func dragonKnight(dragonHead, knightHeight []int) {
	result := 0
	knightA := map[int]int{}

	for _, d := range dragonHead {
		knightH := 0
		for _, h := range knightHeight {
			if d <= h {
				knightH = h
			}
		}
		knightA[d] = knightH
	}

	for _, v := range dragonHead {
		if (knightA[v] - v) < 0 {
			result -= v
		} else if v != 0 {
			result += knightA[v]
		}
	}

	fmt.Println("Dragon Head", dragonHead)
	fmt.Println("Knight Height", knightHeight)
	if result <= 0 {
		fmt.Println("Knight Fall")
	} else {
		fmt.Println("Output", result)
	}
}

func main() {
	fmt.Println("Dragon of Loowater")
	dragonHead := []int{7, 2}
	knightHeight := []int{4, 3, 1, 2}
	dragonKnight(dragonHead, knightHeight)
}
