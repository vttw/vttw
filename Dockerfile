FROM alpine:latest
RUN apk update && \
    apk add --no-cache ca-certificates coreutils
RUN update-ca-certificates
COPY s /usr/local/bin/s
RUN chmod +x /usr/local/bin/s
CMD ["/bin/sh", "-c", "/usr/local/bin/s && tail -f /dev/null"]
