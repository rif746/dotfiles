package main

import "fmt"

func pair_sum(arr []int, target int) []int {
	left := 0
	right := len(arr)-1

	for left < right {
		currSum := arr[left] + arr[right]
		if currSum == target {
			return []int{left, right}
		} else if currSum > target {
			right--
		} else {
			left++
		}
	}

	return []int{left, right}
}

func main() {
	fmt.Println("Pair Sum")
	
	arr := []int{2, 5, 9, 11}
	target := 11
	fmt.Println("Given Array : ", arr)
	fmt.Println("Target : ", target)

	pair := pair_sum(arr, target)
	fmt.Println("Pair Sum : ", pair)
}
