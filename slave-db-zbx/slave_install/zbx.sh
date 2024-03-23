#Установка apache2
sudo apt install apache2 -y
#Копируем конфиг
sudo cp ./config/etc/apache2/ports.conf /etc/apache2/ports.conf
sudo cp ./config/etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf

#Установка mysql
sudo apt install mysql-server=8.0.* -y
#Установка zabbix 
sudo dpkg -i zabbix-release_6.4-1+ubuntu22.04_all.deb
sudo apt update
sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent -y
sudo cp ./config/etc/zabbix/zabbix_server.conf /etc/zabbix/zabbix_server.conf
sudo mysql -uroot -e "create database zabbix character set utf8mb4 collate utf8mb4_bin;"
sudo mysql -uroot -e " create user zabbix@localhost identified by 'pass';"
sudo mysql -uroot -e "grant all privileges on zabbix.* to zabbix@localhost;"
sudo mysql -uroot -e  "set global log_bin_trust_function_creators = 1;"
sudo zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql --default-character-set=utf8mb4 -uzabbix -ppass zabbix
sudo mysql -uroot -e  "set global log_bin_trust_function_creators = 0;"
# mysqldump -uroot zabbix   > ./back/zabbix.sql
mysql -uroot zabbix < zabbix.sql

sudo cp ./slave_install/config/etc/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

sudo systemctl restart zabbix-server zabbix-agent apache2 mysql.service
sudo systemctl enable zabbix-server zabbix-agent apache2#Установка apache2
