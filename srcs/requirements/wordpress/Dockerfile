FROM debian:bullseye

RUN			apt update && apt install -y\
				wget\
				php\
				php-xml\
				php-fpm\
				php-gd\
				php-mysql

RUN			wget https://github.com/wp-cli/wp-cli/releases/download/v2.9.0/wp-cli-2.9.0.phar -O /tmp/wp
COPY  www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY		./start.sh /bin

ENTRYPOINT ["/bin/start.sh"]
