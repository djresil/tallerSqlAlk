CREATE  TABLE persona(
	id integer,
	nombre varchar(45)
);

INSERT  INTO persona VALUES
(3 , 'Andrea'), 
(1, 'Marta'),
(4, 'Elizabeth'),
(2, 'Aldo');

SELECT * from persona;

ALTER TABLE persona add constraint pk_id primary key(id);

SELECT * from persona;

