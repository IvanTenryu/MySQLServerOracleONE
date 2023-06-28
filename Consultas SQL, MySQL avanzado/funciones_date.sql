SELECT CURDATE();

SELECT CURRENT_TIMESTAMP();

SELECT DATEDIFF('2023-06-28','1986-04-03')/365;

SELECT current_timestamp() AS hoy,
date_sub(current_timestamp(), INTERVAL 1 MONTH) as resultado;

select distinct FECHA_VENTA,
dayname(FECHA_VENTA) as día, 
monthname(FECHA_VENTA) as mes, 
year(FECHA_VENTA) as año
from facturas;

SELECT NOMBRE, 
TIMESTAMPDIFF(YEAR, FECHA_DE_NACIMIENTO, CURDATE()) AS EDAD
FROM  tabla_de_clientes;



