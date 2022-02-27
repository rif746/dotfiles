package main

import "fmt"

func merge(arr1, arr2 []string) []string {
	var arr []string = append(arr1, arr2...)
	
	keys := make(map[string]bool)
	list := []string{}
	for _, entry := range arr {
		if !keys[entry] {
			keys[entry] = true
			list = append(list, entry)
		}
	}
	
	return list
}

func main() {
	fmt.Println("Array Merge")

	arr1 := []string{"kazuya", "rikka", "hazama"}
	arr2 := []string{"kazuma", "kazuya"}
	fmt.Println("Array 1 : ", arr1)
	fmt.Println("Array 2 : ", arr2)
	fmt.Println("Merged Array : ", merge(arr1, arr2))
}
