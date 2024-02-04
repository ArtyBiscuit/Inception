#!/bin/bash

ls /var/www/html
echo "Nginx OK."
nginx -g "daemon off;"
#exec "$@"