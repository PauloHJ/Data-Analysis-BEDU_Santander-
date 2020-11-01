SHOW DATABASES;
USE tienda;

# 1. ¿Cuántos registros hay por cada uno de los puestos?
SELECT COUNT(*) as Cuenta, nombre 
FROM puesto
GROUP BY nombre;

# 2. ¿Cuánto dinero se paga en total por puesto?
SELECT SUM(salario), nombre
FROM puesto
GROUP BY nombre;

# 3. ¿Cuál es el número total de ventas por vendedor?
SELECT COUNT(*) AS Ventas, id_empleado
FROM venta
GROUP BY id_empleado;

# 4. ¿Cuál es el número total de ventas por artículo?
SELECT COUNT(*) AS Ventas, id_articulo
FROM venta
GROUP BY id_articulo;