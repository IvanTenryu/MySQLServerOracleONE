SELECT * FROM tabla_de_clientes;
SELECT * FROM tabla_de_vendedores;

SELECT tabla_de_clientes.NOMBRE AS Clientes,
tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE AS Vendedores
FROM tabla_de_clientes
INNER JOIN tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE AS Clientes,
tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE AS Vendedores
FROM tabla_de_clientes
LEFT JOIN tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE AS Clientes,
tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE AS Vendedores,
VACACIONES
FROM tabla_de_clientes
RIGHT JOIN tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE AS Clientes,
tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE AS Vendedores,
VACACIONES
FROM tabla_de_clientes, tabla_de_vendedores
WHERE tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;
