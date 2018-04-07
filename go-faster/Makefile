build:
	go get github.com/yunspace/aws-lambda-go-faster/lambda
	go get github.com/aws/aws-lambda-go/events
	env GOOS=linux go build -ldflags='-w -s' -o bin/main