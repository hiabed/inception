FROM debian:11

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install mariadb-server -y

COPY tools/script.sh /

RUN  sed -i 's/^bind-address/#bind-address/' /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

CMD [ "bash", "script.sh" ]
