SET GLOBAL log_bin_trust_function_creators = 1;

SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM vendedores;

SELECT (RAND()*(250-20+1))+20 AS ALEATORIO;

SELECT FLOOR((RAND()*(250-20+1))+20) AS ALEATORIO;

SELECT f_aleatorio(1,10) AS RESULTADO;







