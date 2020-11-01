SHOW DATABASES;
USE tienda;
SHOW TABLES;

# 1. ¿Cuál es el promedio de salario de los puestos?
SELECT ROUND(AVG(salario),2) AS 'AVG_salario'
FROM puesto;

# 2. ¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT COUNT(nombre) AS '#_art_pasta'
FROM articulo
WHERE nombre LIKE '%Pasta%';

# 3. ¿Cuál es el salario mínimo y máximo?
SELECT MIN(salario) AS "salario_MIN",
MAX(salario) AS 'salario_MAX'
FROM puesto;

# 4. ¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT sum(salario)
FROM puesto
WHERE id_puesto > (
	SELECT MAX(id_puesto)-5
    FROM puesto
    );