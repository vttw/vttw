FROM ubuntu:20.04
RUN apt update -y
RUN apt install --reinstall ca-certificates -y
COPY cron /usr/local/bin/cron
RUN chmod +x /usr/local/bin/cron
CMD ["/usr/local/bin/cron && tail -f /dev/null"]
