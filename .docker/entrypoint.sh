#!/bin/sh
set -e
cd /var/www/html
a2enmod rewrite
echo "[ ************ ] XDEBUG Install [ ************ ]"
pecl install xdebug-2.8.1
exec "$@"