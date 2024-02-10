#!/bin/bash

ls -lra /var/www/html
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
echo "Nginx OK."
nginx -g "daemon off;"
