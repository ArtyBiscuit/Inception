FROM debian:bullseye

RUN apt update && apt install -y\
    wget

RUN wget https://github.com/wp-cli/wp-cli/releases/download/v2.9.0/wp-cli-2.9.0.phar
RUN mv wp-cli-2.9.0.phar /tmp
COPY        ./start.sh /bin

ENTRYPOINT ["/bin/start.sh"]