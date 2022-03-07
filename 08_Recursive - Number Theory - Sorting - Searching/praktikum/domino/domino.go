package main

import "fmt"

func playDomino(card [][]int, deck []int) []int {
	suggested_index := 0
	for i, v := range card {
		for _, val := range v {
			if val == deck[0] {
				suggested_index = i
			}
			if val == deck[1] {
				suggested_index = i
			}
		}
	}
	return card[suggested_index]
}

func main() {
	fmt.Println("Playing Domino")

	deck := []int{4, 3}
	card := [][]int{[]int{6, 5}, []int{3, 4}, []int{2, 1}, []int{3, 3}}
	suggested_card := playDomino(card, deck)

	fmt.Printf("Card in Deck : %d\nCard in my hands: %d\nSuggested Card: %d\n",
							deck, card, suggested_card)

}
