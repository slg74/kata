package main

import (
	"fmt"
)

func main() {
	var a [10010]int

	for i := 2; i <= 10000; i++ {
		a[i] = 1
	}

	for i := 2; i <= 10000/2; i++ {
		for j := 2; j <= 10000/i; j++ {
			a[i*j] = 0
		}
	}

	total := 0
	for i := 2; i <= 10000; i++ {
		if a[i] == 1 {
			total += 1
			fmt.Printf(" %d ", i)
		}
	}

	if total == 1229 {
		fmt.Printf("\n OK   - total: %d", total)
	} else {
		fmt.Printf("\n FAIL - total: %d", total)
	}
}
