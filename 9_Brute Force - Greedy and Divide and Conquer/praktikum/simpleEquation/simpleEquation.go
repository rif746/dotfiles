package main

import "fmt"

func simpleEquation(a, b, c int) {
	fmt.Println(a, b, c)
	x, y, z := 1, 1, 1

	if a > 1 && b > 1 && c > 1 {
		z = a / 2
		y = b / z
		x = c / (z*z)
	}
	
	A := x + y + z
	B := x * y * z
	C := (x * x) + (y * y) + (z * z)
	
	if A == a && B == b && C == c {
		fmt.Println(x, y, z)
	} else {
		fmt.Println("no solution")
	} 
	
}

func main() {
	fmt.Println("Simple Equation")
	simpleEquation(1, 2, 3)
	fmt.Println()
	simpleEquation(6, 6, 14)
}
