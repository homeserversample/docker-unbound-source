FROM ubuntu:latest

COPY apts.sh /tmp
RUN /tmp/apts.sh

COPY buildunbound.sh /tmp
RUN /tmp/buildunbound.sh

# adduser unbound because unbound wants to run as user unbound
COPY adduser.sh /tmp
RUN /tmp/adduser.sh unbound
