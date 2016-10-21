#!/bin/bash
printf '\e[0;31m%s\e[0m \nEnter for [\e[0;32m%s\e[0m]\n' 'Only execute this in virtual machine environment' 'ok'
read -n 1 x
printf '\e[0;31m%s\e[0m \n\r' 'Are you inside a virtual machine ?'
read -n 1 x
if [ "$x" = "y" ] || [ "$x" == "Y" ]; then  
	printf '\rpreparational operations in progress \n\rplease wait...\n\r'
	sudo apt install 	
	sudo cp vhost.vm.cfg /etc/apache2/sites-available/000-default.conf
	sudo cp apache2.conf.vm.cfg /etc/apache2/apache2.conf
	sudo apt install -y libapache2-mod-php7.0
	sudo service apache2 restart
printf '\e[0;32m%s\e[0m\n' 'Done'
else
    printf '\rBoot your VM and come again!\n\n'
fi

#sudo cp vhost.vm.cfg /etc/apache2/sites-available/000-default.conf
#sudo service apache2 restart
