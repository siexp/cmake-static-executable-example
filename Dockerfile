FROM alpine:latest

LABEL maintainer=siexp@github.com

WORKDIR /app
COPY ./dynamic_test /app/dynamic_test
COPY ./static_test /app/static_test

RUN addgroup siexp && adduser --no-create-home --disabled-password --ingroup siexp --shell /bin/sh siexp
USER siexp
CMD ["/bin/sh"]