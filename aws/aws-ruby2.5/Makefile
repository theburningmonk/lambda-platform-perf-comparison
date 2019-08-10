RUNTIME=aws-ruby2.5

include ../common.mk

# Internals
_clean:
	rm -rf .serverless

_test:
	ruby -I test test/handler_test.rb

build:
	@echo "nothing to build"