SELECT *  FROM tb_facturacion;
SELECT *  FROM tb_factura1;
SELECT *  FROM tb_items_facturas1;

UPDATE tb_items_facturas1 SET CANTIDAD = 600
WHERE NUMERO = '0101' AND CODIGO = '1002767';

DELIMITER //
CREATE TRIGGER TG_FACTURACION_INSERT
AFTER INSERT ON tb_items_facturas1
FOR EACH ROW BEGIN
	DELETE FROM tb_facturacion;
	INSERT INTO tb_facturacion
	SELECT FECHA, SUM(B.CANTIDAD*B.PRECIO) AS VENTA_TOTAL
	FROM tb_factura1 A
	INNER JOIN tb_items_facturas1 B
	ON A.NUMERO = B.NUMERO
	GROUP BY FECHA;
END//

DELIMITER //
CREATE TRIGGER TG_FACTURACION_UPDATE
AFTER UPDATE ON tb_items_facturas1
FOR EACH ROW BEGIN
	DELETE FROM tb_facturacion;
    INSERT INTO tb_facturacion
    SELECT A.FECHA, SUM(B.CANTIDAD*B.PRECIO) AS VENTA_TOTAL
    FROM tb_factura A
    INNER JOIN tb_items_facturas1 B
    ON A.NUMERO = B.NUMERO
	GROUP BY FECHA;
END //

SELECT *  FROM tb_facturacion;

UPDATE tb_items_facturas1 SET CANTIDAD = 800
WHERE NUMERO = '0101' AND CODIGO = '1002767';