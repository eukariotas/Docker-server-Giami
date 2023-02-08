#!/bin/bash
dokcer compose down
docker compose up -d
docker exec giame-debian-server sh -c 'mysql -u root -proot < /docker-entrypoint-initdb.d/Dump20230131.sql'
docker exec giame-debian-server sh -c 'java -jar /home/giame/Service-giame/build/libs/api-service-0.0.1-SNAPSHOT.jar'
echo "Ready to go!"