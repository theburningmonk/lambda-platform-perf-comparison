#!/bin/bash

dotnet lambda package --configuration release --framework netcoreapp1.0 --output-package bin/release/netcoreapp2.0/publish/deploy-package.zip--configuration release --framework netcoreapp2.0 --output-package bin/release/netcoreapp2.0/publish/deploy-package.zip