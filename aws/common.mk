BUILDER=docker-compose -f ../docker-compose.yml run --rm $(RUNTIME)
ifdef NATIVE
	SLS=serverless
else
	SLS=docker-compose -f ../docker-compose.yml run --rm -w /opt/app/$(RUNTIME) sls
endif

# Builder
all: clean package deploy

clean: .env
	$(BUILDER) make _clean

# Serverless
package: .env build
	$(SLS) package

deploy: .env
	$(SLS) deploy --region ap-northeast-1

remove: .env
	$(SLS) remove

# Helpers
.env:
	cp ../.env.template .env