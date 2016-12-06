FROM ubuntu:14.04

RUN apt-get install -y wget

RUN wget -q0- https://get.docker.com | sh

RUN mkdir -p /src

ADD src /src

WORKDIR /src

CMD["/src/launch.sh"]
