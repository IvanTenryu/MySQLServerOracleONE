-- Usuario administrador de la base de datos
CREATE USER 'admin02'@'localhost' IDENTIFIED BY 'admin02';

GRANT ALL PRIVILEGES ON *.* TO 'admin02'@'localhost' WITH GRANT OPTION;

-- Usuario normal
CREATE USER 'user02'@'localhost' IDENTIFIED BY 'user02';

GRANT SELECT, UPDATE, INSERT, DELETE, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE
ON *.* TO 'user02'@'localhost';






