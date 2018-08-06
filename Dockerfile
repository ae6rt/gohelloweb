FROM ae6rt/centos:7

LABEL source https://github.com/ae6rt/gohelloweb

RUN yum install -y net-tools

COPY gohelloweb /
CMD ["/gohelloweb"]
