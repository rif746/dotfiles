package main

import "fmt"

func binarySearch(arr []int, x int) (result int){
	left := 1
	right := len(arr)

	for (left <= right && result == 0) {
		center := (left + right) / 2
		if arr[center] > x {
			right -= 1
		} else if arr[center] < x {
			left += 1
		} else if arr[center] == x {
			result = center
		}
	}
	return
}

func main() {
	fmt.Println("Binary Search")
	arr := []int{1, 1, 3, 5, 7, 9, 13}
	x := 3
	binary := binarySearch(arr, 3)

	fmt.Printf("dalam array %v\nangka %d ditemukan pada index %d\n", arr, x, binary)

}
