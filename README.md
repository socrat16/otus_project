# otus_project
Инфраструктура:  
1  	** proxy-ngx **  ВМ Nginx- реверс прокси  
2   back-wp-01-master-db   ВМ Apache Mysql wp - 1 бэк с wordpress и master БД  
3   back-wp-01-elk ВМ Apache wp ELK - 2 бэк с wordpress и журналами в elastic (ELK)+ filebeat  
4   slave-db-zbx ВМ replica БД c системой мониторинга Zabbix  

+ На каждой ВМ будут агенты: zabbix-agent,filebeat  

DRP план.
