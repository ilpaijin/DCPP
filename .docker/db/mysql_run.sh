#!/usr/bin/env bash

set -m
set -e

mysqld_safe &

sleep 10

mysql -u root -e "CREATE DATABASE IF NOT EXISTS docker_compose_pet_project"
mysql -u root -e "CREATE USER 'paolo'@'%' IDENTIFIED BY 'pwd';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'paolo'@'%';"

mysql -u root docker_compose_pet_project < ./dump.sql

mysql -u root -e "FLUSH PRIVILEGES"

fg
