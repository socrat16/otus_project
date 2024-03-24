#  Реализация отказоустойчивого Web-приложения
Инфраструктура:  
1  	**proxy-ngx** Nginx - реверс прокси Nginx. Агенты: Filebeat (логи Nginx для ELK), Zabbix agent2 (метрики для мониторинга\алертинга в Zabbix).  
2   **back-wp-01-master-db** Apache,Mysql,Wordpress,Zabbix agent2,Filebeat.Первый Apache бэкенд с Wordpress и Master БД Mysql.  
3   **back-wp-02-elk** Apache,Mysql,Wordpress,Zabbix agent2,ELK.Второй Apache бэкенд с Wordpress. Использует БД back-wp-01-master-db. Развернут стек ELK, с приемом логов от других ВМ.  
4   **slave-db-zbx** Apache,Mysql,Zabbix,Zabbix agent2,Mysql,Filebeat.Replica БД (back-wp-01-master-db )c системой мониторинга Zabbix.

DRP план.
1. На proxy-ngx  запустить скрипты в ngx_install.Поочередно:fb.sh,ngx.sh,zbx.sh,secure.sh
2. На back-wp-01-master-db запустить скрипты в  wp0_install.Поочередно:fb.sh,zbx.sh,wp.sh,up_db.sh,secure.sh.
3. На back-wp-02-elk запустить скрипты в wp1_install.Поочередно:zbx.sh,wp.sh,felk.sh (export.ndjson - файл для импорта бекапа дэша и discover: kibana -> Stack Managment -> Saved Objects -> import)
4. На  slave-db-zbx  запустить скрипты в slave_install.Поочередно:  slave.sh - скрипт настройки mysql реплики.

Заметки:
up_db.sh - восстановление из бекапа.  
wp.sh  - установка agent2,wordpress,mysql,php.  
cron_back.sh - крон для скрипта бекапа back_sql.sh (БД Wordpress).  
back_sql.sh - cкрипт для создания потабличного бекапа.  
slave.sh - скрипт настройки mysql реплики.  

![image](https://github.com/socrat16/otus_project/assets/71122445/1a54fa5e-b9bf-4309-914a-4da81b7b2ce7)
