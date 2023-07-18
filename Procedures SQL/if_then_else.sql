SELECT * FROM tabla_de_clientes;

SELECT DNI FROM tabla_de_clientes WHERE FECHA_DE_NACIMIENTO < '2005-07-18';

CALL edad_clientes(5648641702);

SELECT * FROM facturas;

CALL evaluacion_facturas('2015-01-01');
