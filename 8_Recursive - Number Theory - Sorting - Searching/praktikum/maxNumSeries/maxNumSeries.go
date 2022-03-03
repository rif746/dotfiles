package main

import "fmt"

func maxSequence(arr []int) int {
	sum, maxSum := 0, 0
	min, start_index := 0, 0
	max, stop_index := 0, 0

	for i, v := range arr {
		sum += v
		if min > sum {
			min = sum
			start_index = i
		}
		if sum > max || sum == max{
			max = sum
			stop_index = i
		}
	}

	for i, v := range arr {
		if i > start_index && i <= stop_index {
			maxSum += v
		}
	}

	return maxSum
}

func main() {
	fmt.Println("Total Maximum Deret Bilangan")
	arr1 := []int{-2, 1, -3, 4, -1, 2, 1, -5, 4}
	max1 := maxSequence(arr1)
	arr2 := []int{-2, -5, 6, -2, -3, 1, 5, -6}
	max2 := maxSequence(arr2)
	arr3 := []int{-2, -3, 4, -1, -2, 1, 5, -3}
	max3 := maxSequence(arr3)
	arr4 := []int{-2, -5, 6, -2, -3, 1, 6, -6}
	max4 := maxSequence(arr4)
	fmt.Println(arr1, max1)
	fmt.Println(arr2, max2)
	fmt.Println(arr3, max3)
	fmt.Println(arr4, max4)
}
