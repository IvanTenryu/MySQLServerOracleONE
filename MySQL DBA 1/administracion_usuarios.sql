-- Usuario administrador de la base de datos
CREATE USER 'admin02'@'localhost' IDENTIFIED BY 'admin02';
GRANT ALL PRIVILEGES ON *.* TO 'admin02'@'localhost' WITH GRANT OPTION;

-- Usuario normal
CREATE USER 'user02'@'localhost' IDENTIFIED BY 'user02';
GRANT SELECT, UPDATE, INSERT, DELETE, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE
ON *.* TO 'user02'@'localhost';

-- Usuario de solo lectura
CREATE USER 'lector01'@'localhost' IDENTIFIED BY 'lector01';
GRANT SELECT, EXECUTE ON *.* TO 'lector01'@'localhost';

-- Usuario para respaldos
CREATE USER 'back01'@'localhost' IDENTIFIED BY 'back01';
GRANT SELECT, RELOAD, LOCK TABLES, REPLICATION CLIENT ON *.* TO 'back01'@'localhost';


