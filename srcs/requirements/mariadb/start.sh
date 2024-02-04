#!/bin/bash

if [ -d "/var/lib/mysql/${MYSQL_DATABASE}" ]; then
	# ALREADY exists
	echo "Database already exists"
else
	# NOT INITIALISED
	mysql_install_db --user="mysql" --ldata=/var/lib/mysql

	<<-EOSTRING cat > /tmp/grant.sql
		CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\` CHARACTER SET utf8 COLLATE utf8_general_ci ;
		USE ${MYSQL_DATABASE};
		FLUSH PRIVILEGES;
		GRANT ALL ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%' identified by '${MYSQL_PASS}' WITH GRANT OPTION ;
		SET PASSWORD FOR '${MYSQL_USER}'@'%'=PASSWORD('${MYSQL_PASS}') ;
		DROP DATABASE IF EXISTS test ;
		FLUSH PRIVILEGES ;
	EOSTRING

	/usr/sbin/mysqld --bootstrap --user=mysql --verbose=0 --skip-name-resolve --skip-networking=0 < /tmp/grant.sql
	rm /tmp/grant.sql
fi

[ ! -d /run/mysqld ] && mkdir -p /run/mysqld

chown -R mysql:mysql /run/mysqld

printf "MariaDB launched on port: \x1b[38:5:208m3306\x1b[0m\n"

echo "Mariadb OK"

if [ $# -gt 0 ]; then
	exec "$@"
else
	/usr/sbin/mysqld --console --user=mysql --verbose=0 --skip-name-resolve --skip-networking=0 --bind-address=0.0.0.0
fi
