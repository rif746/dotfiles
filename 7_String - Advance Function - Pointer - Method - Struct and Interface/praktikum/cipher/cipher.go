package main

import (
	"fmt"
	"strings"
)

type Student struct {
	name string
	nameEncode string
	score int
}

type Cipher interface {
	Encode() string
	Decode() string
}

func (s *Student) Encode() string {
	var nameEncode string
	
	for _, v := range strings.ToLower(s.name) {
		subs := 123-v
		nameEncode += string(96+subs)
	}

	return nameEncode
}

func (s *Student) Decode() string {
	var nameDecode string
	
	for _, v := range strings.ToLower(s.nameEncode) {
		subs := v-96
		nameDecode += string(123-subs)
	}

	return nameDecode
}

func main() {
	fmt.Println("Substitution Cipher")

	var menu int
	var s = Student{}
	var c Cipher = &s

	fmt.Printf("Menu\n==============\n")
	fmt.Printf("1. Encode\n2. Decode\nChoose Menu ? ")
	fmt.Scan(&menu)

	if(menu == 1) {
		fmt.Print("Input Student Name : ")
		fmt.Scan(&s.name)
		fmt.Printf("Encode of Student Name %s is %s\n", s.name, c.Encode())
	} else if (menu == 2) {
		fmt.Print("Input Student Name : ")
		fmt.Scan(&s.nameEncode)
		fmt.Printf("Decode of Student Name %s is %s\n", s.nameEncode, c.Decode())
	} else {
		fmt.Println("Wrong Code Menu")
	}
}
