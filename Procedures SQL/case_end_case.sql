SELECT DISTINCT SABOR FROM tabla_de_productos;

SELECT SABOR FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '1002767';

CALL define_sabor('1096818');

SELECT SABOR, CODIGO_DEL_PRODUCTO FROM tabla_de_productos;

CALL define_sabor('1000800');
