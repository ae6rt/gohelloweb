.PHONY: build
build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build

.PHONY: image
image: build
	docker build -t ae6rt/gohelloweb:latest .

.PHONY: push
push: image
	docker push ae6rt/gohelloweb:latest 
