package main

import (
	"fmt"
	"strconv"
	"time"
)

func merge(num string) []int {
	
	number, _ := strconv.Atoi(num)

	arr := splitDigit(number)

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

func splitDigit(num int) []int {
	var number []int
	for num != 0 {
		number = append(number, num % 10)
		num /= 10
	}
	return number
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
	arr := "12314527932"
	fmt.Println("Array : ", arr)
	fmt.Println("Muncul Sekali : ", merge(arr))
	elpased := time.Since(start)
	fmt.Println("Process took ", elpased)
}
