FROM ubuntu:19.04
MAINTAINER Masoud Soroush <masoud.s.geo@gmail.com>


RUN apt-get -qq update
RUN apt-get install -qqy --no-install-recommends apt-utils git-core docker.io
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN git --version

