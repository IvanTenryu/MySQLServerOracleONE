SELECT LTRIM('       MySQL es fácil');

SELECT RTRIM('MySQL es fácil       ');

SELECT TRIM('         MySQL es fácil       ');

SELECT CONCAT('MySQL ','es fácil');

SELECT UPPER('my sql es fácil');

SELECT LOWER('MY SQL ES FÁCIL');

SELECT SUBSTRING('Juan Asrael Palencia Barreto', 14, 4);

SELECT CONCAT(NOMBRE, ' ', DNI) FROM tabla_de_clientes;

SELECT CONCAT(
	NOMBRE, ' con domicilio conocido en:  ',
    DIRECCION_1, ' ',
    BARRIO, ' ',
    CIUDAD, ' ',
    ESTADO, ' ') 
    AS DATOS_GENERALES 
    FROM tabla_de_clientes;
    
    
    
    
    