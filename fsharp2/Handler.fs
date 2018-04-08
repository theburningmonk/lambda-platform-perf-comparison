namespace AwsDotnetFsharp

open Amazon.Lambda.Core
open Amazon.Lambda.APIGatewayEvents

[<assembly:LambdaSerializer(typeof<Amazon.Lambda.Serialization.Json.JsonSerializer>)>]
do ()
    
module Handler =
    let hello(request:APIGatewayProxyRequest, _:ILambdaContext): APIGatewayProxyResponse = {
        StatusCode = 200
        Body = "hello"
    }