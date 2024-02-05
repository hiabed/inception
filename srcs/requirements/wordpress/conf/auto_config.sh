#!/bin/bash

cd /var/www/wordpress

while ! mariadb -h mariadb -u"$SQL_USER" -p"$SQL_PASSWORD" ; do
    echo "waiting for database connection...";
    sleep 3
done

echo "connection is done."

wp config create --allow-root \
  --dbname=$SQL_DATABASE \
  --dbuser=$SQL_USER \
  --dbpass=$SQL_PASSWORD \
  --dbhost=mariadb \
  --path='/var/www/wordpress'

wp core install --allow-root \
  --url="$WP_URL" \
  --title="$WP_TITLE" \
  --admin_user="$WP_ADM_USER" \
  --admin_password="$WP_ADM_PASSWORD" \
  --admin_email="$WP_ADM_EMAIL" --skip-email
  
wp user create --allow-root \
  "$WP_USER" "$WP_USER_EMAIL" \
  --user_pass="$WP_USER_PASSWORD" \
  --role="$author" --path='/var/www/wordpress'

/usr/sbin/php-fpm7.4 -F
