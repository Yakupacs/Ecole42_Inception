FROM debian:buster
RUN apt-get update 
RUN apt-get install mariadb-server -y
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools /var/www/
EXPOSE 3306
RUN service mysql start && mysql < /var/www/initial_db.sql && rm -f /var/www/initial_db.sql;
CMD ["mysqld"]