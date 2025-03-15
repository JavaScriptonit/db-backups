#!/bin/bash

ansible-playbook backup_mongo.yml -i hosts
ansible-playbook backup_postgre.yml -i hosts-postgres