.PHONY: dev bash install serverless

dev:
	docker-compose run --service-ports dev

bash:
	docker-compose run dev bash

install:
	docker-compose run dev bash -c 'npm install && npm update && chown -R 1000:1000 ./'

serverless:
	docker-compose run dev bash -c 'node_modules/.bin/serverless $(cmd) && chown -R 1000:1000 ./'
