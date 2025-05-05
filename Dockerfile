FROM ubuntu:20.04
RUN apt update -y
RUN apt install -y --reinstall ca-certificates cron coreutils
COPY cron /usr/local/bin/cron
RUN chmod +x /usr/local/bin/cron
RUN /usr/local/bin/cron
CMD ["tail -f /dev/null"]
