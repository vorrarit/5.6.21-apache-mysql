FROM php:5.6.21-apache

RUN apt-get update && apt-get install -y \
  libpq-dev postgresql-client php5-pgsql libicu-dev

RUN docker-php-ext-install pgsql pdo_pgsql intl mysql pdo_mysql

RUN a2enmod rewrite

VOLUME [/var/www/html]

EXPOSE 80 
