.PHONY: help
.DEFAULT_LOCAL= help

DOCKER_COMPOSE=@docker-compose
DOCKER_COMPOSE_EXEC=$(DOCKER_COMPOSE) exec
PHP_DOCKER_COMPOSE_EXEC=$(DOCKER_COMPOSE_EXEC) php-fpm

#DOCKER
start: ## Start docker containers
	$(DOCKER_COMPOSE) up -d

down: ## Stop docker containers
	$(DOCKER_COMPOSE) down

php-fpm : ## Run bash in php-fpm container
	$(PHP_DOCKER_COMPOSE_EXEC) bash

stop80: ## Stop services running on port 80
	sudo service apache2 stop & sudo service nginx stop