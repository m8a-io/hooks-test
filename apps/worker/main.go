package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("Worker starting...")
	for {
		fmt.Println("Worker processing job...")
		time.Sleep(5 * time.Second)
	}
}
