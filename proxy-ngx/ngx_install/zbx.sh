sudo dpkg -i zabbix-release_6.4-1+ubuntu22.04_all.deb
sudo apt update
sudo apt install zabbix-agent2 zabbix-agent2-plugin-* -y
sudo cp ./config/zabbix_agent2.conf /etc/zabbix/zabbix_agent2.conf
sudo systemctl restart zabbix-agent2
sudo systemctl enable zabbix-agent2

