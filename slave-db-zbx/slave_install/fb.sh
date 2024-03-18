#!/bin/bash

# Установка Filebeat
sudo dpkg -i filebeat_8.9.1_amd64-224190-656d53.deb

# Замена конфигурационного файла
sudo cp ./config/filebeat.yml /etc/filebeat/filebeat.yml

# Добавление Filebeat в автозагрузку
sudo systemctl enable filebeat

# Перезапуск демона
sudo systemctl restart filebeat
#!/bin/bash

# Установка Filebeat
