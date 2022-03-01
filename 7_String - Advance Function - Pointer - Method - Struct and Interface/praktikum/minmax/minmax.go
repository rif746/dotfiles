package main

import "fmt"

func getMinMax(number ...*int) (min, max int) {
	var num_min int
	var num_max int
	for _, v := range number {
		if num_min == 0 || num_min > *v {
			num_min = *v
		}
		if num_max == 0 || num_max < *v {
			num_max = *v
		}
	}
	return num_min, num_max
}

func main() {
	var a1, a2, a3, a4, a5, a6, min, max int

	fmt.Println("Min Max")
	fmt.Println("Masukkan Angka")
	fmt.Scanln(&a1)
	fmt.Scanln(&a2)
	fmt.Scanln(&a3)
	fmt.Scanln(&a4)
	fmt.Scanln(&a5)
	fmt.Scanln(&a6)

	min, max = getMinMax(&a1, &a2, &a3, &a4, &a5, &a6)

	fmt.Println("Nilai Min :", min)
	fmt.Println("Nilai Max :", max)
}
