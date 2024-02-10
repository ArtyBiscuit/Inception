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
		--admin_user=$WP_ROOT_USER\
		--admin_password=$WP_ROOT_PASS\
		--admin_email='none@none.com'

	${WP} user create \
		"$WP_USER"\
		"$WP_USER@fuck.com"\
		--user_pass="$WP_PASS"\
		--role=contributor
fi

mkdir /run/php
php-fpm7.4 -F -R
