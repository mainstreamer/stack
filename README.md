# drupal-vagrant
# Vagrant virtual machine with clean Drupal 8.x inside

>### VM specs:
> Ubuntu 16.04
> PHP 7
> Mysql 5.7
> Drupal

mysql user root 
mysql pass root
localhost:8888

requirements:
1. vagrant
2. virtual box
3. composer

### installation:
* clone repo
* cd into project folder and create new empty drupal 8.x project:

composer create-project drupal-composer/drupal-project:8.x-dev . --stability dev --no-interaction
> ## This is a header.
> 
> 1.   This is the first list item.
> 2.   This is the second list item.
> 
> Here's some example code:
> 
>     return shell_exec("echo $input | $markdown_script");

     
* create environment
 < vagrant up >
4. ssh into your virtual machine
 < vagrant ssh >
5. run bootstrap script 
 < cd /vagrant >
 < ./bootstrap-vm.sh >


That's it, now go to localhost:8888 on your host machine
   &
enjoy :)


Note - first boot might be slow (20-30 sec ) that's drupal is warming up cache and stuff

File sync:

Use rsync to immediately push any changes from your host to guest
to do that - go to project root and run:

vagrant rsync-auto

to sync files from guest to host install vagrant plugin vagrant-rsync-back

run: vagrant rsync-back
every time you need to pull changes from your guest back to your host machine

mysql user root 
mysql pass root
access your machine from localhost:8888


