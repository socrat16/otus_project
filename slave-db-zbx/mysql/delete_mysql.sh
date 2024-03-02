#!/bin/bash
#https://askubuntu.com/questions/1270094/how-to-completely-remove-mysql-from-my-system
sudo systemctl stop mysqld
sudo apt purge mysql-server mysql-common mysql-server-core-* mysql-client-core-*
sudo rm -rf /var/lib/mysql/
sudo rm -rf /etc/mysql/
sudo rm -rf /var/log/mysql
sudo deluser --remove-home mysql
sudo delgroup mysql
sudo add-apt-repository --remove ppa:theppayouused/ppa
