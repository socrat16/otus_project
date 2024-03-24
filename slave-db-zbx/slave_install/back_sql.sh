# Скрипт потабличного бекапа  с реплики БД вордпресс
BACKUP_DIR="/home/naagapov/mysql_bac"

# Получение списка DB
DB_NAMES=$(mysql  -e "show databases\g;" | awk '{print $1}' | grep -v '^Database')

for DB_NAME in $DB_NAMES
do
	if [ "$DB_NAME" = "wordpress" ]; then
		mkdir -p "${BACKUP_DIR}/${DB_NAME}"
		TABLES=$(mysql -uroot $DB_NAME -e "SHOW TABLES;" | awk '{ print $1}' | grep -v '^Tables' )
		for TABLE in $TABLES
		do
			 mysqldump --create-options --set-gtid-purged=OFF  -uroot   $DB_NAME $TABLE > "${BACKUP_DIR}/${DB_NAME}/${TABLE}.sql"
		 done
	fi
done
