FROM debian:latest
 
RUN		apt-get update
RUN		apt-get install -y nginx \
                openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -new -newkey rsa:2048 -nodes -keyout /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt -subj "/C=BR/ST=Sao Paulo/L=Sao Paulo/O=42/OU=Sao Paulo/CN=rarodrig.42.fr/emailAddress=rarodrig@mail.com"

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
 
COPY ./tools/index.html /etc/nginx/conf.d/default.conf

EXPOSE 443
 
CMD ["nginx", "-g", "daemon off;"]