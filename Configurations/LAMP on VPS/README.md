# Installing LAMP on VPS

### Tutorials: Ubuntu
```bash

# Install Apache Server
sudo apt-get update
sudo apt-get install apache2

# Install PHP & MySQL
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql

# Active MySQL, it’s easiest just to say Yes to all the options
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation

# Finish installing PHP
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
sudo vi /etc/apache2/mods-enabled/dir.conf

# Move index.php to the second position
<IfModule mod_dir.c>
          DirectoryIndex index.php index.html index.cgi index.pl index.php index.xhtml index.htm
</IfModule>

# View PHP Configurations
<?php
	phpinfo();
?>

sudo service apache2 restart
```

### Configure WordPress
```bash 

# Get Wordpress Package
sudo apt-get install php5-gd
wget http://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz

# Create/Config database for Wordpress Application
mysql -u root -p
CREATE DATABASE sampledb;
CREATE USER 'sampleuser'@'localhost' IDENTIFIED BY 'password';

# Frist * : database, Second * : table
GRANT ALL PRIVILEGES ON * . * TO 'sampleuser'@'localhost';
# GRANT ALL PRIVILEGES ON sampledb.* TO sampleuser@localhost;

# Configurate wp-config.php file
cp ~/wordpress/wp-config-sample.php ~/wordpress/wp-config.php

# Setup Apache Config

cd /etc/apache2/sites_enabled
sudo vi idev.conf

```

```xml 
<VirtualHost *:80>
	ServerAdmin sample@admin.com
	ServerName sample.com
	ServerAlias www.sample.com
	DocumentRoot /var/www/html
        <Directory />
                Options FollowSymLinks
                AllowOverride None
        </Directory>
        <Directory /var/www/html/>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                Order allow,deny
                allow from all
        </Directory>
	ErrorLog ${APACHE_LOG_DIR}/error.log
  CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```