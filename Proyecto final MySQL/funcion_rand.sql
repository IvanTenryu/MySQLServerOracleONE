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







