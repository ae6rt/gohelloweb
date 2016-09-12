FROM ae6rt/alpine:3.4

LABEL source https://github.com/ae6rt/gohelloweb

COPY gohelloweb /
CMD ["/gohelloweb"]
