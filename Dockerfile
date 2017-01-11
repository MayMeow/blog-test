FROM jdmaymeow/php:7-apache
MAINTAINER May Meow <jdmaymeow@gmail.com>

# Update composer and create new app
COPY . /var/www/html
