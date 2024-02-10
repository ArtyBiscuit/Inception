FROM debian:bullseye

RUN			apt update && apt install -y\
				nginx\
				openssl

RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -newkey rsa:4096 \
-keyout /etc/nginx/ssl/arforgea.key \
-out /etc/nginx/ssl/arforgea.crt \
-sha256 -days 3650 -nodes \
-subj "/C=FR/ST=arforgea/L=Angoulême/O=42/OU=42/CN=arforgea.42.fr"

COPY		nginx.conf /etc/nginx/conf.d/default.conf
COPY		./start.sh /bin

ENTRYPOINT	["/bin/start.sh"]
