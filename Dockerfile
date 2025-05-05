FROM alpine:latest
RUN apk update && \
    apk add --no-cache ca-certificates coreutils
RUN update-ca-certificates
COPY cron /usr/local/bin/cron
RUN chmod +x /usr/local/bin/cron
CMD ["/usr/local/bin/cron && tail -f /dev/null"]
