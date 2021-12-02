.PHONY: up down

PROJECT_NAME = ie105_demo

up:
	COMPOSE_PROJECT_NAME=$(PROJECT_NAME) docker-compose \
	-f mariadb/mariadb.yml \
	-f cms/cms.yml up --build --detach

down:
	COMPOSE_PROJECT_NAME=$(PROJECT_NAME) docker-compose \
	-f mariadb/mariadb.yml \
	-f cms/cms.yml down
