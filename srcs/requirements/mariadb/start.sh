#!/bin/bash

#service mariadb start

if [ -d "/var/lib/mysql/$MYSQL_DATABASE" ]
then 
 	echo "Database already exists"
else
    # echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$MYSQL_ROOT_PASSWORD';" | mysql -u root --password="$MYSQL_ROOT_PASSWORD"
    # echo "FLUSH PRIVILEGES;" | mysql -u root --password="$MYSQL_ROOT_PASSWORD"
    echo "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"

 #   mysql_install_db --user=$MYSQL_USER --ldata=var/lib/mysql

    echo "FLUSH PRIVILEGES;" > /tmp/grant.sql
	echo "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;" >> /tmp/grant.sql
	echo "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';" >> /tmp/grant.sql
	echo "GRANT ALL ON \`${MYSQL_DATABASE}\`.* TO \`${MYSQL_USER}\`@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';" >> /tmp/grant.sql
	echo "GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';" >> /tmp/grant.sql
	echo "FLUSH PRIVILEGES;" >> /tmp/grant.sql

	/usr/sbin/mysqld --user=mysql --bootstrap --skip-networking=0 < /tmp/grant.sql
	rm /tmp/grant.sql
fi

#exec "$@"