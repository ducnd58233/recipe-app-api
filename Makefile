docker-build:
	docker build .

compose-build:
	docker-compose build

compose-linting:
	docker-compose run --rm app sh -c "flake8"

compose-create-django:
	docker-compose run --rm app sh -c "django-admin startproject app ."

compose-up:
	docker compose up

unit-tests:
	docker-compose run --rm app sh -c "python manage.py test"