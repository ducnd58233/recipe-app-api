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

unit-tests:
	docker-compose run --rm app sh -c "python manage.py test"