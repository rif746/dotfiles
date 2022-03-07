package main

import "fmt"

type Pair struct {
	name string
	count int
}

func mostAppear(list []string) (p []Pair) {
	pair := make(map[string]int)
	for _, v := range list {
		pair[v] += 1
	}

	for i, v := range pair {
		p = append(p, Pair{i, v})
	}

	return
}

func main() {
	fmt.Println("Most Appear Item")
	fmt.Println(mostAppear([]string{"A", "A", "B", "C", "B", "C", "C", "A"}))
}
