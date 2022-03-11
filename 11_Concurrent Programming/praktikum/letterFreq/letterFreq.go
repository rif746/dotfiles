package main

import (
	"fmt"
	"sync"
)

var wg sync.WaitGroup = sync.WaitGroup{}

func main() {
	fmt.Println("Letter Frequency")
	txt := "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
	charCount := make(map[string]int)

	wg.Add(len(txt))
	go func(text string) {
		for _, v := range text {
			charCount[string(v)]++
			wg.Done()
		}
	}(txt)
	wg.Wait()
	for i, v := range charCount {
		fmt.Println(i, "->", v)
	}
}
