#!/bin/bash
#Vacia el directorio en el que se ejecuta
rm -rf /home/giame/*

#Descarga el dump
git -C /home/giame/ clone https://github.com/eukariotas/bbdd_giame/blob/main/Dump20230126.sql



#Descarga el jar
git -C /home/giame/ clone https://github.com/eukariotas/Service-giame

echo "Descarga finalizada"