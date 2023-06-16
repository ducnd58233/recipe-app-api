docker-build:
	docker build .

docker-compose-build:
	docker-compose build

docker-compose-linting:
	docker-compose run --rm app sh -c "flake8"

docker-compose-create-django:
	docker-compose run --rm app sh -c "django-admin startproject app ."

docker-up:
	docker compose up