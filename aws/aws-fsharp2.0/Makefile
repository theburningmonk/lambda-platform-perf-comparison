RUNTIME=aws-fsharp2.0

include ../common.mk

_clean:
	rm -rf .serverless bin obj

build:
	$(BUILDER) make _build
	
_build:
	 dotnet restore && \
		dotnet lambda package -c release -f netcoreapp2.0 --o bin/release/netcoreapp2.0/publish/deploy-package.zip
