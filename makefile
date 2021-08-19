up:
	- docker compose up -d

down:
	- docker compose down && docker-compose rm -f

run:
	- docker compose exec php sh

build:
	- cd symfony && yarn encore dev
