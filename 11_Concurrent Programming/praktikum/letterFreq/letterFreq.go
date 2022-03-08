package main

import (
	"fmt"
	"strings"
)

func letterFreq(text chan string) {
	charCount := make(map[string]int)
	txt := strings.ToLower(<- text)

	for _, v := range txt {
		if string(v) != " " && string(v) != "." && string(v) != "," {
			charCount[string(v)]++
		}
	}
	for i, v := range charCount {
		fmt.Println(i, " -> ", v)
	}
}

func main() {
	fmt.Println("Letter Frequency")
	text := make(chan string)

	go letterFreq(text)

	text <- "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
}
