#!/bin/bash

cd /var/www/wordpress

sleep 5

wp config create --allow-root \
    --dbname=$SQL_DATABASE \
    --dbuser=$SQL_USER \
    --dbpass=$SQL_PASSWORD \
    --dbhost=mariadb:3306 \
    --path='/var/www/wordpress'

wp core install --allow-root \
  --url="$WP_URL" \
  --title="$WP_TITLE" \
  --admin_user="$WP_ADM_USER" \
  --admin_password="$WP_ADM_PASSWORD" \
  --admin_email="$WP_ADM_EMAIL"

wp user create --allow-root "$WP_USER" --user_pass="$WP_USER_PASSWORD" --role="$author" --path='/var/www/wordpress'

/usr/sbin/php-fpm7.3 -F
