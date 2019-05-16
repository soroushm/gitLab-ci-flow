FROM ubuntu:19.04
MAINTAINER Masoud Soroush <masoud.s.geo@gmail.com>


RUN apt-get -qq update
RUN echo "Installing Dependency..." && apt-get install -qqy --no-install-recommends\
 curl\
 apt-utils\
 git-core\
 docker.io \
 npm\
 nodejs
RUN echo "Installing Yarn..." && npm install -g yarn
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN echo "Git Version" && git --version
RUN echo "yarn Version" && yarn --version
RUN echo "Docker Version" && docker --version

