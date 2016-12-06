FROM ubuntu:14.04

RUN apt-get update -y && apt-get install -y wget

#insatll docker specific version
RUN apt-get install -y -q apt-transport-https ca-certificates && \
apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
apt-key adv -k 58118E89F3A912897C070ADBF76221572C52609D >/dev/null 

RUN mkdir -p /etc/apt/sources.list.d

RUN touch /etc/apt/sources.list.d/docker.list

RUN chmod 777 /etc/apt/sources.list.d/docker.list

RUN echo deb \[arch=amd64\] https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list

RUN apt-get update; apt-get install -y -q docker-engine=1.11.2-0~trusty

RUN apt-mark hold docker-engine

#RUN wget -qo- https://get.docker.com/ | sh

RUN mkdir -p /src

ADD src /src

WORKDIR /src

CMD["/src/launch.sh"]
