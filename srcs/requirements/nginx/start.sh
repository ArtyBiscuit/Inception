#!/bin/bash

ls -lra /var/www/html
# chown -R nginx:nginx /var/www/html
# chmod 777 /var/www/html/**/**
echo "Nginx OK."
nginx -g "daemon off;"
#exec "$@"
