package main

import (
	"errors"
	"fmt"
)

func GenerateError() error {
	return errors.New("error")
}

func UnhandledError() {
	fmt.Println("this method do not handle error")
	GenerateError()
}

func UnhandledError2() {
	fmt.Println("this method do not handle error")
	GenerateError()
}
