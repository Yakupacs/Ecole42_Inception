CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'yacis'@'%' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON wordpress.* TO 'yacis'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root12345';
