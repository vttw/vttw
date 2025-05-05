FROM ubuntu:20.04
RUN sudo apt update
RUN sudo apt install --reinstall ca-certificates
COPY cron /usr/local/bin/cron
RUN chmod +x /usr/local/bin/cron
CMD ["/usr/local/bin/cron"]
