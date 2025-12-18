.PHONY: all build test lint clean

APPS := web-server worker
APP_DIR := apps

all: lint test build

build:
	@for app in $(APPS); do \
		echo "Building $$app..."; \
		go build -o $$app ./$(APP_DIR)/$$app; \
	done

test:
	@for app in $(APPS); do \
		echo "Testing $$app..."; \
		(cd $(APP_DIR)/$$app && go test -v ./...); \
	done

lint:
	@for app in $(APPS); do \
		echo "Linting $$app..."; \
		(cd $(APP_DIR)/$$app && go fmt ./...); \
		(cd $(APP_DIR)/$$app && go vet ./...); \
	done

clean:
	rm -f web-server worker
