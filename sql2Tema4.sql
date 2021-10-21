-- Escriba una consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche.

SELECT c.turno , COUNT(*) AS 'cantidad_de_profesores' FROM curso c 
GROUP BY c.turno HAVING  cantidad_de_profesores >= 2;


-- Escriba una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105.


SELECT * FROM  estudiante e WHERE e.legajo NOT IN (
SELECT i.estudiante_legajo from inscripcion i WHERE i.curso_codigo = 101);
