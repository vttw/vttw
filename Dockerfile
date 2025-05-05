FROM alpine:latest
COPY cron /usr/local/bin/cron
RUN chmod +x /usr/local/bin/cron
CMD ["/usr/local/bin/cron"]
