#!/bin/bash

dotnet restore
dotnet lambda package --configuration release --framework netcoreapp1.0 --output-package bin/release/netcoreapp1.0/publish/deploy-package.zip