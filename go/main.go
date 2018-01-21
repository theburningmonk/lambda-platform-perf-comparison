package main

import (
	"context"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

type Response struct {
	Message string `json:"message"`
}

func Handler(ctx context.Context, request *events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	return events.APIGatewayProxyResponse{Body: "hello", StatusCode: 200}, nil
}

func main() {
	lambda.Start(Handler)
}
