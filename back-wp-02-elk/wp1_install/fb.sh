#!/bin/bash
sudo apt update
sudo apt install default-jdk -y
# Установка Filebeat
sudo dpkg -i filebeat_8.9.1_amd64-224190-656d53.deb
sudo dpkg -i elasticsearch_8.9.1_amd64-224190-509cdd.deb
sudo dpkg -i kibana_8.9.1_amd64-224190-c09868.deb
sudo dpkg -i logstash_8.9.1_amd64-224190-e7a1b1.deb
# Замена конфигурационного файла
sudo cp ./config/filebeat.yml /etc/filebeat/filebeat.yml
sudo cp ./config/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
sudo cp ./config/kibana.yml /etc/kibana/kibana.yml
sudo cp ./config/logstash.yml /etc/logstash/logstash.yml
sudo cp ./config/pipelines.yml /etc/logstash/pipelines.yml
sudo cp ./config/logstash-nginx-es.conf  /etc/logstash/conf.d/logstash-nginx-es.conf



# Добавление Filebeat в автозагрузку
sudo systemctl enable filebeat kibana logstash elasticsearch
sudo systemctl daemon-reload
# Перезапуск демона
sudo systemctl restart filebeat elasticsearch kibana logstash

#!/bin/bash

# Установка Filebeat#!/bin/bash

# Установка Filebeat
