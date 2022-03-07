package main

import "fmt"

func main() {
	var studentScore int = 80
	var grade string

	switch {
		case studentScore >= 80:
			grade = "A"
			break
		case studentScore >= 65:
			grade = "B"
			break
		case studentScore >= 50:
			grade = "C"
			break
		case studentScore >= 35:
			grade = "D"
			break
		case studentScore >= 0:
			grade = "E"
	}

	fmt.Printf("Nilai %d, Grade %s\n", studentScore, grade)

}
