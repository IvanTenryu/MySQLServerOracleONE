CREATE TABLE tb_identificacion
(
ID INT AUTO_INCREMENT NOT NULL,
DESCRIPCION VARCHAR(50) NULL,
PRIMARY KEY(ID)
);

INSERT INTO tb_identificacion(DESCRIPCION) VALUES ('Cliente A');

INSERT INTO tb_identificacion(DESCRIPCION) VALUES ('Cliente B');
INSERT INTO tb_identificacion(DESCRIPCION) VALUES ('Cliente C');
INSERT INTO tb_identificacion(DESCRIPCION) VALUES ('Cliente D');
INSERT INTO tb_identificacion(DESCRIPCION) VALUES ('Cliente E');

DELETE from tb_identificacion WHERE ID = 3;

INSERT INTO tb_identificacion(DESCRIPCION) VALUES ('Cliente F');

SELECT * FROM tb_identificacion;

CREATE TABLE TAB_IDENTITY2 (ID INT AUTO_INCREMENT, DESCRIPTOR VARCHAR(20), PRIMARY KEY(ID));
INSERT INTO TAB_IDENTITY2 (DESCRIPTOR) VALUES ('CLIENTE1');
INSERT INTO TAB_IDENTITY2 (DESCRIPTOR) VALUES ('CLIENTE2');
INSERT INTO TAB_IDENTITY2 (DESCRIPTOR) VALUES ('CLIENTE3');
INSERT INTO TAB_IDENTITY2 (ID, DESCRIPTOR) VALUES (NULL, 'CLIENTE4');
DELETE FROM TAB_IDENTITY2 WHERE ID = 3;
INSERT INTO TAB_IDENTITY2 (ID, DESCRIPTOR) VALUES (NULL, 'CLIENTE6');
INSERT INTO TAB_IDENTITY2 (ID, DESCRIPTOR) VALUES (NULL, 'CLIENTE7');
DELETE FROM TAB_IDENTITY2 WHERE ID = 2;


SELECT * FROM TAB_IDENTITY2;