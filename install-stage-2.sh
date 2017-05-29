cd $home

echo -e "changing to $home \n"

echo -e "... Installing PHP 7.0 :) ...\n"

# PHP 7.0 GOODIES
sudo apt-get install php-fpm php-mysql
sudo apt-get install -y \
	php7.0-cgi \
	php7.0-cli \
	php7.0-curl \
	php7.0-gd \
	php7.0-json \
	php7.0-mcrypt  \
	php7.0-mysql \
	php7.0-sqlite3 \
	php7.0-pgsql \
	php7.0-xml \
	php7.0-imap \
	php7.0-intl \
	php7.0-ldap \
	php7.0-odbc \
	php7.0-opcache \
	php7.0-readline \
	php7.0-pspell \
	php7.0-xsl \
	php-gettext \
	php-mbstring \
	php-zip
sleep 1

echo -e "enabling php modules \n"

sudo phpenmod mcrypt
sudo phpenmod mbstring

# INSTALL_SUCCESS=$?

echo -e "php installed \n"
sleep 1
echo -e "Search for the cgi.fix_pathinfo parameter in this file  /etc/php/7.0/fpm/php.ini \n"
sleep 1

echo -e "change to gi.fix_pathinfo=0 \n"

sudo nano /etc/php/7.0/fpm/php.ini

sudo systemctl restart php7.0-fpm

echo -e "Configure Nginx to Use the PHP Processor \n"
sleep 1
echo -e "Search for the cgi.fix_pathinfo parameter in this file  /etc/php/7.0/fpm/php.ini \n"
sleep 1

#sudo mkdir -p /var/www/laravel
#sudo chown frank /var/www/html
sudo chown -R :www-data /var/www/html

echo -e "creating php info file \n"
echo "<?php phpinfo(); ?>" >> /var/www/html/info.php
