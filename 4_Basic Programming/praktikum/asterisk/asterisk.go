package main

import "fmt"

func asterisk(n int) {
	for i := n; i >= 1; i-- {
		for k := i; k > 0; k-- {
			fmt.Print(" ")
		}
		for k := i; k < n; k++ {
			fmt.Print("* ")
		}
		fmt.Println("*")
	}
}

func main() {
	fmt.Println("Asterisk Play")
	asterisk(5)
}
