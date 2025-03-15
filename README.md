# db-backups

https://habr.com/ru/companies/otus/articles/715808/ - Резервное копирование и восстановление СУБД MySQL

https://habr.com/ru/articles/516428/ - Путеводитель по резервному копированию баз данных

https://habr.com/ru/companies/selectel/articles/804183/ - Бэкапы для самых маленьких и матерых

https://habr.com/ru/companies/softpoint/articles/795305/ - Бэкап, бэкап и еще раз бэкап








```
git add .
git commit -m "add all postgresql backup files"
git push -u origin main
```



# Плейбук Ansible для резервного копирования MongoDB и PostgreSQL
/Users/andreyshabunov/PhpstormProjects/db-backups/backup_postgre.yml
/Users/andreyshabunov/PhpstormProjects/db-backups/backup_mongo.yml

Команды:
```
# Создание резервной копии всех баз данных PostgreSQL
pg_dumpall --file=/backups/postgresql_backup_$(date +%F_%H%M%S)

# Выполнение резервного копирования MongoDB
mongodump --out /backups/mongodb_backup_$(date +%F_%H%M%S)
```
Результат:
```
postgres@juice-shop-server:~$ ls -l /backups/
total 24
drwxr-xr-x 3 root     root     4096 Mar 14 14:14 mongodb_backup_2025-03-14_141436
drwxr-xr-x 3 root     root     4096 Mar 14 14:18 mongodb_backup_2025-03-14_141806
-rw-rw-r-- 1 postgres postgres 4591 Mar 14 14:33 postgresql_backup_2025-03-14_143307
-rw-rw-r-- 1 postgres postgres 4591 Mar 14 14:35 postgresql_backup_2025-03-14_143537
```