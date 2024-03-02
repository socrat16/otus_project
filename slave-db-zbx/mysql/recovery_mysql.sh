#!/bin/bash
# скрипт потабилчного восстановления из бекапа.
 mysql -uroot  digmath < mysql_bac/digmath/prod_dig.sql
