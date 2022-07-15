#!/bin/sh
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install php -y
sudo apt-get install mysql-server -y
sudo mysql
CREATE USER 'test_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'EXAMPLE_PASSWORD';
GRANT ALL PRIVILEGES ON *.* TO 'test_user'@'localhost';
FLUSH PRIVILEGES;
exit
sudo apt-get install phpmyadmin -y
echo 'Include /etc/phpmyadmin/apache.conf' /etc/apache2/apache2.conf
sudo service apache2 restart
sudo nano /etc/apache2/sites-available/000-default.conf 
sudo service apache2 restart
sudo chmod -R 777 /var/www
rm /var/www/*
touch /var/www/index.php

