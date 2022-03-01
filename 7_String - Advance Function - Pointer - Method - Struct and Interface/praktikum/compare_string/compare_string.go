package main

import (
	"fmt"
)

func compare(a, b string) string {
	str_a := []rune(a)
	str_b := []rune(b)
	var str string
	var length int

	if len(str_a) > len(str_b) {
		length = len(str_b)
	} else {
		length = len(str_a)
	}

	for i := 0; i < length; i++ {
		if str_b[i] == str_a[i] {
			str += string(str_a[i])
		}
	}

	return str
}

func main() {
	fmt.Println("Compare String")
	str1 := "Miguel"
	str2 := "Mig"
	compared := compare(str1, str2)
	fmt.Printf("String comparison between %s and %s is %s\n", str1, str2, compared)
}
