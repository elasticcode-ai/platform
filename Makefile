
.DEFAULT_GOAL := all

.PHONY: clean
clean:
	@echo "Cleaning"

.PHONY: build
build:
	( cd ui; SOCKETIO=https://localhost quasar build )
	( cd cli; make build )

.PHONY: install
install:
	@echo "Installing"
	( cd cli; make install )

.PHONY: update
update:
	git submodule foreach --recursive git pull
	( cd ui; make update )
