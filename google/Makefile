RUNTIMES ?= $(shell ls -d */)

.env:
	cp .env.template .env

all: clean build deploy
.PHONY: clean build deploy

cleanAll: .env
	@$(foreach RUNTIME, $(RUNTIMES),cd $(RUNTIME), make _clean;)

packageAll: .env
	@$(foreach RUNTIME, $(RUNTIMES),cd $(RUNTIME); make package);)

deployAll: .env
	@$(foreach RUNTIME, $(RUNTIMES),cd $(RUNTIME); make deploy);)

removeAll: .env
	@$(foreach RUNTIME, $(RUNTIMES),cd $(RUNTIME); make _remove);)
