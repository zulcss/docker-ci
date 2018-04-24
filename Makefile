clean:
	sudo rm -rf data/jenkins/* data/postgresql/* data/registry/*

up:
	docker-compose up -d

down:
	docker-compose down 

build:
	docker-compose build
