FROM debian:bullseye

RUN			apt update && apt install -y\
				nginx\
				netcat-openbsd\
				procps\
				openssl

RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/vbachele.crt \
       -keyout /etc/nginx/ssl/vbachele.key\
	-subj "/C=FR/ST=Angoulême/L=Angoulême/O=42 School/OU=arforgea/CN=arforgea/"

COPY		nginx.conf /etc/nginx/conf.d/default.conf
COPY		./start.sh /bin

ENTRYPOINT	["/bin/start.sh"]
