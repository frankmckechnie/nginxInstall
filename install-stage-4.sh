cd $home

echo "During the installation, you will be prompted for some information. It will ask you which web server you would like the software to automatically configure. Since Nginx, the web server we are using, is not one of the available options, you can just hit TAB to bypass this prompt. \n"
sleep 4
echo "hit TAB to bypass this prompt. \n"
sleep 3
echo "The next prompt will ask if you would like dbconfig-common to configure a database for phpmyadmin to use. Select "Yes" to continue. \n"
sleep 6

sudo apt-get install phpmyadmin
sudo ln -s /usr/share/phpmyadmin/ /usr/share/nginx/www
sudo service nginx restart
