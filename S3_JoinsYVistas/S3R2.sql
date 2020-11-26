USE tienda;

# 1. ¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT nombre, apellido_paterno
FROM empleado AS e
JOIN venta AS v
ON e.id_empleado=v.id_empleado;

# 2. ¿Cuál es el nombre de los artículos que se han vendido?
SELECT nombre
FROM articulo AS a
JOIN venta AS v
ON a.id_articulo = v.id_articulo;

# 3. ¿Cuál es el total de cada venta?
SELECT clave, ROUND(SUM(precio),2)
FROM venta AS v
JOIN articulo AS a
USING (id_articulo)
GROUP BY clave;


