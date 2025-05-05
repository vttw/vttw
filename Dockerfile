FROM alpine:latest
COPY test /usr/local/bin/test
RUN chmod +x /usr/local/bin/test
CMD ["/usr/local/bin/test"]
