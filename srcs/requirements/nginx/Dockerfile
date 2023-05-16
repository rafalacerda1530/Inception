FROM debian:buster
 
RUN		apt-get update
RUN		apt-get install -y nginx \
                openssl

# Cria a pasta para o SSL do Nginx
RUN mkdir /etc/nginx/ssl

# Gera uma chave privada com criptografia de 2048 bits para o certificado SSL
RUN openssl genrsa -out /etc/nginx/ssl/server.key 2048

# Gera um arquivo de solicitação de assinatura de certificado (CSR) com informações do meu site
RUN openssl req -new -key /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.csr -subj "/C=BR/ST=Sao Paulo/L=Sao Paulo/O=42/OU=Sao Paulo/CN=rarodrig/emailAddress=rarodrig@mail.com"

# Gera um certificado autoassinado, válido por 365 dias, a partir da solicitação CSR
RUN openssl x509 -req -days 365 -in /etc/nginx/ssl/server.csr -signkey /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt

# Copia p arquivo de configuração para a pasta padrão do Nginx
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

# Cria a pasta root do Nginx
RUN mkdir /var/www/wordpress

# Copia os arquivos dos sites para a pasta
COPY ./tools/* /var/www/html

# Utiliza a porta 443
EXPOSE 443 7000
 

# Comando incial padrão
CMD ["nginx", "-g", "daemon off;"]