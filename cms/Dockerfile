FROM alpine/git:v2.32.0 as download

WORKDIR /app

RUN git clone https://github.com/quang-pth/cms-php-app.git

FROM composer/composer as dep

WORKDIR /var/www/html

COPY --from=download /app/cms-php-app/composer.json ./
COPY --from=download /app/cms-php-app/composer.lock ./

RUN composer install --no-dev
RUN composer dump-autoload --optimize --apcu --no-dev

FROM php:8.0.13-apache

RUN docker-php-ext-install mysqli

COPY .env /var/www/html
COPY --from=dep /var/www/html /var/www/html
COPY --from=download /app/cms-php-app /var/www/html

EXPOSE 80
