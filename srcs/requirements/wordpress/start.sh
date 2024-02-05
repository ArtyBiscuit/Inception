#!/bin/bash

WP="wp --allow-root"

if [ -f "/bin/wp" ]; then
	echo "Wordpress OK."
else
	mv /tmp/wp /bin/wp && chmod +x /bin/wp

	chmod 777 /var/www/html

	cd /var/www/html
	${WP} core download
	${WP} config create \
		--dbname="${MYSQL_DATABASE}" \
		--dbuser="${MYSQL_USER}" \
		--dbpass="${MYSQL_PASS}" \
		--dbhost=mariadb
	${WP} core install \
		--url='http://arforgea.42.fr'\
		--title='Blog Title'\
		--admin_user=$WP_USER\
		--admin_password=$WP_PASS\
		--admin_email='arty@arforge.42.fr'
fi

mkdir /run/php
php-fpm7.4 -F -R
