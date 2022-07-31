FROM php:8.1-apache

RUN apt-get update && \
     apt-get install -y \
         libzip-dev \
         && docker-php-ext-install zip

RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable  mysqli

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-enable  pdo_mysql

RUN pecl install redis
RUN docker-php-ext-enable redis

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug