#  Реализация отказоустойчивого Web-приложения
Инфраструктура:  
1  	**proxy-ngx** Nginx - реверс прокси Nginx. Агенты: Filebeat (логи Nginx для ELK), Zabbix agent2 (метрики для мониторинга\алертинга в Zabbix).  
2   **back-wp-01-master-db** Apache,Mysql,Wordpress,Zabbix agent2,Filebeat.Первый Apache бэкенд с Wordpress и Master БД Mysql.  
3   **back-wp-02-elk** Apache,Mysql,Wordpress,Zabbix agent2,ELK.Второй Apache бэкенд с Wordpress. Использует БД back-wp-01-master-db. Развернут стек ELK, с приемом логов от других ВМ.  
4   **slave-db-zbx** Apache,Mysql,Zabbix,Zabbix agent2,Mysql,Filebeat.Replica БД (back-wp-01-master-db )c системой мониторинга Zabbix.

DRP план.
1. На proxy-ngx  запустить скрипты в ngx_install.Поочередно:
2. На back-wp-01-master-db запустить скрипты в  wp0_install.Поочередно: (up_db.sh - восстановление из бекапа)  
3. На back-wp-02-elk запустить скрипты в wp1_install.Поочередно: (export.ndjson - файл для импорта бекапа дэша и discover: kibana -> Stack Managment -> Saved Objects -> import)
4. На  slave-db-zbx  запустить скрипты в slave_install.Поочередно: (cron_back.sh - крон для скрипта бекапа back_sql.sh (БД Wordpress), slave.sh - скрипт настройки mysql реплики.




![image](https://github.com/socrat16/otus_project/assets/71122445/e1866aeb-ed1f-4c60-b526-f0a368f708c7)
