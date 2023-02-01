#!/bin/bash
cd /home/giame
echo "Descargando base de datos: "
wget https://github.com/eukariotas/bbdd_giame/blob/main/Dump20230126.sql

echo "Descargando el servicio...."
wget https://github.com/eukariotas/Service-giame/blob/master/out/artifacts/api_service_jar/api-service.jar