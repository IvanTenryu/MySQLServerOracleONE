START TRANSACTION;

INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('258',
'Fernando Rojas',
'Oblatos',
0.1,
'2015-06-14',
0);

INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('259',
'David Rojas',
'Del Valle',
0.15,
'2015-06-14',
0);

COMMIT;

ROLLBACK;

SELECT * FROM tb_vendedor;



