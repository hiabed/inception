FROM debian:11

RUN apt update -y && apt upgrade -y

RUN apt install nginx -y

RUN apt install openssl -y

# #pour stocker le certificat et la clef.

RUN mkdir -p /etc/nginx/ssl

# #subj disable propmp of openssl cmd.

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=FMK/L=FES/O=1337/OU=42/CN=mhassani.42.fr/UID=mhassni"

# #====>

WORKDIR /

COPY tools/index.html /var/www/html

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD [ "nginx", "-g" ,"daemon off;"]