FROM alpine:latest

WORKDIR /app
COPY ./dynamic_test /app/dynamic_test
COPY ./static_test /app/static_test

RUN ldd /app/dynamic_test || true
RUN ldd /app/static_test || true
CMD ["/bin/sh"]