package main

import "fmt"

func main() {
	var fact int

	fmt.Print("Masukkan Bilangan : ")
	fmt.Scanf("%d", &fact)
	
	fmt.Println("Faktorial dari ", fact)
	for i := 1; i <= fact; i++ {
		if fact % i == 0  {
			fmt.Println(i)
		}
	}

}
