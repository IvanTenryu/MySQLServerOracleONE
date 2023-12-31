 ALTER TABLE FACTURAS ADD INDEX(FECHA_VENTA);
 
 SELECT * FROM FACTURAS WHERE FECHA_VENTA = '20170101';
 
 EXPLAIN FORMAT=JSON SELECT * FROM FACTURAS WHERE FECHA_VENTA = '20170101';
 
 SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A;

SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD FROM tabla_de_productos A 
INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO;

SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO,C.CANTIDAD FROM tabla_de_productos A 
INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO 
INNER JOIN facturas B ON C.NUMERO = B.NUMERO;

CREATE TABLE `facturas1` (
  `DNI` varchar(11) NOT NULL,
  `MATRICULA` varchar(5) NOT NULL,
  `FECHA_VENTA` date DEFAULT NULL,
  `NUMERO` int NOT NULL,
  `IMPUESTO` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `items_facturas1` (
  `NUMERO` int NOT NULL,
  `CODIGO_DEL_PRODUCTO` varchar(10) NOT NULL,
  `CANTIDAD` int NOT NULL,
  `PRECIO` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tabla_de_productos1` (
  `CODIGO_DEL_PRODUCTO` varchar(10) NOT NULL,
  `NOMBRE_DEL_PRODUCTO` varchar(50) DEFAULT NULL,
  `TAMANO` varchar(10) DEFAULT NULL,
  `SABOR` varchar(20) DEFAULT NULL,
  `ENVASE` varchar(20) DEFAULT NULL,
  `PRECIO_DE_LISTA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO facturas1 SELECT * FROM facturas;

INSERT INTO items_facturas1 SELECT * FROM items_facturas;

INSERT INTO tabla_de_productos1 SELECT * FROM tabla_de_productos;















