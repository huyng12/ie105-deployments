.PHONY: up down

up:
	docker-compose \
	-f mariadb/mariadb.yml \
	-f cms/cms.yml up --build --detach

down:
	docker-compose \
	-f mariadb/mariadb.yml \
	-f cms/cms.yml down
