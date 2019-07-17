FROM ubuntu:16.04

ADD test /test

COPY readme.md /tmp

ENV LISTEN_PORT=80

EXPOSE 80