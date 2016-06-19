FROM ae6rt/alpine

LABEL source https://github.com/ae6rt/gohelloweb

RUN apk update && apk upgrade && apk add curl
ADD gohelloweb /
CMD ["/gohelloweb"]
