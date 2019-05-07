# Pull base image 
FROM ubuntu

# Install 
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install googler &&\
  apt-get -y install wget  && \
  wget https://github.com/msoap/shell2http/releases/download/1.13/shell2http-1.13.linux.amd64.tar.gz &&\
  tar -xf *.tar.gz

ADD ./service.sh /root/service.sh

ENV HOME /root

WORKDIR /root

CMD [/root/service.sh]
