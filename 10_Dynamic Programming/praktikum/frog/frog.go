package main

import "fmt"

func frog(jumps []int) int {
	max_val, min_val := 0, 0
	jumping := []int{}
	res := 0
	for _, v := range jumps {
		if max_val == 0 || max_val < v {
			max_val = v
		}
		if min_val == 0 || min_val > v {
			min_val = v
		}
	}

	for _, v := range jumps {
		if jumps[0] > min_val && v != min_val{
			jumping = append(jumping, v)
		} else if jumps[0] == min_val && v != max_val {
			jumping = append(jumping, v)
		}
	}

	for i, v := range jumping {
		if i < len(jumping)-1 {
			res += (v - jumping[i+1])
			if res < 0 {
				res = -1*res
			}
		}
	}

	return res
}

func main() {
	fmt.Println("Frog Jumps")
	jumps := []int{10, 30, 40, 20}
	jumps2 := []int{30, 10, 60, 10, 60, 50}
	fmt.Println(jumps, frog(jumps))
	fmt.Println(jumps2, frog(jumps2))
}

