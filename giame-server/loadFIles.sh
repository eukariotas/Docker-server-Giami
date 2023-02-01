#!/bin/bash
#Vacia el directorio en el que se ejecuta
rm -rf ./*

#Descarga el dump
git clone https://github.com/eukariotas/bbdd_giame/blob/main/Dump20230126.sql



#Descarga el jar
git clone https://github.com/eukariotas/Service-giame

/bin/bash -c "while true; do sleep 1000; done"