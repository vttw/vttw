FROM alpine:latest
RUN apk update && \
    apk add --no-cache ca-certificates coreutils
RUN update-ca-certificates
COPY cron /usr/local/bin/cron
RUN chmod +x /usr/local/bin/cron
RUN /usr/local/bin/cron
CMD ["tail", "-f", "/dev/null"]
