FROM ubuntu:xenial
MAINTAINER elouiz.badr@gmail.com

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y nano sudo net-tools \
 curl unzip ca-certificates apt-transport-https && rm -rf /var/lib/apt/lists/*
