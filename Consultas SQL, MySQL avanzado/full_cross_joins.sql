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
tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
RIGHT JOIN tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;
