#!/bin/bash

# run mySQL / mariaDB
service mysql start

# create the database
mysql -u root -e "CREATE DATABASE mallowz;"

# create the user mallowz with password mallowz

mysql -u root -e "CREATE USER 'mallowz'@'localhost' IDENTIFIED BY 'mallowz';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'mallowz'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"

# execute the database script and populate the database
mysql -u root < /var/www/html/mallowz.sql

# run apache
&>/dev/null /usr/sbin/apachectl -DFOREGROUND -k start
