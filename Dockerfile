FROM ae6rt/alpine:3.4

LABEL source https://github.com/ae6rt/gohelloweb

ADD gohelloweb /
CMD ["/gohelloweb"]
