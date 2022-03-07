package main

import "fmt"

func findMinMax(arr []int) string {
	max, min := 0, 0
	max_val, min_val := 0, 0
	for i, v := range arr {
		if max_val == 0 || max_val < v {
			max_val = v
			max = i
		}
		if min_val == 0 || min_val > v {
			min_val = v
			min = i
		}

	}

	str := fmt.Sprintf("\nmin: %d, index: %d\nmax: %d, index: %d", min_val, min, max_val, max)
	return str
}

func main() {
	fmt.Println("Find Min Max")
	arr1 := []int{5, 7, 4, -2, -1, 8}
	fmt.Println(arr1, findMinMax(arr1))
}
