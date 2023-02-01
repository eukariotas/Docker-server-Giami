#!/bin/bash
dokcer compose down
docker compose build
docker compose up -d
docker exec -d giame-debian-server sh -c 'mysql -u root -proot < /docker-entrypoint-initdb.d/Dump20230131.sql'
echo "Ready to go!"