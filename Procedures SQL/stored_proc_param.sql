CALL incluir_producto_parametros(
	'1000800',
    'Sabor el mar',
    '700 ml',
    'Naranja',
    'Botella de vidrio',
    2.25);

SELECT * FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '1000800';

CALL reajuste_comision(.2);

SELECT * FROM tabla_de_vendedores;

CALL incluir_producto_parametros(
	'1000802',
    'Sabor de la montaña',
    '250 ml',
    'Caña',
    'Botella de vidrio',
    1.2);

SELECT * FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '1000802';



