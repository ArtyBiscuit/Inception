FROM debian:bullseye

RUN apt update && apt install -y\
    nginx\
    netcat-openbsd

COPY        ./start.sh /bin

ENTRYPOINT ["/bin/start.sh"]