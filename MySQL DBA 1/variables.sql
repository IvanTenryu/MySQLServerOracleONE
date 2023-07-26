SELECT * FROM actor;

SHOW GLOBAL STATUS LIKE 'Created_temp_disk_tables';
SHOW GLOBAL STATUS LIKE 'Created_tmp_tables';
SHOW GLOBAL VARIABLES LIKE 'tmp_table_size';

SET GLOBAL tmp_table_size = 136700160;

SELECT * FROM actor;

CREATE TABLE df_table(ID INT, NOMBRE VARCHAR(100));

ALTER TABLE df_table ENGINE = MyISAM;

CREATE TABLE df_table1(ID INT, NOMBRE VARCHAR(100)) ENGINE = MEMORY;

SHOW ENGINES;

CREATE DATABASE base;

USE base;




















