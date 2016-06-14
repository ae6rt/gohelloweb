build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build

image:
	docker build -t ae6rt/gohelloweb:latest .

push:
	docker push ae6rt/gohelloweb:latest 

.PHONY: build package push
