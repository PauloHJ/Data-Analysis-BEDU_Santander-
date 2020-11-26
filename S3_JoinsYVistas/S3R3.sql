USE tienda;

# 1. Obtener el puesto de un empleado.
CREATE VIEW puestos_empleado73 AS(
	SELECT empleado.nombre, puesto.nombre puesto
	FROM empleado
	JOIN puesto
	ON empleado.id_puesto = puesto.id_puesto
);
SELECT * FROM puestos_empleado73;

# 2. Saber qué artículos ha vendido cada empleado.
CREATE VIEW articulos_vendidos73 AS (
	SELECT venta.clave, empleado.nombre, articulo.nombre producto
    FROM venta 
    JOIN empleado
    ON venta.id_empleado = empleado.id_empleado
	JOIN articulo
    ON venta.id_articulo = articulo.id_articulo
);
SELECT * FROM articulos_vendidos73;

# 3. Saber qué puesto ha tenido más ventas.
CREATE VIEW puesto_mas_ventas73 AS(
	SELECT puesto.nombre puesto, COUNT(*) AS ventas
	FROM puesto
	JOIN empleado
	ON puesto.id_puesto = empleado.id_puesto
	JOIN venta
	ON empleado.id_empleado = venta.id_empleado
	GROUP BY puesto
	ORDER BY ventas DESC
	LIMIT 1
);
SELECT * FROM puesto_mas_ventas73;