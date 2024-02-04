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
fi
