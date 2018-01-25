namespace AwsDotnetFsharp

open Amazon.Lambda.Core

[<assembly:LambdaSerializer(typeof<Amazon.Lambda.Serialization.Json.JsonSerializer>)>]
do ()
    
module Handler =
    open System
    open System.IO
    open System.Text

    type Response = { statusCode : int; body : string }

    let hello(): Response = {
        statusCode = 200
        body = "hello"
    }