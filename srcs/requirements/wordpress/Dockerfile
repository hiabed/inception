FROM debian:11

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get -y install wget

RUN apt-get install -y php7.4 \
php7.4-fpm \
php7.4-mysql \
mariadb-client

RUN wget https://fr.wordpress.org/wordpress-6.4.2-fr_FR.tar.gz -P /var/www

RUN cd /var/www && tar -xzf wordpress-6.4.2-fr_FR.tar.gz && rm wordpress-6.4.2-fr_FR.tar.gz

RUN chmod -R 777 /var/www/wordpress

RUN apt-get install wordpress -y

RUN sed -i 's@listen = /run/php/php7.4-fpm.sock@listen = wordpress:9000@' /etc/php/7.4/fpm/pool.d/www.conf

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY conf/auto_config.sh /

EXPOSE 9000

RUN mkdir run/php

CMD [ "bash", "auto_config.sh" ]

