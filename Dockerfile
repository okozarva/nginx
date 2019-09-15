 FROM ubuntu:18.04

# MAINTAINER Okan Kozarva <okozarva@gmail.com>

 RUN apt-get update

 RUN apt-get install -y nginx=1.16.1* \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

 ADD [ "template/index.html", "/var/www/html/" ]

 COPY template/index.html /var/www/html/

 EXPOSE 80

 ENTRYPOINT nginx -g 'daemon off;'
