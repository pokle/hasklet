

build: Dockerfile
	docker build -t hasklet .

run: build
	docker run -it hasklet sh

.PHONY: build