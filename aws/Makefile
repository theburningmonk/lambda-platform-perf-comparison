RUNTIMES ?= $(shell ls -d */)

.env:
	cp .env.template .env

all: .env
	@$(foreach RUNTIME, $(RUNTIMES),cd $(RUNTIME) && make && cd ..;)

packageAll: .env
	@$(foreach RUNTIME, $(RUNTIMES),cd $(RUNTIME) && make package && cd ..;)

deployAll: .env
	@$(foreach RUNTIME, $(RUNTIMES),cd $(RUNTIME); make deploy && cd ..;)

removeAll: .env
	@$(foreach RUNTIME, $(RUNTIMES),cd $(RUNTIME); make remove && cd ..;)

resetDB: .env
	@$(foreach RUNTIME, $(RUNTIMES), $(call resetDynamo, $(RUNTIME)) )

define resetDynamo
	echo "deleting items in $(RUNTIME)"
	aws dynamodb scan \
		--region $(AWS_REGION) --table-name $(subst /,,$(1)) --attributes-to-get "id" --query "Items[].id.S" --output text | tr "\t" "\n" | \
		xargs -t -I keyvalue aws dynamodb delete-item --table-name $TABLE_NAME --key '{"id": {"S": "keyvalue"}}'
endef

