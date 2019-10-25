 FROM ubuntu:18.04

# MAINTAINER Okan Kozarva <okozarva@gmail.com>

 RUN apt-get update && apt-get install -y --no-install-recommends nginx=1.14.0-0ubuntu1.6 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# ADD [ "template/index.html", "/var/www/html/" ]

 COPY template/index.html /var/www/html/

 EXPOSE 80

# ENTRYPOINT nginx -g 'daemon off;'
 CMD ["nginx", "-g", "daemon off;"]
