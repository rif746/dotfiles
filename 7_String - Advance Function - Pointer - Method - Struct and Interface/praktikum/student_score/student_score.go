package main

import "fmt"

type Student struct {
	name []string
	score []int
}

func (s *Student) Average() float64 {
	total := 0.0
	for _, v := range s.score {
		total += float64(v)
	}
	return total / float64(len(s.score))
}

func (s *Student) Min() (name string, score int) {
	var minName string
	var minScore int

	for i, v := range s.score {
		if minScore == 0 || minScore > v {
			minScore = v
			minName = s.name[i]
		}
	}

	return minName, minScore
}

func (s *Student) Max() (name string, score int) {
	var maxName string
	var maxScore int

	for i, v := range s.score {
		if maxScore == 0 || maxScore < v {
			maxScore = v
			maxName = s.name[i]
		}
	}

	return maxName, maxScore
}

func main() {
	fmt.Println("Student Score")
	
	a := Student{}
	for i := 1; i <= 6; i++ {
		var name string
		var score int
		fmt.Printf("Input %d Student Name : ", i)
		fmt.Scan(&name)
		fmt.Printf("Input %d Student Score : ", i)
		fmt.Scan(&score)
		a.name = append(a.name, name)
		a.score = append(a.score, score)
	}

	fmt.Println("Score Average is ", a.Average())
	maxName, maxScore := a.Max()
	minName, minScore := a.Min()

	fmt.Printf("Maximum Student Score is %s (%d)\n", maxName, maxScore)
	fmt.Printf("Minimum Student Score is %s (%d)\n", minName, minScore)
}
