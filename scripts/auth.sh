#!/bin/bash

if [ "$HTTP_AUTH_PASSWORD" != "" ]; then
    echo "AuthType Basic
AuthName \"CGit\"
AuthUserFile /var/www/htdocs/cgit/.htpasswd
Require valid-user" > /var/www/htdocs/cgit/.htaccess
htpasswd  -c -b /var/www/htdocs/cgit/.htpasswd $HTTP_AUTH_USER $HTTP_AUTH_PASSWORD
fi
