SELECT COUNT(*) FROM tabla_de_clientes;

SELECT DISTINCT a.DNI, a.NOMBRE, b.DNI
FROM tabla_de_clientes a
INNER JOIN facturas b
ON a.DNI = b.DNI;

SELECT DISTINCT a.DNI, a.NOMBRE, a.CIUDAD, b.DNI
FROM tabla_de_clientes a
LEFT JOIN facturas b
ON a.DNI = b.DNI
WHERE b.DNI IS NULL;

SELECT DISTINCT b.DNI, b.NOMBRE, b.CIUDAD, a.DNI
FROM facturas a
RIGHT JOIN tabla_de_clientes b
ON a.DNI = b.DNI
WHERE a.DNI IS NULL;