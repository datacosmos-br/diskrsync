# Makefile para o projeto diskrsync

.PHONY: all build test update-deps update-go clean

# Nome do binário de saída
BINARY_NAME=diskrsync

# Versão do Go para ser atualizada
GO_VERSION=1.22

all: build

# Constrói o projeto
build:
	@echo "Building $(BINARY_NAME)..."
	@go build -o $(BINARY_NAME) ./diskrsync

# Executa os testes
test:
	@echo "Running tests..."
	@go test ./...

# Atualiza todas as dependências para suas últimas versões compatíveis
update-deps:
	@echo "Updating dependencies..."
	@go get -u ./...

# Força a atualização da versão do Go no go.mod
update-go:
	@echo "Updating Go version in go.mod to $(GO_VERSION)..."
	@sed -i 's/^go .*/go $(GO_VERSION)/' go.mod
	@go mod tidy

# Limpa o projeto
clean:
	@echo "Cleaning up..."
	@rm -f $(BINARY_NAME)
	@go clean

