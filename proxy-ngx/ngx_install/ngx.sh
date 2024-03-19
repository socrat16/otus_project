#!/bin/bash
sudo apt-get install nginx -y



# Замена конфигурационного файла
sudo cp ./config/default  /etc/nginx/sites-available/default

# Добавление nginx в автозагрузку
sudo systemctl enable nginx

# Перезапуск демона
sudo systemctl restart nginx

