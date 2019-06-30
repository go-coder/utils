package core

import (
	"fmt"
	"os"
)

func MustOK(err error, msg string) {
	if err != nil {
		fmt.Println("MustOK fails with message: ", msg)
		os.Exit(1)
	}
}
