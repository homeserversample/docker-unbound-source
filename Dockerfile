FROM ubuntu:latest

COPY apts.sh /tmp
RUN /tmp/apts.sh

COPY buildunbound.sh /tmp
RUN /tmp/buildunbound.sh
