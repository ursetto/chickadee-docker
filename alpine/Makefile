build: ## Build chickadee:alpine
	docker build -t chickadee:alpine .

run: ## Run chickadee:alpine container
	docker run -it --rm -v $$PWD/repo:/usr/local/share/chicken/chicken-doc:ro -p 8080:8080 chickadee:alpine

dev: ## Run chickadee:alpine in development with bash
	docker run -it --rm -v $$PWD/repo:/usr/local/share/chicken/chicken-doc:ro -v /Users/jim/scheme/chickadee:/usr/src/chickadee -p 8080:8080 chickadee:alpine bash

repo: ## Link repo
	ln -nsf /Users/jim/scheme/chicken-doc-admin/4 repo

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1;36m%-20s\033[0m %s\n", $$1, $$2}'
