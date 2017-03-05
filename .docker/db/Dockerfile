FROM debian:wheezy
MAINTAINER ilpaijin@gmail.com

RUN apt-get update && \
    apt-get install -yq mysql-server

RUN sed -i -e "s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

COPY mysql_run.sh /tmp/mysql_run.sh
RUN chmod +x /tmp/mysql_run.sh

EXPOSE 3306

ENTRYPOINT ["/tmp/mysql_run.sh"]