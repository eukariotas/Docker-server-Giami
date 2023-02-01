FROM mysql:8.0.32-debian
RUN apt -y update
RUN apt-get -y install git
RUN apt-get install -y openjdk-17-jdk
RUN rm -rf /home/*
RUN mkdir /home/giame 
RUN echo "Descargando base de datos: "
RUN git -C /home/giame clone https://github.com/eukariotas/bbdd_giame
RUN echo "Descargando servicio: "
RUN git -C /home/giame clone https://github.com/eukariotas/Service-giame
RUN echo "Cargando base de datos: "
RUN mv /home/giame/bbdd_giame/Dump20230131.sql /docker-entrypoint-initdb.d/
