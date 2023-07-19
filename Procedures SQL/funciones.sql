/*
	Normalmente, la instalación de MySQL no permite que el usuario cree funciones.
    Entonces este parámetro viene por defecto en 0, o sea, la persona no puede llegar 
    aquí a MySQL y crear funciones, entonces si ustedes no ejecutan este comando, 
    lo más probable es que les dé un error o les dé un problema al momento de crear la función.
	Entonces lo primero que haremos en nuestro script es ejecutar este comando para 
    garantizar que MySQL va a aceptar que nosotros creemos una función. 
    El comando que es SET GLOBAL log_bin_trust_function_creators = 1;
*/

SET GLOBAL log_bin_trust_function_creators = 1;

SELECT f_define_sabor('Maracuyá');

SELECT NOMBRE_DEL_PRODUCTO, SABOR, f_define_sabor(SABOR) AS CATEGORIA FROM tabla_de_productos;

SELECT NOMBRE_DEL_PRODUCTO, SABOR AS CATEGORIA
	FROM tabla_de_productos
    WHERE f_define_sabor(SABOR) = 'Muy rico';

SELECT f_numero_facturas() AS RESULTADO;







