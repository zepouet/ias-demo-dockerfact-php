FROM base13114.azurecr.io/php:8.0-apache-buster-stable

#FROM php:8.0-apache-buster

COPY src/index.html /var/www/html

COPY config/apache/000-default.conf /etc/apache2/sites-available
COPY config/apache/ports.conf /etc/apache2/ports.conf


USER www-data:www-data
