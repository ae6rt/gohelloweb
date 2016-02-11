FROM alpine
RUN apk update && apk upgrade && apk add curl
ADD server-linux /
CMD ["/server-linux"]
