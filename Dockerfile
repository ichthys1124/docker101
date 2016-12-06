FROM ubuntu:14.04

RUN apt-get -y update

# install utils

RUN apt-get install -y curl

RUN apt-get install -y unzip

-RUN apt-get install -y vim

# java 1.8 

ENV HOME /root

RUN  apt-get install -y software-properties-common

RUN \
 
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \

  add-apt-repository -y ppa:webupd8team/java && \

  apt-get update && \

  apt-get install -y oracle-java8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# ADD web service
# locate web-bin

RUN mkdir -p /web

ADD HelloWorld /web

WORKDIR /web

EXPOSE 9000

ENV APPLICATION_SECRET q=PJI`DPp:tmTk7Xs@PQKZ8ZwHlqmrKYBc>><NR7EV]e_IwZ===jVYEnaiN@`LW[

CMD ["/web/bin/helloworld"]

#Clean up APT when done.

RUN apt-get clean && \

    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \

    apt-get autoclean && \

    apt-get autoremove -y && \

    rm -rf /var/lib/{apt,dpkg,cache,log}/
