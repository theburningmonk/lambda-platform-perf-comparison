package main

import (
	"github.com/aws/aws-lambda-go/events"
	"github.com/yunspace/aws-lambda-go-faster/lambda"
)

func Handler(request *events.APIGatewayProxyRequest) (*events.APIGatewayProxyResponse, error) {
	return &events.APIGatewayProxyResponse{Body: "hello", StatusCode: 200}, nil
}

func main() {
	lambda.Start(Handler)
}
