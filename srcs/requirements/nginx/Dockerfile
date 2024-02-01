FROM debian:bullseye

RUN apt update && apt install -y\
    nginx\
    netcat-openbsd

COPY        nginx.conf /etc/nginx/http.d/default.conf
COPY        ./start.sh /bin

ENTRYPOINT ["/bin/start.sh"]