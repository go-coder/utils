package main

import (
	"errors"
	"fmt"
	"os"

	"github.com/go-coder/utils/pkg/core"
)

func main() {
	core.MustOK(nil, "no error")
	_, err := os.Stdout.Write([]byte("write to stdout\n"))
	core.MustOK(err, "> stdout")
	err = errors.New("err, err, my error ...")
	core.MustOK(err, "error happens..")
	fmt.Println("go to end normally")
}
