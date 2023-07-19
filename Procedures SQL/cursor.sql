/*
	El cursor es una estructura que fue implementada por MySQL y él 
    nos permite la interacción línea a línea en un orden determinado,
    según la consulta que realicemos a través del comando SELECT.
	Entonces, las fases para usar el cursor son las siguientes: 
    Primero lo declaramos, definimos la consulta que vamos a almacenar 
    o que vamos a depositar en nuestro cursor, vamos entonces a abrirlo 
    para poderlo recorrer una línea a la vez, después viene lógicamente 
    al recorrido línea a línea hasta el final, cerramos el cursor y 
    limpiamos el cursor de la memoria.
	Entonces lo declaramos, lo abrimos, lo recorremos, lo cerramos y 
    limpiamos el cursor de la memoria.
*/

CALL cursor_1;

SELECT NOMBRE FROM tabla_de_clientes LIMIT 5;

CALL cursor_looping;

CALL limite_credito;

SELECT * FROM tabla_de_clientes;

CALL cursor_looping_clientes;

CALL campo_adicional;






