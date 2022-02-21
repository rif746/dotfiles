package main

import (
	"fmt"
	"time"
)

func merge(arr []int) []int {
	
	keys := make(map[int]bool)
	del_list := []int{}
	for _, entry := range arr {
		if !keys[entry] {
			keys[entry] = true
		} else {
			del_list = append(del_list, entry)
		}
	}
	for _, v := range del_list {
		arr = findAndDelete(arr, v)
	}

	return arr
}

func findAndDelete(arr []int, item int) []int {
	var list []int
	for _, v := range arr {
		if v != item {
			list = append(list, v)
		}
	}
	return list
}

func main() {
	start := time.Now()
	fmt.Println("Muncul Sekali")

	arr := []int{1, 2, 3, 1, 4, 2, 5, 2, 7, 9, 3, 2}
	fmt.Println("Array : ", arr)
	fmt.Println("Muncul Sekali : ", merge(arr))
	elpased := time.Since(start)
	fmt.Println("Process took ", elpased)
}
