.PHONY: help
.DEFAULT_GOAL := help

docker-build: ## preconfigure
	docker build . -t products-example

installdb: ## installdb
	helm3 upgrade --install  db stable/postgresql --set postgresqlPassword=nonuseinproduction
deploy-app-kube:: ## preconfigure
	-kubectl create ns products-example
	helm3 upgrade --install products-example ./charts/springboot --namespace products-example -f chart-values.yaml

set-context: ## set-context
	kubectl config set-context --current --namespace=products-example

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
				