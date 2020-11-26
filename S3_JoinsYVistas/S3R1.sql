USE tienda;

# ¿Cuál es el nombre de los empleados cuyo sueldo es mayor a $10,000?
SELECT nombre
FROM empleado
WHERE id_puesto IN (
	SELECT id_puesto 
	FROM puesto
	WHERE  salario > 10000);
    
# ¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?

SELECT id_empleado, MAX(cont),MIN(cont)
FROM (
	SELECT clave,id_empleado, COUNT(*) AS cont
    FROM venta 
    GROUP BY clave,id_empleado
) AS total_ventas
GROUP BY id_empleado
ORDER BY id_empleado ASC;

# ¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
SELECT DISTINCT clave, id_venta
FROM venta
WHERE id_articulo IN (
	SELECT id_articulo
    FROM articulo
    WHERE precio > 5000
);
