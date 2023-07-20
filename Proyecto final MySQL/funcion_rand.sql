SET GLOBAL log_bin_trust_function_creators = 1;

SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM vendedores;

SELECT (RAND()*(250-20+1))+20 AS ALEATORIO;

SELECT FLOOR((RAND()*(250-20+1))+20) AS ALEATORIO;

/***** Inicio de función para número aleatorio *****/
DELIMITER $$
USE `empresa`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `f_aleatorio`(min INT, max INT) RETURNS int
BEGIN
	DECLARE vAresultado INT;
    SELECT FLOOR((RAND()*(max-min+1))+min)
		INTO vresultado;
RETURN vresultado;
END$$
/***** Fin de función para número aleatorio *****/

SELECT f_aleatorio(1,10) AS RESULTADO;

/******************** Inicia función cliente aleatorio ********************/
SELECT COUNT(*) FROM clientes;

DELIMITER$$
CREATE DEFINER=`root`@`localhost` FUNCTION `f_cliente_aleatorio`() RETURNS int
BEGIN
DECLARE vresultado VARCHAR(11);
DECLARE vmax INT;
DECLARE valeatorio INT;
SELECT COUNT(*) INTO vmax FROM clientes;
SET valeatorio = f_aleatorio(1, vmax);
SET valeatorio = valeatorio-1;
SELECT DNI INTO vresultado FROM clientes LIMIT valeatorio,1;
RETURN vresultado;
END$$

SELECT * FROM clientes LIMIT 7;

SELECT * FROM clientes LIMIT 5,2;

SELECT f_cliente_aleatorio() AS CLIENTE;
/******************** Finaliza función cliente aleatorio ********************/

/******************** Inicia función producto aleatorio ********************/
DELIMITER$$
CREATE DEFINER=`root`@`localhost` FUNCTION `f_producto_aleatorio`() RETURNS varchar(10) CHARSET utf8mb4
BEGIN
DECLARE vresultado VARCHAR(10);
DECLARE vmax INT;
DECLARE valeatorio INT;
SELECT COUNT(*) INTO vmax FROM productos;
SET valeatorio = f_aleatorio(1,vmax);
SET valeatorio = valeatorio-1;
SELECT CODIGO INTO vresultado FROM productos LIMIT valeatorio,1;
RETURN vresultado;
END$$

SELECT f_producto_aleatorio() AS PRODUCTO;
/******************** Finaliza función producto aleatorio ********************/

/******************** Inicia función vendedor aleatorio ********************/
DELIMITER$$
CREATE DEFINER=`root`@`localhost` FUNCTION `f_vendedor_aleatorio`() RETURNS varchar(5) CHARSET utf8mb4
BEGIN
DECLARE vresultado VARCHAR(5);
DECLARE vmax INT;
DECLARE valeatorio INT;
SELECT COUNT(*) INTO vmax FROM vendedores;
SET valeatorio = f_aleatorio(1,vmax);
SET valeatorio = valeatorio-1;
SELECT MATRICULA INTO vresultado FROM vendedores LIMIT valeatorio,1;
RETURN vresultado;
END$$

SELECT f_vendedor_aleatorio() AS PRODUCTO;
/******************** Finaliza función producto aleatorio ********************/

