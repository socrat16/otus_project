#  Реализация отказоустойчивого Web-приложения
Инфраструктура:  
1  	**proxy-ngx** Nginx - реверс прокси c бекапами БД Wordpress,Zabbix,Elasticsearch. Агенты: Filebeat (логи Nginx для ELK), Zabbix agent2 (метрики для мониторинга\алертинга в Zabbix).  
2   **back-wp-01-master-db** Apache,Mysql,Wordpress,Zabbix agent2.Первый Apache бэкенд с Wordpress и Master БД Mysql.  
3   **back-wp-02-elk** Apache,Mysql,Wordpress,Zabbix agent2,ELK.Второй Apache бэкенд с Wordpress. Использует БД back-wp-01-master-db. Развернут стек ELK, с приемом логов от Nginx с VM proxy-ngx.  
4   **slave-db-zbx** Apache,Mysql,Zabbix,Zabbix agent2.Replica БД c системой мониторинга Zabbix.Тут бекап по Cron БД Wordpress,Zabbix(потаблично с указанием позиции бинлога).

DRP план.

Описание/Пошаговая инструкция выполнения домашнего задания:  
создать репозитории в GitHub (конфиги, скрипты, cron файлы и т.д.)  
разработать план аварийного восстановления (на основании скриптов, конфигов, cron файлов и бэкапов в максимально короткие сроки настроить новый сервер "с нуля")  
продемонстрировать аварийное восстановление (на чистом сервере за короткий промежуток времени получить полностью настроенную рабочую систему)  



![image](https://github.com/socrat16/otus_project/assets/71122445/e1866aeb-ed1f-4c60-b526-f0a368f708c7)
