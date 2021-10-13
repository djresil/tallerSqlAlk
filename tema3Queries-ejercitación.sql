-- Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente.

SELECT nombre, apellido, fecha_nacimiento FROM profesor ORDER BY fecha_nacimiento ASC ;


-- Todos los profesores cuyo salario sea mayor o igual a 65000.

SELECT * FROM profesor WHERE salario >=65000;



-- Todos los profesores que nacieron en la década del 80.

SELECT * from profesor WHERE fecha_nacimiento BETWEEN '19800101' AND '19891231';



-- 5 registros

SELECT * from profesor LIMIT 5;



-- Todos los profesores cuyo apellido inicie con la letra “P”

SELECT * from profesor WHERE apellido LIKE 'P%';



-- Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000



SELECT * from profesor WHERE fecha_nacimiento BETWEEN '19800101' AND '19891231' AND salario >80000;




