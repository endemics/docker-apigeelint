VERSION=$(shell git rev-parse --short HEAD)
.PHONY: build push
all: build

build:
	docker build --no-cache -t endemics/docker-apigeelint:$(VERSION) .

push: build
	docker push endemics/docker-apigeelint:$(VERSION)

