CREATE TABLE CURSO(
	codigo_curso INTEGER PRIMARY KEY NOT NULL,
  	nombre varchar(255) NOT NULL,
  	descripcion varchar(255) null,
  	turno varchar(255) NOT NULL
);
ALTER TABLE CURSO ADD cupo INTEGER;

INSERT INTO CURSO (codigo_curso, nombre, descripcion, turno, cupo) VALUES (101, "Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35);

INSERT INTO CURSO (codigo_curso, nombre, descripcion, turno, cupo) VALUES(102, "Matemática Discreta","","Tarde",30);

UPDATE  CURSO  set cupo = 25;

DELETE  FROM  CURSO WHERE nombre = 'Algoritmos';


