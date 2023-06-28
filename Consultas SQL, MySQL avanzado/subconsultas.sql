SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT * FROM tabla_de_clientes
WHERE BARRIO IN ('condesa','del valle','contadero','oblatos');

SELECT * FROM tabla_de_clientes
WHERE BARRIO IN (SELECT DISTINCT BARRIO FROM tabla_de_vendedores);

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS precio_maximo
FROM tabla_de_productos GROUP BY ENVASE;

SELECT X.ENVASE, X.precio_maximo 
FROM ()
AS precio
