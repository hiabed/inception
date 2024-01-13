FROM debian:11

RUN apt update -y && apt upgrade -y

RUN apt install nginx -y

#====>

RUN mkdir -p /etc/nginx/ssl

RUN apt install openssl -y

#subj disable propmp of openssl cmd.

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=FMK/L=FES/O=1337/OU=42/CN=mhassani.42.fr/UID=mhassni"

#====>

WORKDIR /

COPY index.html /var/www/html

COPY nginx.conf /etc/nginx/nginx.conf

CMD [ "nginx", "-g" ,"daemon off;"]