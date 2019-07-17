#!/bin/sh

CONF_FILE=/etc/nginx/nginx.conf

sed -i "s/#LISTEN_PORT#/${LISTEN_PORT}/" ${CONF_FILE}

ln -s /etc/init.d/php-fpm7 /usr/bin/php-fpm7

php-fpm7 -d variables_order="EGPCS" && exec nginx -g "daemon off;"