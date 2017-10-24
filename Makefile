default: build

build:
	docker-compose build

up:
	docker-compose up

gpush:
	docker push devishian/manager.io

clean:
	docker-compose down

