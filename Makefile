start-all:
	docker-compose -f docker-compose.yml build
	docker-compose -f docker-compose.yml up

ssh:
	docker-compose -f docker-compose.yml exec api bash

rails-console:
	docker-compose -f docker-compose.yml exec api rails c