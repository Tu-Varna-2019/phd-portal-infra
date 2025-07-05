###############
# TARGETS
###############

.PHONY: help
help:  ## help target to show available commands with information
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) |  awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: port-fwd-client
port-forward-client: ## Port forward to a client
	 kubectl port-forward pod/tuvarna-client-7795d89786-2fnlv -n tuvarna 3000:3000

.PHONY: port-fwd-server
port-forward-server:## Port forward to a server
	 kubectl port-forward pod/tuvarna-client-7795d89786-2fnlv -n tuvarna 8080:8080

.PHONY: clear-cache
clear-cache: ## Clear cache
	docker exec -it kind-control-plane crictl rmi ghcr.io/tu-varna-2019/phd-portal-server:release-1.0.0
	docker exec -it kind-control-plane crictl rmi ghcr.io/tu-varna-2019/phd-portal-client:release-1.0.0

.PHONY: exec-pod
exec-pod: ## Enter the pod env
	kubectl -n tuvarna exec -it tuvarna-client-5c9c9478b7-q52vr -- /bin/sh

run: ## Run containers
	kubectl apply -f infra/.secrets.yaml
	kubectl apply -f infra/config-map.yaml
	kubectl apply -f infra/config-map.yaml
	kubectl apply -f infra/namespace.yaml
	kubectl apply -f infra/namespace.yaml
	kubectl apply -f infra/service.yaml
	kubectl apply -f infra/postgre/volume_claim.yaml
	kubectl apply -f infra/postgre/deployment.yaml
	kubectl apply -f infra/client/deployment.yaml
	kubectl apply -f infra/server/deployment.yaml
