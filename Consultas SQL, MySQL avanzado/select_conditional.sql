SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos WHERE SABOR = 'mango' AND TAMANO = '470 ml';

SELECT * FROM tabla_de_productos WHERE SABOR = 'mango' OR TAMANO = '470 ml';

SELECT * FROM tabla_de_productos WHERE NOT (SABOR = 'mango') OR TAMANO = '470 ml';

SELECT * FROM tabla_de_productos WHERE NOT (SABOR = 'mango' AND TAMANO = '470 ml');

SELECT * FROM tabla_de_productos WHERE SABOR IN ('mango', 'uva');

SELECT * FROM tabla_de_productos WHERE SABOR = 'mango' OR SABOR = 'uva';

SELECT * FROM tabla_de_productos WHERE SABOR = 'mango' OR SABOR = 'uva';

SELECT * FROM tabla_de_clientes 
WHERE CIUDAD IN('ciudad de mexico', 'guadalajara') 
AND EDAD <= 25;

SELECT DISTINCT * FROM tabla_de_clientes WHERE NOMBRE '%ez';

SELECT DISTINCT ENVASE, TAMANO FROM tabla_de_productos;

SELECT DISTINCT BARRIO FROM tabla_de_clientes WHERE CIUDAD = 'ciudad de mexico';

SELECT * FROM tabla_de_productos LIMIT 10;

SELECT * FROM tabla_de_productos LIMIT 5;

SELECT * FROM tabla_de_productos LIMIT 5,4;



