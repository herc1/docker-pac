FROM php:5.6.39-apache-stretch

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get -y install cron

RUN mkdir -p /opt/conf/apache2

COPY entrypoint.sh /

EXPOSE 80

CMD ['/entrypoint.sh']
