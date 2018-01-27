package main

import (
	"github.com/eawsy/aws-lambda-go-core/service/lambda/runtime"
	"github.com/eawsy/aws-lambda-go-event/service/lambda/runtime/event/apigatewayproxyevt"
	"github.com/yunspace/serverless-golang/aws/event/apigateway"
)

func Get(evt *apigatewayproxyevt.Event, _ *runtime.Context) (interface{}, error) {
	r := apigateway.NewAPIGatewayResponse(200)
	r.Body = "hello"
	return r, nil
}
