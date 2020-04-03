FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y nginx
##VOLUME /var/www/html/
VOLUME /usr/share/nginx/www/
ARG webpage
ADD $webpage /usr/share/nginx/www/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
