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

SELECT * FROM facturas WHERE FECHA_VENTA = '2017-01-01' LIMIT 10;

SELECT * FROM tabla_de_clientes ORDER BY NOMBRE;

SELECT * FROM tabla_de_clientes ORDER BY NOMBRE DESC, CIUDAD ASC;

SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA;

SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA DESC;

SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO;

SELECT * FROM items_facturas;

SELECT * FROM tabla_de_productos
WHERE NOMBRE_DEL_PRODUCTO = 'refrescante' 
AND TAMANO = '1 Litro' 
AND SABOR = 'Frutilla/Limon';

SELECT * FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = "1101035" ORDER BY CANTIDAD DESC LIMIT 3;

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabla_de_clientes;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS TOTAL_LIMITE FROM tabla_de_clientes GROUP BY ESTADO;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAYOR FROM tabla_de_productos GROUP BY ENVASE;

SELECT ENVASE, COUNT(*) AS PRECIO_MAYOR FROM tabla_de_productos GROUP BY ENVASE;

SELECT BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE
FROM tabla_de_clientes GROUP BY BARRIO LIMIT 10;

SELECT MAX(CANTIDAD) AS CANTIDAD_MAXIMA FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = "1101035";

SELECT COUNT(*) FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = "1101035" AND CANTIDAD = 99;



