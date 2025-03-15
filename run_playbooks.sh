#!/bin/bash

# Резервное копирование конкретной базы данных и всех ее коллекций + резервная копия всех баз данных
ansible-playbook mongo_backups/binary_backup.yml -i hosts_mongo

# Резервное копирование коллкций конкретной базы данных в формат JSON
ansible-playbook mongo_backups/text_backup.yml -i hosts_mongo

# Резервное копирование всех файлов MongoDB с отключением работы MongoDB сервиса
ansible-playbook mongo_backups/cold_backup.yml -i hosts_mongo
