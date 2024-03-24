sudo apt install iptables-persistent netfilter-persistent -y
sudo iptables-restore < ./config/iptables.rules
sudo netfilter-persistent save
