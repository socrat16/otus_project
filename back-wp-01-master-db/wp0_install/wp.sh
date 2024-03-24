sudo apt update
sudo apt install apache2 \
                 ghostscript \
                 libapache2-mod-php \
                 mysql-server \
                 php \
                 php-bcmath \
                 php-curl \
                 php-imagick \
                 php-intl \
                 php-json \
                 php-mbstring \
                 php-mysql \
                 php-xml \
                 php-zip -y

sudo mkdir -p /srv/www
sudo chown www-data: /srv/www
#sudo curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /srv/www
sudo cp ./config/wordpress.conf /etc/apache2/sites-available/wordpress.conf
sudo cp ./config/ports.conf     /etc/apache2/ports.conf
sudo cp ./config/mysqld.cnf    /etc/mysql/mysql.conf.d/mysqld.cnf
sudo tar -xzf wordpress.tar.gz  -P
sudo mysql -u root -e "CREATE DATABASE wordpress;"
sudo mysql -u root -e "CREATE USER wordpress@localhost IDENTIFIED BY '123';"
sudo mysql -u root -e "GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER ON wordpress. *  TO wordpress@localhost;"

# user for wp1
sudo mysql -u root -e "CREATE USER 'wordpress'@'%' IDENTIFIED BY '123';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'wordpress'@'%';"
sudo mysql -u root -e "FLUSH PRIVILEGES;"
# user for repl
sudo mysql -u root -e "CREATE USER repl@'%' IDENTIFIED WITH 'caching_sha2_password' BY '123';"
# Даём ему права на репликацию
sudo mysql -uroot -e "GRANT REPLICATION SLAVE ON *.* TO repl@'%';"

sudo a2ensite wordpress
sudo a2enmod rewrite
sudo a2dissite 000-default
sudo service apache2 reload
sudo service mysql start
