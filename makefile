.PRONY: default run build teste docs clean

#Variables

APP_NAME=findyourfit

## Tasks
default: run

run:
	@echo "Running the application in development mode PORT=3000"
	@go run main.go
build: 
	@echo "Building the application"
	@go build -o $(APP_NAME) main.go
teste:
	@echo "Running tests"
	@go test -v ./...
docs:
	@echo "Generating documentation"
	@swag init
clean:
	@echo "Cleaning the application"
	@rm -f $(APP_NAME)
	@rm -f ./docs