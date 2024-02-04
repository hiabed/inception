FROM debian:11

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install nginx -y

RUN apt-get install openssl -y

# #pour stocker le certificat et la clef.

RUN mkdir -p /etc/nginx/ssl

# #subj disable propmp of openssl cmd.

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=FMK/L=FES/O=1337/OU=42/CN=mhassani.42.fr/UID=mhassni"

#COPY tools/index.html /var/www/wordpress

COPY ./conf/nginx.conf /etc/nginx/sites-enabled/default.conf 

CMD [ "nginx", "-g" ,"daemon off;"]