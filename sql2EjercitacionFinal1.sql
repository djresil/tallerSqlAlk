-- Escriba una consulta que devuelva el legajo y la cantidad de cursos que realiza cada estudiante.

SELECT e.legajo , COUNT(i.curso_codigo)  as total_cursos   from estudiante e 
left join inscripcion i ON i.estudiante_legajo = e.legajo
GROUP BY e.legajo ;

-- Escriba una consulta que devuelva el legajo y la cantidad de cursos de los estudiantes que realizan más de un curso.

SELECT e.legajo , COUNT(i.curso_codigo)  as total_cursos   from estudiante e 
left join inscripcion i ON i.estudiante_legajo = e.legajo 
GROUP BY e.legajo HAVING total_cursos > 1;

-- Escriba una consulta que devuelva la información de los estudiantes que no realizan ningún curso.

SELECT * FROM estudiante e WHERE e.legajo  NOT IN (
SELECT  i.estudiante_legajo  from inscripcion i   
GROUP BY i.estudiante_legajo );


-- Escriba para cada tabla, los index (incluyendo su tipo) que tiene cada una.
-- profesor  index=id  tipo integer
-- inscripcion index = numero tipo integer
-- curso index = codigo  tipo integer 
-- estudiante index = legajo tipo integer


-- Liste toda la información sobre los estudiantes que realizan cursos con los profesores de apellido “Pérez” y “Paz”.

SELECT * FROM  estudiante e WHERE  e.legajo IN 
(
SELECT i.estudiante_legajo from inscripcion i WHERE i.curso_codigo IN 
(
SELECT c.codigo from curso c WHERE c.profesor_id IN
(
SELECT p.id FROM profesor p WHERE p.apellido IN ('Peréz', 'Paz'))));
