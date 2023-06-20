docker-build:
	docker build .

compose-build:
	docker-compose build

compose-create-django:
	docker-compose run --rm app sh -c "django-admin startproject app ."

compose-build-up:
	docker compose up --build

compose-up:
	docker compose up

linting:
	docker-compose run --rm app sh -c "flake8"

unit-tests:
	docker-compose run --rm app sh -c "python manage.py test"

template-app:
	docker-compose run --rm app sh -c "python manage.py startapp core"