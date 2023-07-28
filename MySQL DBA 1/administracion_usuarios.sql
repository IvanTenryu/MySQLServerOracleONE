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

-- Usuario administrador generico de la base de datos
CREATE USER 'admingenerico02'@'%' IDENTIFIED BY 'admingenerico02';
GRANT ALL PRIVILEGES ON *.* TO 'admingenerico02'@'%' WITH GRANT OPTION;

-- Usuario con acceso limitado a la tabla
CREATE USER 'user03'@'%' IDENTIFIED BY 'user03';
GRANT SELECT, INSERT, UPDATE, DELETE ON jugos_ventas.facturas TO 'user03'@'%';

-- Usuario con acceso limitado a los esquemas
CREATE USER 'user04'@'%' IDENTIFIED BY 'user04';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE
ON jugos_ventas.* TO 'user04'@'%';






