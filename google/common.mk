ifdef NATIVE
	SLS=serverless
else
	SLS=docker-compose -f ../docker-compose.yml run --rm -w /opt/app/$(RUNTIME) sls
endif

# Docker Entrypoint
package: .env build
	$(SLS) package

deploy: .env
	$(SLS) deploy --region asia-northeast1

remove: .env
	$(SLS) remove

# Helpers
.env:
	cp ../.env.template .env

artillery:
	artillery run artillery.yml -o results.json