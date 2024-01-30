FROM debian:bullseye

RUN apt update && apt install -y \
mariadb-server \
mariadb-client

COPY 50-server.cnf ./etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./start.sh /bin
RUN chmod +x /bin/start.sh
ENTRYPOINT ["/bin/start.sh"]

CMD ["/usr/sbin/mysqld", "--user=$MYSQL_USER", "--bind-address=0.0.0.0", "--skip-networking=0"]