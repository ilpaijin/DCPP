#!/usr/bin/env bash

set -m
set -e

mysqld_safe &

sleep 10

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE"
mysql -u root -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%';"
mysql -u root -e "FLUSH PRIVILEGES"

mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < dump.sql

fg
