all: build test

.PHONY: fmt
fmt: 
	@echo "formating go files ..."
	@go fmt ./pkg/... ./internal/...

.PHONY: vet
vet:
	@echo "vertifying go files ..."
	@go vet ./pkg/... ./internal/...

.PHONY: lint
lint:
	@echo "linting go files ..."
	@golangci-lint run ./pkg/... ./internal/...

.PHONY: build
build: fmt vet lint
	@echo "building go files ..."
	@go build -o ./bin/assert_example ./internal/cmd/assert_example/main.go

.PHONY: test
test:

.PHONY: clean
clean:
	@echo "cleaning generated files ..."
	@rm -rf ./bin/
	@rm -rf ./gen/