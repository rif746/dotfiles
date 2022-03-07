package main

import "fmt"

func cetakTabelPerkalian(n int) {
	for i := 1; i <= n; i++ {
		for k := 1; k <= n; k++ {
			fmt.Print(" ",i*k)
		}
		fmt.Println("")
	}
}

func main() {
	fmt.Println("Tabel Perkalian")
	cetakTabelPerkalian(9)

}
