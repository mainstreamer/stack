## stack

#### Access:
- http://192.168.168.168 or http://localhost:8888
- Mysql server (user : root  pwd : root)
- ssh ubuntu@localhost:2222 [private key : .vagrant/machines/default/virtualbox/private_key]

#### Preinstalled inside:
- ubuntu 16.04
- nginx 1.10.0
- php 7.1.4 (fpm)
- MySQL 5.7.17
- Composer 1.0.0
- Symfony 3.2.7
- npm 3.5.2
- gulp

#### Requirements:
- vagrant

### Installation:

Clone repo:

    git clone git@github.com:mainstreamer/stack.git

Cd into project folder and initialize virtual machine:

    vagrant up

Ssh into your virtual machine:

    vagrant ssh

Go to project folder inside your VM

    cd /vagrant/

Run bootstrap script:

    sudo ./bootstrap-vm.sh

Install project dependencies

    composer install

Done :sunglasses: - go check to http://192.168.168.168 or http://localhost:8888
