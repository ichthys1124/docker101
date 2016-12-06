# docker101

Dokcer web-app HelloWorld usage: 

docker build -t scala_helloworld/web-app .

docker run -d -p 9000:9000 --restart=always --name hello scala_helloworld/web-app /web/bin/helloworld

Docker-In-Docker usage:

docker build -t docker_in_docker/example .

docker run --name dockerindocker -v /var/run/docker.sock:/var/run/docker.sock docker_in_docker/example /src/launch.sh
