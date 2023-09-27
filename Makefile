
.DEFAULT_GOAL := all

.PHONY: clean
clean:
	@echo "Cleaning"

.PHONY: install
install:
	@echo "Installing"

.PHONY: update
update:
	git submodule foreach --recursive git pull
