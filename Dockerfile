FROM alpine:3.4

LABEL source https://github.com/ae6rt/gohelloweb

RUN apk update && apk upgrade && apk add curl
ADD gohelloweb /
CMD ["/gohelloweb"]
