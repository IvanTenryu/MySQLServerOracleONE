USE db_jugos;

DROP TABLE tb_clientes;

DROP TABLE tb_productos;

CREATE TABLE tb_cliente
(dni VARCHAR (11) ,
nombre VARCHAR (100) ,
direccion1 VARCHAR (150) ,
direccion2 VARCHAR (150) ,
barrio VARCHAR (50) ,
ciudad VARCHAR (50) ,
estado VARCHAR (4) ,
cp VARCHAR (8) ,
fecha_nacimiento DATE,
edad SMALLINT,
sexo VARCHAR (1) ,
limite_credito FLOAT ,
volumen_compra FLOAT ,
primera_compra BIT );

ALTER TABLE tb_cliente ADD PRIMARY KEY (dni);

CREATE TABLE tb_producto
(producto VARCHAR (20) ,
nombre VARCHAR (150) ,
envase VARCHAR (50) ,
tamano VARCHAR (50) ,
sabor VARCHAR (50) ,
precio_lista FLOAT);

ALTER TABLE tb_producto ADD PRIMARY KEY (producto);

INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', '', 'barrio del Niño Jesús', 'ciudad de México', 'CDMX', '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1);
INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', '', 'Carola', 'ciudad de México', 'CDMX', '88202912', '1992-01-25', 29, 'M', 120000, 200000, 1);
INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('5576228758', 'Pedro Olivera', 'Pachuca 75', '', 'Condesa', 'ciudad de México', 'CDMX', '88192029', '1995-01-14', 25, 'F', 70000, 160000, 1);
INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('8502682733', 'Luis Silva', 'Prol. 16 de Septiembre 1156', '', 'Contadero', 'ciudad de México', 'CDMX', '82122020', '1995-01-07', 25, 'M', 110000, 190000, 0);
INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('1471156710', 'Erica Carvajo', 'Heriberto Frías 1107', '', 'Del Valle', 'ciudad de México', 'CDMX', '80012212', '1990-01-01', 30, 'F', 170000, 245000, 0);
INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('3623344710', 'Marcos Rosas', 'Av. Universidad', '', 'Del Valle', 'ciudad de México', 'CDMX', '22002012', '1995-01-13', 26, 'M', 110000, 220000, 1);
INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('50534475787', 'Abel Pintos', 'Carr. México-Toluca 1499', '', 'Cuajimalpa', 'ciudad de México', 'CDMX', '22000212', '1995-01-11', 25, 'M', 170000, 260000, 0);
INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('5840119709', 'Gabriel Roca', 'Eje Central Lázaro Cárdenas 911', '', 'Del Valle', 'ciudad de México', 'CDMX', '80010221', '1985-01-16', 36, 'M', 140000, 210000, 1);
INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('94387575700', 'Walter Soruco', 'Calz. de Tlalpan 2980', '', 'Ex Hacienda Coapa', 'ciudad de México', 'CDMX', '22000201', '1989-01-20', 31, 'M', 60000, 120000, 1);
INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('8719655770', 'Carlos Santivañez', 'Calz. del Hueso 363', '', 'Floresta Coyoacán', 'ciudad de México', 'CDMX', '81192002', '1983-01-20', 37, 'M', 200000, 240000, 0);
INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('5648641702', 'Paolo Mendez', 'Martires de Tacubaya 65', '', 'Héroes de Padierna', 'ciudad de México', 'CDMX', '21002020', '1991-01-30', 29, 'M', 120000, 220000, 0);
INSERT INTO tb_cliente (dni, nombre, direccion1, direccion2, barrio, ciudad, estado, cp, fecha_nacimiento, edad, sexo, limite_credito, volumen_compra, primera_compra) VALUES ('492472718', 'Jorge Castro', 'Federal México-Toluca 5690', '', 'Locaxco', 'ciudad de México', 'CDMX', '22012002', '1994-01-19', 26, 'M', 75000, 95000, 1);

INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('773912', 'Clean', '1 Litro', 'Naranja', 'Botella PET', 8.01);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('838819', 'Clean', '1,5 Litros', 'Naranja', 'Botella PET', 12.01);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1037797', 'Clean', '2 Litros', 'Naranja', 'Botella PET', 16.01);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('812829', 'Clean', '350 ml', 'Naranja', 'Lata', 2.81);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('479745', 'Clean', '470 ml', 'Naranja', 'Botella de Vidrio', 3.77);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('695594', 'Festival de sabores', '1,5 Litros', 'Asaí', 'Botella PET', 28.51);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('243083', 'Festival de sabores', '1,5 Litros', 'Maracuyá', 'Botella PET', 10.51);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1022450', 'Festival de sabores', '2 Litros', 'Asái', 'Botella PET', 38.01);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('231776', 'Festival de sabores', '700 ml', 'Asaí', 'Botella de Vidrio', 13.31);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('723457', 'Festival de sabores', '700 ml', 'Maracuyá', 'Botella de Vidrio', 4.91);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('746596', 'Light', '1,5 Litros', 'Sandía', 'Botella PET', 19.51);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1040107', 'Light', '350 ml', 'Sandía', 'Lata', 4.56);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1002334', 'Línea Citrus', '1 Litro', 'Lima/Limón', 'Botella PET', 7);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1088126', 'Línea Citrus', '1 Litro', 'Limón', 'Botella PET', 7);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1041119', 'Línea Citrus', '700 ml', 'Lima/Limón', 'Botella de Vidrio', 4.9);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1042712', 'Línea Citrus', '700 ml', 'Limón', 'Botella de Vidrio', 4.9);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('520380', 'Pedazos de Frutas', '1 Litro', 'Manzana', 'Botella PET', 12.01);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('788975', 'Pedazos de Frutas', '1,5 Litros', 'Manzana', 'Botella PET', 18.01);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('229900', 'Pedazos de Frutas', '350 ml', 'Manzana', 'Lata', 4.21);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1101035', 'Refrescante', '1 Litro', 'Frutilla/Limón', 'Botella PET', 9.01);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1086543', 'Refrescante', '1 Litro', 'Mango', 'Botella PET', 11.01);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('326779', 'Refrescante', '1,5 Litros', 'Mango', 'Botella PET', 16.51);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('826490', 'Refrescante', '700 ml', 'Frutilla/Limón', 'Botella de Vidrio', 6.31);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1096818', 'Refrescante', '700 ml', 'Mango', 'Botella de Vidrio', 7.71);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('394479', 'sabor da Montaña', '700 ml', 'Cereza', 'Botella de Vidrio', 8.41);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('783663', 'sabor da Montaña', '700 ml', 'Frutilla', 'Botella de Vidrio', 7.71);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1000889', 'sabor da Montaña', '700 ml', 'Uva', 'Botella de Vidrio', 6.31);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('544931', 'Verano', '350 ml', 'Limón', 'Lata', 2.46);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('235653', 'Verano', '350 ml', 'Mango', 'Lata', 3.86);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1051518', 'Verano', '470 ml', 'Limón', 'Botella de Vidrio', 3.3);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1078680', 'Verano', '470 ml', 'Mango', 'Botella de Vidrio', 5.18);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1004327', 'Vida del Campo', '1,5 Litros', 'Sandía', 'Botella PET', 19.51);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1013793', 'Vida del Campo', '2 Litros', 'Cereza/Manzana', 'Botella PET', 24.01);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('290478', 'Vida del Campo', '350 ml', 'Sandía', 'Lata', 4.56);
INSERT INTO tb_producto (producto, nombre, tamano, sabor, envase, precio_lista) VALUES ('1002767', 'Vida del Campo', '700 ml', 'Cereza/Manzana', 'Botella de Vidrio', 8.41);

