#!/bin/bash

WP="wp --allow-root"

if [ -f "/bin/wp" ]; then
	echo "Wordpress OK."
else
	mv /tmp/wp /bin/wp && chmod +x /bin/wp

	cd /var/www/html
	${WP} core download
	${WP} config create \
		--dbname="${MYSQL_DATABASE}" \
		--dbuser="${MYSQL_USER}" \
		--dbpass="${MYSQL_PASS}" \
		--dbhost=mariadb
	echo "install..."
	${WP} core install \
		--url='http://arforgea.42.fr'\
		--title='Blog Title'\
		--admin_user=$WP_USER\
		--admin_password=$WP_PASS\
		--admin_email='none@none.com'
fi

chmod -R 777 /var/www/html/
chown -R www-data:www-data /var/www/html

mkdir /run/php
php-fpm7.4 -F -R
