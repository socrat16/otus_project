echo "CREATE DATABASE wordpress;" | mysql -u root

# Импортируем таблицы
for table in /home/naagapov/back/db/wordpress/*.sql; do
	    echo "SET FOREIGN_KEY_CHECKS=1;" > $table.tmp
	        cat $table >> $table.tmp
		    mysql -u root  wordpress < $table.tmp
		        rm $table.tmp
		done

