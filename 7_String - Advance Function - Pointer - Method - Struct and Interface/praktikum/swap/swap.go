package main

import "fmt"

func swap(a, b *int) {
	dump_a := *a
	dump_b := *b
	*a = dump_b
	*b = dump_a
}

func main() {
	a := 10
	b := 20

	fmt.Println("Pointer Swap")
	fmt.Printf("Before Swapped\na = %d\nb = %d\n", a, b)
	swap(&a, &b)
	fmt.Printf("After Swapped\na = %d\nb = %d\n", a, b)
}
