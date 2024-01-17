FROM debian:11

RUN apt update -y && apt upgrade -y

RUN apt install mariadb-server -y

COPY tools/script.sh /

RUN  sed -i 's/^bind-address/#bind-address/' /etc/mysql/mariadb.conf.d/50-server.cnf

CMD [ "bash", "script.sh" ]
