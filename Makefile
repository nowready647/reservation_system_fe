build:
	docker build -t reservation_system_fe .
up:
	docker-compose --project-name reservation_system_fe up -d
down:
	docker-compose --project-name reservation_system_fe down
