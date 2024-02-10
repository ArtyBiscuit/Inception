COMPOSE_FILE = srcs/docker-compose.yml
BUILD_FLAG = .build
DATA_PATH = /home/arforgea/data

all: build

up: $(BUILD_FLAG)
	docker compose -f $(COMPOSE_FILE) up -d

down:
	docker compose -f $(COMPOSE_FILE) down

build: $(BUILD_FLAG)

$(BUILD_FLAG):
	touch $(BUILD_FLAG) 
	docker compose -f $(COMPOSE_FILE) build

restart: down up

clean:
	docker compose -f $(COMPOSE_FILE) down -v --rmi all
	rm -f $(BUILD_FLAG)
	docker system prune --volumes -af
	rm -rf $(DATA_PATH)/*/*

.PHONY: up down restart build clean