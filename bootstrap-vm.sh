#!/bin/bash
printf '\e[0;31m%s\e[0m \nEnter for [\e[0;32m%s\e[0m]\n' 'Only execute this in virtual machine environment' 'ok'
read -n 1 x
printf '\e[0;31m%s\e[0m \n\r' 'Are you inside a virtual machine ?'
read -n 1 x
if [ "$x" = "y" ] || [ "$x" == "Y" ]; then  
	printf '\rpreparational operations in progress \n\rplease wait...\n\r'
	sudo cp /vagrant/vmfiles/default /etc/nginx/sites-available/default
	sudo service nginx restart
	sudo service php7.0-fpm restart
	sudo npm install gulp
		printf '\e[0;32m%s\e[0m\n' 'Done'
else
    printf '\rBoot your VM and come again!\n\n'
fi
