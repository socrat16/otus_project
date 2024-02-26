#  Реализация отказоустойчивого Web-приложения
Инфраструктура:  
1  	**proxy-ngx**  ВМ Nginx- реверс прокси  
2   **back-wp-01-master-db**    ВМ Apache Mysql wp - 1 бэк с wordpress и master БД  
3   **back-wp-02-elk** ВМ Apache wp ELK - 2 бэк с wordpress и журналами в elastic (ELK)+ filebeat    (конфиги хранить в GitHub)  
4   **slave-db-zbx**  ВМ replica БД c системой мониторинга Zabbix. Тут скрипт для бэкапа БД со slave сервера (потаблично с указанием позиции бинлога, скрипт хранить в GitHub), Zabbix (конфиги хранить в GitHub)  

+ На каждой ВМ агенты: zabbix-agent,filebeat  

DRP план.

Описание/Пошаговая инструкция выполнения домашнего задания:  
создать репозитории в GitHub (конфиги, скрипты, cron файлы и т.д.)  
разработать план аварийного восстановления (на основании скриптов, конфигов, cron файлов и бэкапов в максимально короткие сроки настроить новый сервер "с нуля")  
продемонстрировать аварийное восстановление (на чистом сервере за короткий промежуток времени получить полностью настроенную рабочую систему)  
