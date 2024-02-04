FROM debian:bullseye

RUN			apt update && apt install -y\
				wget\
				php\
				php-fpm\
				php-mysql \
				netcat-openbsd \
				procps

RUN			wget https://github.com/wp-cli/wp-cli/releases/download/v2.9.0/wp-cli-2.9.0.phar -O /tmp/wp
COPY		./start.sh /bin

ENTRYPOINT ["/bin/start.sh"]
