 FROM ubuntu:latest

 MAINTAINER Okan Kozarva <okozarva@gmail.com>

 RUN apt-get update

 RUN apt-get install -y nginx

 ADD [ "template/index.html", "/var/www/html/" ]

 EXPOSE 80

 ENTRYPOINT nginx -g 'daemon off;'
