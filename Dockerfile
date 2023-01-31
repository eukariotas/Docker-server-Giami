FROM debian
RUN apt-get -y update
RUN apt-get -y install wget
RUN rm -rf /home/*
RUN mkdir /home/giame 