SELECT * FROM tb_producto;

UPDATE tb_producto SET PRECIO_LISTA = 5 WHERE CODIGO = '1000889';

UPDATE tb_producto 
SET DESCRIPCION = 'Sabor de la montaña',
TAMANO = '1 Litro',
ENVASE = 'Botella pet'
WHERE CODIGO = '1000889';

SELECT * FROM tb_cliente;

UPDATE tb_cliente
SET VOLUMEN_COMPRA = VOLUMEN_COMPRA*10;

SELECT * FROM tb_cliente;

UPDATE tb_cliente SET 
DIRECCION = 'Jorge Emilio 23',
BARRIO = 'San Antonio',
CIUDAD = 'Guadalajara',
ESTADO = 'JC',
CP = '44700000'
WHERE DNI = '5840119709';

SELECT * FROM tb_cliente WHERE DNI = '5840119709';

SELECT * FROM tb_vendedor;

SELECT * FROM jugos_ventas.tabla_de_vendedores;

SELECT * FROM tb_vendedor A
INNER JOIN jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3);

UPDATE tb_vendedor A
INNER JOIN jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3)
SET A.DE_VACACIONES = B.VACACIONES;

SELECT A.DNI FROM tb_cliente A
INNER JOIN tb_vendedor B
ON A.BARRIO = B.BARRIO;

UPDATE tb_cliente A 
INNER JOIN 
tb_vendedor B
ON A.BARRIO = B.BARRIO
SET A.VOLUMEN_COMPRA = A.VOLUMEN_COMPRA * 1.3;





