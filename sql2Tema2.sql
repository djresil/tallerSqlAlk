-- Nombre, apellido y cursos que realiza cada estudiante

SELECT e.nombre, e.apellido, c.nombre from estudiante e 
INNER JOIN inscripcion i  ON e.legajo = i.estudiante_legajo
INNER JOIN curso c ON i.curso_codigo = c.codigo ;

-- Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso

SELECT e.nombre, e.apellido, c.nombre from estudiante e 
INNER JOIN inscripcion i  ON e.legajo = i.estudiante_legajo
INNER JOIN curso c ON i.curso_codigo = c.codigo  ORDER BY c.nombre ;


-- Nombre, apellido y cursos que dicta cada profesor
SELECT p.nombre, p.apellido, c.nombre from profesor p 
INNER JOIN curso c ON p.id  = c.profesor_id  ;



-- Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso


SELECT p.nombre, p.apellido, c.nombre from profesor p 
INNER JOIN curso c ON p.id  = c.profesor_id  ORDER BY c.nombre ;


-- Cupo disponible para cada curso (Si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)

SELECT   c.cupo - COUNT(i.curso_codigo )  as 'cupo disponible', c.nombre as 'nombre curso'  
from inscripcion i inner join curso c on i.curso_codigo = c.codigo GROUP  by i.curso_codigo ;


-- Cursos cuyo cupo disponible sea menor a 10

SELECT   c.cupo - COUNT(i.curso_codigo ) as 'cupo_disponible', c.nombre  
from inscripcion i  inner join curso c on i.curso_codigo = c.codigo 
 GROUP  by i.curso_codigo HAVING  cupo_disponible < 10;

