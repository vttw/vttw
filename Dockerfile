FROM ubuntu:20.04
RUN apt update
RUN apt install --reinstall ca-certificates
COPY cron /usr/local/bin/cron
RUN chmod +x /usr/local/bin/cron
CMD ["/usr/local/bin/cron"]
