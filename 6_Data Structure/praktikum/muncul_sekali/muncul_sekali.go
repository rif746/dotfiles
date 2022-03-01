package main

import (
	"fmt"
)

func merge(arr string) []string {
	keys := make(map[string]int)
	list := []string{}

	for _, entry := range arr {
		keys[string(entry)] += 1
	}

	for i, entry := range keys {
		if entry == 1 {
			list = append(list, i)
		}
	}
	
	return list
}

func main() {
	fmt.Println("Muncul Sekali")
	arr := "12314527932"
	merge(arr)
	fmt.Println("Array : ", arr)
	fmt.Println("Muncul Sekali : ", merge(arr))
}
