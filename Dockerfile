FROM php:5.6.39-apache-stretch

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get -y install php5-mysql cron wget

RUN mkdir -p /opt/conf/apache2

RUN mkdir -p /opt/php

RUN docker-php-ext-install mysqli

COPY entrypoint.sh /

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
