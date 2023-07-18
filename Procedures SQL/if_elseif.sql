SELECT * FROM tabla_de_productos;

SELECT PRECIO_DE_LISTA FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '1000800';

CALL precio_producto('1000801');

CALL precio_producto('1013793');

SELECT * FROM facturas;

CALL comparacion_ventas(20150101, 20150102);
