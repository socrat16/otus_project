# Скрипт восстановления потаблично БД вордпресс из бекапа в папке mysql_bac
echo "CREATE DATABASE wordpress;" | mysql -u root

# Импортируем таблицы
for table in /home/naagapov/wp0_install/mysql_bac/wordpress*.sql; do
	    echo "SET FOREIGN_KEY_CHECKS=1;" > $table.tmp
	        cat $table >> $table.tmp
		    mysql -u root  wordpress < $table.tmp
		        rm $table.tmp
		done

