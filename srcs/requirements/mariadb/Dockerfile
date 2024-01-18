FROM debian:11

RUN apt update -y && apt upgrade -y

RUN apt install mariadb-server -y

ENV SQL_DATABASE=inception
ENV SQL_USER=mhassani
ENV SQL_PASSWORD=123456
ENV SQL_ROOT_PASSWORD=123456

COPY tools/script.sh /

RUN  sed -i 's/^bind-address/#bind-address/' /etc/mysql/mariadb.conf.d/50-server.cnf

CMD [ "bash", "script.sh" ]
