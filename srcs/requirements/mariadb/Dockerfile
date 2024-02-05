FROM debian:11

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install mariadb-server -y

COPY tools/script.sh /

RUN sed -i 's/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

RUN chmod +x script.sh

CMD [ "bash", "script.sh" ]
