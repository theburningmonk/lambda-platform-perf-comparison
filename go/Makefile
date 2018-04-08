build:
	go get -u github.com/aws/aws-lambda-go/lambda
	go get -u github.com/aws/aws-lambda-go/events
	env GOOS=linux go build -ldflags='-w -s' -o bin/main

compress:
	upx --brute bin/main