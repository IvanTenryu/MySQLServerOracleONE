CREATE TABLE tb_vendedor(
MATRICULA VARCHAR(5) NOT NULL,
NOMBRE VARCHAR(100) NULL,
BARRIO VARCHAR(50) NULL,
COMISION FLOAT NULL,
FECHA_ADMISION DATE NULL,
DE_VACACIONES BIT(1) NULL,
PRIMARY KEY (MATRICULA)
);

CREATE TABLE tb_producto(
CODIGO VARCHAR(10) NOT NULL,
DESCRIPCION VARCHAR(100) NULL,
SABOR VARCHAR(50) NULL,
TAMANO VARCHAR(50) NULL,
ENVASE VARCHAR(50) NULL,
PRECIO_LISTA FLOAT NULL,
PRIMARY KEY (CODIGO)
);

CREATE TABLE tb_cliente(
DNI VARCHAR(11) NOT NULL,
NOMBRE VARCHAR(100) NULL,
DIRECCION VARCHAR(150) NULL,
BARRIO VARCHAR(50) NULL,
CIUDAD VARCHAR(50) NULL,
ESTADO VARCHAR(50) NULL,
CP VARCHAR(10) NULL,
FECHA_NAC DATE DEFAULT NULL,
EDAD INT(2) NULL,
SEXO VARCHAR(1) NULL,
LIMITE_CREDITO FLOAT DEFAULT NULL,
VOLUMEN_COMPRA FLOAT DEFAULT NULL,
PRIMERA_COMPRA BIT(1) NULL,
PRECIO_LISTA FLOAT NULL,
PRIMARY KEY (DNI)
);

CREATE TABLE tb_venta(
NUMERO INTEGER NOT NULL,
FECHA DATE DEFAULT NULL,
DNI VARCHAR(11) NOT NULL,
MATRICULA VARCHAR(5) NOT NULL,
IMPUESTO FLOAT,
PRIMARY KEY(NUMERO)
);

ALTER TABLE tb_venta 
ADD CONSTRAINT FK_CLIENTE
FOREIGN KEY (DNI)
REFERENCES tb_cliente(DNI);

ALTER TABLE tb_venta
ADD CONSTRAINT FK_VENDEDOR
FOREIGN KEY (MATRICULA)
REFERENCES tb_vendedor(MATRICULA);

CREATE TABLE tb_items_facturas
(NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY (NUMERO, CODIGO)
);

ALTER TABLE tb_venta
RENAME tb_factura;

ALTER TABLE tb_items_facturas
ADD CONSTRAINT FK_FACTURA
FOREIGN KEY (NUMERO)
REFERENCES tb_factura(NUMERO);

ALTER TABLE tb_items_facturas
ADD CONSTRAINT FK_PRODUCTO
FOREIGN KEY (CODIGO)
REFERENCES tb_producto(CODIGO);

USE ventas_jugos;

CREATE TABLE tb_vendedor(
MATRICULA VARCHAR(5) NOT NULL,
NOMBRE VARCHAR(100) NULL,
BARRIO VARCHAR(50) NULL,
COMISION FLOAT NULL,
FECHA_ADMISION DATE NULL,
DE_VACACIONES BIT(1) NULL,
PRIMARY KEY(MATRICULA)
);

CREATE TABLE tb_producto(
CODIGO VARCHAR(10) NOT NULL,
DESCRIPCION VARCHAR(100) NULL,
SABOR VARCHAR(50) NULL,
TAMANO VARCHAR(50) NULL,
ENVASE VARCHAR(50) NULL,
PRECIO_LISTA FLOAT NULL,
PRIMARY KEY (CODIGO)
);

ALTER TABLE tb_facturas ADD CONSTRAINT FK_CLIENTE
FOREIGN KEY (DNI) REFERENCES tb_cliente(DNI);

ALTER TABLE tb_facturas ADD CONSTRAINT FK_VENDEDOR
FOREIGN KEY (MATRICULA) REFERENCES tb_vendedor(MATRICULA);

ALTER TABLE tb_items_facturas ADD CONSTRAINT FK_PRODUCTO
FOREIGN KEY (CODIGO) REFERENCES tb_producto(CODIGO);







