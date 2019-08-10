RUNTIME=aws-csharp2.0

include ../common.mk

build:
	$(BUILDER) make _build

# Internals
_clean:
	rm -rf .serverless bin obj

_build:
	dotnet restore && \
		dotnet lambda package -c release -f netcoreapp2.0 --o bin/release/netcoreapp2.0/publish/deploy-package.zip