-- Escriba una consulta para saber cuántos estudiantes son de la carrera Mecánica.

SELECT COUNT(carrera) from estudiante WHERE carrera  = 'Mecánica';


-- Escriba una consulta para saber, de la tabla PROFESOR, el salario mínimo de los profesores nacidos en la década del 80.

SELECT MIN(salario) AS 'Salario mínimo' from profesor WHERE fecha_nacimiento BETWEEN '19800101' AND '19891231' ;


SELECT COUNT(idpais) from PASAJERO WHERE  idpais = 'idpais' ;


SELECT  SUM(monto) AS 'pagos realizados' from pago; 


SELECT  ROUND( SUM(monto),2) AS 'pagos realizados del pasajero' from pago WHERE idpasajero = idpasajero; 


SELECT  AVG( SUM(monto)) AS 'PROMEDIO DE PAGOS DE UN PASAJERO' from pago WHERE idpasajero = idpasajero; 
