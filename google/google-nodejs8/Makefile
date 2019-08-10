RUNTIME=google-nodejs8

include ../common.mk

ifdef NATIVE
	NODE=serverless
else
	NPM=docker-compose -f ../docker-compose.yml run --rm google-nodejs npm
endif

# Internals
clean:
	rm -rf .serverless bin node_modules

build:
	$(NPM) install --ignore-scripts