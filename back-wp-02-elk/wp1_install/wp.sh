sudo apt update
sudo apt install apache2 ghostscript libapache2-mod-php mysql-server php php-{bcmath,curl,imagick,intl,json,mysql,xml,zip} mbstring -y
sudo mkdir -p /srv/www
sudo chown www-data: /srv/www
#sudo curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /srv/www
sudo cp ./config/wordpress.conf /etc/apache2/sites-available/wordpress.conf
sudo cp ./config/mysqld.conf    /etc/mysql/mysql.conf.d/mysqld.cnf
sudo tar -xzf wordpress2.tar.gz  -P


sudo a2ensite wordpress
sudo a2enmod rewrite
sudo a2dissite 000-default
sudo service apache2 reload
sudo service mysql start
