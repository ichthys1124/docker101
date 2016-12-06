# docker101

Dokcer web-app HelloWorld usage: 

docker build -t scala_helloworld/web-app .

docker run -d -p 9000:9000 --restart=always --name hello scala_helloworld/web-app /web/bin/helloworld
