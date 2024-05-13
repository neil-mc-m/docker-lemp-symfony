CREATE USER `symfony`@`%` IDENTIFIED BY 'symfony';
CREATE DATABASE `symfony`;
GRANT ALL PRIVILEGES ON symfony_test.* TO 'symfony'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON symfony.* TO 'symfony'@'%' WITH GRANT OPTION;
