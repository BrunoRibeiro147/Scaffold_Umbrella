DOCKER_COMPOSE := docker-compose

MAKE := make --no-print-directory


deps:
	mix deps.get

up: deps
	$(DOCKER_COMPOSE) -f docker-compose.yml up -d

down:
	$(DOCKER_COMPOSE) down
