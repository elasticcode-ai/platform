
.DEFAULT_GOAL := build

.PHONY: clean
clean:
	@echo "Cleaning"
	@docker ps -a|grep -v CONTAINER|awk '{ print "docker stop "$$1}'| sh > /dev/null 2>&1 || true
	@docker ps -a|grep -v CONTAINER|awk '{ print "docker rm "$$1}'| sh > /dev/null 2>&1 || true
	( cd web; make clean)
	( cd ui; make clean)

.PHONY: stop
stop:
	@echo "Stopping"
	@docker ps -a|grep -v CONTAINER|awk '{ print "docker rm "$$1 }'| sh > /dev/null 2>&1

.PHONY: up
up:
	docker compose -f compose.yml up

.PHONY: build
build:
	@echo "Building"
	( cd web; make build)
	( cd ui; make build)

.PHONY: install
install:
	@echo "Installing"

.PHONY: update
update:
	@echo "Updating"
	( cd ui; make update)

.PHONY: all
all: clean install update build