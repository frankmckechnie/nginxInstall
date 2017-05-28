cd $home

echo -e "changing to $home \n"


echo -e "installing curl \n"
sudo apt install curl
php composer-setup.php --install-dir=bin --filename=composer

echo -e "installing composer \n"

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
php composer-setup.php --install-dir=bin --filename=composer
php composer.phar
sudo mv composer.phar /usr/local/bin/composer

echo -e "installing node js \n"

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g jshint
sleep 3
echo -e "installing laravel \n"
sleep 1

composer global require "laravel/installer"

sudo echo 'export PATH=$HOME/.composer/vendor/bin:$PATH' >> ~/.bashrc 

echo -e "run laravel \n"
laravel
sleep 3
echo -e "laravel works? \n"
sleep 3
echo -e "install git? \n"
sudo apt install git

sleep 3
echo -e "cd to html? \n"
cd /var/www/html/
sleep 3
echo -e "new laravel app \n"
sudo chown frank /var/www/html
laravel new laravel 
echo -e "#sudo chown -R :www-data /var/www/html/laravel \n"
sudo chown -R :www-data /var/www/html/laravel
echo -e "#sudo chmod -R 775 /var/www/html/laravel/storage \n"
sudo chmod -R 775 /var/www/html/laravel/storage



