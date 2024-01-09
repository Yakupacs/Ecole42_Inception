FROM debian:buster
RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y
RUN mkdir /etc/nginx/ssl
COPY ./conf/nginx.conf /etc/nginx/sites-enabled/default
COPY ./tools/nginx_start.sh /var/www
RUN chmod +x /var/www/nginx_start.sh
RUN mkdir -p /run/nginx
EXPOSE 443
ENTRYPOINT ["var/www/nginx_start.sh"]
CMD ["nginx", "-g", "daemon off;"]