FROM debian:latest
MAINTAINER ilpaijin@gmail.com

RUN apt-get update && apt-get -yq install supervisor

COPY supervisor.conf /etc/supervisor/conf.d/supervisor.conf

CMD ["/usr/bin/supervisord", "-n"]