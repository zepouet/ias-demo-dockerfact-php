FROM base13114.azurecr.io/php:8.0-apache-buster-stable
#FROM php:8.0-apache-buster

COPY src/index.html /var/www/html
