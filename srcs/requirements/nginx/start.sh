#!/bin/bash

ls /var/www/html
echo "Nginx OK."
chmod 777 /var/www/html
nginx -g "daemon off;"
#exec "$@"
