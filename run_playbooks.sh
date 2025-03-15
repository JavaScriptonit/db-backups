#!/bin/bash

# ==================================================================================================
# MongoDB
# ==================================================================================================

# Резервное копирование конкретной базы данных и всех ее коллекций + резервная копия всех баз данных
ansible-playbook mongo_backups/binary_backup.yml -i hosts_mongo

# Резервное копирование коллкций конкретной базы данных в формат JSON
ansible-playbook mongo_backups/text_backup.yml -i hosts_mongo

# Резервное копирование всех файлов MongoDB с отключением работы MongoDB сервиса
ansible-playbook mongo_backups/cold_backup.yml -i hosts_mongo

# ==================================================================================================
# PostgreSQL
# ==================================================================================================

# Резервное копирование всех файлов PostgreSQL с отключением работы PostgreSQL сервиса
ansible-playbook postgre_backups/cold_backup.yml -i hosts_postgres

# Резервное копирование базы данных в формат .sql
ansible-playbook postgre_backups/text_backup.yml -i hosts_postgres

# Резервное копирование конкретной базы данных в формат .dump + резервная копия всех баз данных
ansible-playbook postgre_backups/binary_backup.yml -i hosts_postgres 