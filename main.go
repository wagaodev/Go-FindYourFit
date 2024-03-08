package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Println("This project has a proposol to create new opportunities.")

	err := http.ListenAndServe(":3000", nil)
	if err != nil {
		panic(err)
	}
}
