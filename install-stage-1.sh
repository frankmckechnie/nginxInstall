cd $home

echo -e "changing to $home \n"
      

echo "updating linux"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoclean

echo -e "... Installing nginx ...\n"
sudo apt-get install nginx

sudo ufw allow 'Nginx HTTP'
sudo ufw status

echo -e "... replacing ngnix default ...\n"
sleep 1
sudo cp -R bootScripts/default  /etc/nginx/sites-available/

# read -r -p "Are you sure? [y/N] " response
# if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
# then
#     do_something
# else
#     do_something_else
# fi

echo -e "... Installing mysql-server ...\n"
sleep 0.5
echo -e "supply a root (administrative) password \n"
sleep 0.5
echo -e "To secure the installation \n"
sleep 0.5
echo -e "run sudo mysql_secure_installation after install my sql is done \n"
sleep 0.5
echo -e "after installing mysql-server and mysql_secure_installation run stage 2 \n"
sleep 2
sudo apt-get install mysql-server
sleep 3
echo -e "say N for VALIDATE PASSWORD PLUGIN \n"
sleep 0.5
echo -e "Answer y for yes, or anything else to continue without enabling \n"
sudo mysql_secure_installation

