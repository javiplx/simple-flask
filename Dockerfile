FROM ubuntu:22.04

RUN apt-get update \
 && apt-get install -y apache2-bin \
 && apt-get clean all
