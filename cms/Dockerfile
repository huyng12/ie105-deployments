FROM php:8.0.13-apache

RUN docker-php-ext-install mysqli

COPY src/ /var/www/html

EXPOSE 80
