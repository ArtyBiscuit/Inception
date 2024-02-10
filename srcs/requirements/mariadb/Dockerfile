FROM debian:bullseye

RUN			apt update && apt install -y \
				mariadb-server \
				mariadb-client \
				netcat-openbsd

COPY		./start.sh /bin

ENTRYPOINT ["/bin/start.sh"]
