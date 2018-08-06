FROM ae6rt/centos:7

LABEL source https://github.com/ae6rt/gohelloweb

COPY gohelloweb /
CMD ["/gohelloweb"]
