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

/******************** Inicia función venta ********************/
SET GLOBAL log_bin_trust_function_creators = 1;

SELECT 
	f_cliente_aleatorio() AS CLIENTE, 
    f_producto_aleatorio() AS PRODUCTO, 
    f_vendedor_aleatorio() AS VENDEDOR;

CALL sp_venta('20230421', 15, 100);

SELECT NUMERO FROM facturas ORDER BY NUMERO ASC LIMIT 88000;

DROP TABLE facturas;
DROP TABLE items;

CREATE TABLE facturas(
NUMERO INT NOT NULL,
FECHA DATE,
DNI VARCHAR(11) NOT NULL,
MATRICULA VARCHAR(5) NOT NULL,
IMPUESTO FLOAT,
PRIMARY KEY(NUMERO),
FOREIGN KEY(DNI) REFERENCES clientes(DNI),
FOREIGN KEY(MATRICULA) REFERENCES vendedores(MATRICULA)
);

CREATE TABLE items(
NUMERO INT NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY(NUMERO, CODIGO),
FOREIGN KEY(NUMERO) REFERENCES facturas(NUMERO),
FOREIGN KEY(CODIGO) REFERENCES productos(CODIGO)
);

INSERT INTO facturas
SELECT NUMERO, FECHA_VENTA AS FECHA, DNI, MATRICULA, IMPUESTO
FROM jugos_ventas.facturas;


INSERT INTO items
SELECT NUMERO, CODIGO_DEL_PRODUCTO AS CODIGO, CANTIDAD, PRECIO
FROM jugos_ventas.items_facturas;

SELECT * FROM items;
SELECT * FROM facturas;

SELECT NUMERO FROM facturas ORDER BY NUMERO DESC LIMIT 88000;

CALL sp_venta('20230421', 20, 100);
SELECT MAX(NUMERO) FROM facturas;
/******************** Finaliza función venta ********************/

/******************** Inicia función facturación ********************/
CALL sp_venta('20230421', 20, 100);

SELECT A.FECHA, SUM(B.CANTIDAD*B.PRECIO) AS FACTURACIÓN
FROM facturas A
INNER JOIN items B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA = '20230421'
GROUP BY A.FECHA;

SELECT YEAR(FECHA), CEIL(SUM(IMPUESTO * (CANTIDAD * PRECIO))) 
AS RESULTADO
FROM facturas F
INNER JOIN items I ON F.NUMERO = I.NUMERO
WHERE YEAR(FECHA) = 2023
GROUP BY YEAR(FECHA);

/******************** Finaliza función facturación ********************/

/******************** Inicia mejora de triggers ********************/



/******************** Finaliza mejora de triggers ********************/