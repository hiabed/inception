#!/bin/bash

cd /var/www/wordpress

sleep 5

wp config create --allow-root \
    --dbname=$SQL_DATABASE \
    --dbuser=$SQL_USER \
    --dbpass=$SQL_PASSWORD \
    --dbhost=mariadb:3306 \
    --path='/var/www/wordpress'
    
wp core install \
#   --url="$WP_URL" \
  --title="$WP_TITLE" \
  --admin_user="$WP_USER" \
  --admin_password="$WP_PASSWORD" \
  --admin_email="$WP_EMAIL"
# WordPress installation

/usr/sbin/php-fpm7.3 -F
