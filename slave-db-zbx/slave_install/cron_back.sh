#!/bin/bash

# Создание файла crontab
crontab -l > temp

# Добавление задания в файл crontab
echo "*/5 * * * * /home/naagapov/back_sql.sh" >> temp
#cho "*/5 * * * * sudo /home/naagapov/scp_script.sh" >> temp
# Замена текущего файла crontab новым
crontab temp

# Удаление временного файла
rm temp

