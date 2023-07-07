ALTER TABLE `ventas_jugos`.`tb_cliente` 
DROP COLUMN `PRECIO_LISTA`;

INSERT INTO tb_producto(
	CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE, PRECIO_LISTA)
    VALUES (
    '','','','','',''
    );
    
    
INSERT INTO tb_cliente (
	DNI, NOMBRE, DIRECCION, BARRIO, 
    CIUDAD, ESTADO, CP, FECHA_NAC, 
    EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, 
    PRIMERA_COMPRA) VALUES (
    '9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', 
    'Barrio del Niño Jesús', 'Ciudad de México', 'EM', 
    '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1);
INSERT INTO tb_cliente (
	DNI, NOMBRE, DIRECCION, BARRIO, 
    CIUDAD, ESTADO, CP, FECHA_NAC, 
    EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, 
    PRIMERA_COMPRA) VALUES (
    '7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', 
    'Carola', 'Ciudad de México', 'EM', 
    '88202912', '1992-01-25', 29, 'M', 120000, 200000, 1);
INSERT INTO tb_cliente (
	DNI, NOMBRE, DIRECCION, BARRIO, 
    CIUDAD, ESTADO, CP, FECHA_NAC, 
    EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, 
    PRIMERA_COMPRA) VALUES (
    '5576228758', 'Patricia Olivera', 'Pachuca 75',  
    'Condesa', 'Ciudad de México', 'EM', '88192029', 
    '1995-01-14', 25, 'F', 70000, 160000, 1);

INSERT INTO tb_producto(
	CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE, PRECIO_LISTA
) VALUES (
	'1040107', 'Light', 'Sandía', '350 ml', 'Lata', 4.56
);

INSERT INTO tb_producto(
	CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE, PRECIO_LISTA
) VALUES (
	'1040108', 'Light', 'Guanábana', '350 ml', 'Lata', 4.00
);

INSERT INTO tb_producto VALUES 
	('1040109', 'Light', 'Asahí', '350 ml', 'Lata', 5.60),
    ('1040110', 'Light', 'Manzana', '350 ml', 'Lata', 6.00),
    ('1040111', 'Light', 'Mango', '350 ml', 'Lata', 3.50);

SELECT * FROM tb_producto;

USE ventas_jugos;

INSERT INTO tb_cliente
SELECT DNI, NOMBRE, DIRECCION_1 AS DIRECCION,
BARRIO, CIUDAD, ESTADO, CP, FECHA_DE_NACIMIENTO 
AS FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_DE_CREDITO
AS LIMITE_CREDITO, VOLUMEN_DE_COMPRA AS VOLUMEN_COMPRA,
PRIMERA_COMPRA FROM jugos_ventas.tabla_de_clientes
WHERE DNI NOT IN (SELECT DNI FROM tb_cliente);

SELECT * FROM tb_producto;

INSERT INTO tb_producto
SELECT CODIGO_DEL_PRODUCTO AS CODIGO,
NOMBRE_DEL_PRODUCTO AS DESCRIPCION, 
SABOR, TAMANO, ENVASE, PRECIO_DE_LISTA AS PRECIO_LISTA
FROM jugos_ventas.tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO NOT IN (SELECT CODIGO FROM tb_producto);

SELECT * FROM tb_producto;

SELECT * FROM tb_cliente;

SELECT * FROM tb_vendedor;

