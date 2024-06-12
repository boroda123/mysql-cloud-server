FROM mysql:8.0

RUN chown -R mysql:root /var/lib/mysql/

ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

ENV MYSQL_DATABASE=demo
ENV MYSQL_USER=serbo
ENV MYSQL_PASSWORD=Test1234!
ENV MYSQL_ROOT_PASSWORD=Test1234!

#RUN mkdir /etc/mysql

#ADD data.sql /etc/mysql/data.sql
#RUN sed -i 's/MYSQL_DATABASE/'$MYSQL_DATABASE'/g' /etc/mysql/data.sql
#RUN cp /etc/mysql/data.sql /docker-entrypoint-initdb.d

EXPOSE 3306