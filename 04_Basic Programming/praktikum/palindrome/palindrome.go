package main

import "fmt"


func palindrome(s string) bool {
	var dump_str []byte

	for i := len(s) - 1; i >= 0; i-- {
		dump_str = append(dump_str, s[i])
	}

	if string(dump_str[:]) != s {
		return false
	}

	return true
}

func main() {
	fmt.Println("Palindrome")
	fmt.Println("civic ?", palindrome("civic"))
	fmt.Println("katak ?", palindrome("katak"))
	fmt.Println("kasur rusak ?", palindrome("kasur rusak"))
	fmt.Println("mistar ?", palindrome("mistar"))
	fmt.Println("lion ?", palindrome("lion"))
}
