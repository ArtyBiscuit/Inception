FROM debian:bullseye

RUN			apt update && apt install -y\
				nginx\
				netcat-openbsd\
				procps

COPY		nginx.conf /etc/nginx/http.d/default.conf
COPY		./start.sh /bin

ENTRYPOINT	["/bin/start.sh"]
