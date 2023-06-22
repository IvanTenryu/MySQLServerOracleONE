ALTER TABLE tb_vendedores ADD PRIMARY KEY(matricula);

ALTER TABLE tb_vendedores ADD COLUMN (fecha_admision DATE, de_vacaciones BIT);

INSERT INTO tb_vendedores(
	matricula,
    nombre,
    porcentaje_comision,
    fecha_admision,
    de_vacaciones
) VALUES(
	'00235
',
    'Márcio Almeida Silva',
    0.8,
    '2014-08-15',
    0
);

INSERT INTO tb_vendedores(
	matricula,
    nombre,
    porcentaje_comision,
    fecha_admision,
    de_vacaciones
) VALUES(
	'00236',
    'Claudia Morais',
    0.8,
    '2013-09-17',
    1
);

INSERT INTO tb_vendedores(
	matricula,
    nombre,
    porcentaje_comision,
    fecha_admision,
    de_vacaciones
) VALUES(
	'00237',
    'Roberta Martins',
    0.11,
    '2017-03-18',
    0
);

INSERT INTO tb_vendedores(
	matricula,
    nombre,
    porcentaje_comision,
    fecha_admision,
    de_vacaciones
) VALUES(
	'00238',
    'Pericles Alves',
    0.11,
    '2016-08-21',
    0
);
