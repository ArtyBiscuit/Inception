#/bin/bash

if (systemctl status nginx | grep "Active: inactive") then
    nginx
else
    echo 'nginx: is already started.'
fi

#bash