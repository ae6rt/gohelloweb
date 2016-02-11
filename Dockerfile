FROM scratch
ADD server-linux /
ENTRYPOINT ["/server-linux"]
