-- EJERCICIO 1 DEL MODULO 2
CREATE  TABLE profesor
(
	id int not null primary key,
	nombre VARCHAR(45),
	apellid VARCHAR(45),
	fecha_nacimiento DATE,
	salario FLOAT


);

CREATE TABLE curso (

	codigo bigint PRIMARY KEY,
	nombre varchar(45),
	descripcion varchar(45),
	cupo bigint,
	turno varchar(45),
	profesor_id INT,
	
	constraint fk_profesor_id_curso
		foreign key (profesor_id) references profesor (id)
);

CREATE TABLE estudiante (

	legajo bigint PRIMARY KEY,
	nombre varchar(45),
	apellido varchar(45),
	fecha_nacimiento DATE,
	carrera varchar(45)
	
);


CREATE TABLE inscripcion (

	numero bigint PRIMARY KEY,
	curso_codigo bigint,
	estudiante_legajo bigint,
	fecha_hora TIMESTAMP,
	
	constraint fk_curso_codigo_inscripcion
		foreign key (curso_codigo) references curso(codigo),
	constraint fk_estudinte_legajo_inscripcio
		foreign key (estudiante_legajo) references estudiante(legajo)
	
);

-- consulta para  conocer la cantidad de estudiantes de la carrera Mecánica.
-- Si se desea solo obtener el número se puede modificar el inicio con un SELECT COUNT(carrera)
SELECT carrera , COUNT(*) AS 'cantidad de estudiantes' FROM estudiante e
WHERE e.carrera = 'Mecánica'
GROUP BY e.carrera ;



