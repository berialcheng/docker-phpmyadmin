#!/bin/bash

sed -i s/{{MYSQL_HOST}}/$MYSQL_HOST/ /var/www/html/phpMyAdmin/config.inc.php
sed -i s/{{MYSQL_USER}}/$MYSQL_USER/ /var/www/html/phpMyAdmin/config.inc.php
sed -i s/{{MYSQL_PASSWORD}}/$MYSQL_PASSWORD/ /var/www/html/phpMyAdmin/config.inc.php
sed -i s/{{MYSQL_ALLOW_NO_PASSWORD}}/$MYSQL_ALLOW_NO_PASSWORD/ /var/www/html/phpMyAdmin/config.inc.php

exec "$@"