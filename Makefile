
.DEFAULT_GOAL := all

.PHONY: clean
clean:
	@echo "Cleaning"

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