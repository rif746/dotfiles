package main

import "fmt"

func caesar(offset int, input string) string {
	var str string

	for _, v := range input {
		s := v + rune(offset)
		if s <= 96 {
			s = 122 + rune(offset)
		} else if s > 122 {
			s = 97 + rune(offset) + (v - 123)
		}
		str += string(s)
	}

	return str
}

func main() {
	fmt.Println("Caesar String")

	str := "alterraacademy"
	offset := 1
	caeser := caesar(offset, str)

	fmt.Println("String ", str)
	fmt.Println("Offset ", offset)
	fmt.Println("Caesar ", caeser)
}
