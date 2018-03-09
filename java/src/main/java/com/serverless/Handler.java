package com.serverless;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

import java.util.Map;

public class Handler implements RequestHandler<Map<String, Object>, Response> {

    @Override
    public Response handleRequest(Map<String, Object> input, Context context) {
        return new Response("hello", 200);
    }
}