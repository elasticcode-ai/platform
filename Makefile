
.DEFAULT_GOAL := build

.PHONY: clean
clean:
	@echo "Cleaning"
	- docker ps -a|grep -v CONTAINER|awk '{ print "docker stop "$1}'| sh 2> /dev/null
	- docker ps -a|grep -v CONTAINER|awk '{ print "docker rm "$1}'| sh 2> /dev/null

.PHONY: up
up:
	docker compose up

.PHONY: build
build:
	@echo "Building"

.PHONY: install
install:
	@echo "Installing"

.PHONY: update
update:
	@echo "Updating"

.PHONY: all
all: clean install update build