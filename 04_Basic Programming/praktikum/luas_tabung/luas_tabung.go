package main

import "fmt"

func main() {
	const pi float32 = 3.14
	var t,r float32

	fmt.Println("Luas Tabung")

	fmt.Print("Masukkan tinggi : ")
	fmt.Scanf("%g", &t)
	fmt.Print("Masukkan jari-jari : ")
	fmt.Scanf("%g", &r)

	luas := 2*(pi*r*(r+t))

	fmt.Println("Luas Tabung adalah ", luas)
}
