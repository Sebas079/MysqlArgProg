

INSERT INTO persona
VALUES( 1 ,'Sebastian', 'Lopez','Santiago 45','45612355','sebas@gmail.com','Soy programador web',
'1979-12-08','www.mifoto/foto.com'
);

INSERT INTO experiencia_laboral
VALUES(2,'Youtube', '2022-11-01','2022-12-26','contenido artistico',5,2);
 
INSERT INTO tipo_empleo
VALUES(1,'Full time');
INSERT INTO tipo_empleo
VALUES(2,'Part time');
INSERT INTO tipo_empleo
VALUES(3,'Freelance ');
INSERT INTO tipo_empleo
VALUES(4,'Monotributista');
INSERT INTO tipo_empleo
VALUES(5,'Informal');
INSERT INTO tipo_empleo
VALUES(6,'Emprendimiento');
SELECT * FROM tipo_empleo;
INSERT INTO experiencia_laboral
VALUES(3,'Papel Automatico de Argentina', '2009-03-01','0000-00-00','Ejecutivo de cuentas corporativas',1,5);
SELECT * FROM experiencia_laboral;
/*delete siempre lleva una condicion de lo contrario se eliminara todo*/
DELETE FROM tipo_empleo
WHERE id= 6;
/*UPDATE tambien lleva una condicion de lo contrario modificara todos los registros*/
UPDATE  tipo_empleo
SET nombre_tipo = 'freelance/emprendimiento'
WHERE id = 3;
SELECT COUNT(id) FROM experiencia_laboral
WHERE persona_id = 2;
SELECT SUM(id) FROM persona;/*suma los registros*/
SELECT MAX(id) FROM persona;/* da el numero maximo*/
SELECT MIN(id) FROM persona;/*da el numero minimo*/
SELECT AVG(id) FROM persona;/*da el promedio de lo que este entre los ()*/
/*JOIN SE UTILIZA PARA UNIR CONSULTA ENTRE VARIAS TABLAS (INNER JOIN- RIGHT JOIN - LEFT JOIN)*/
/*EXISTEN DOS TIPOS EXPLICITA O IMPLICITA*/
/*INNER JOIN EXPLICITO*/
SELECT * FROM persona
INNER JOIN experiencia_laboral
ON persona.id = experiencia_laboral.persona_id;
/*tambien puedo agregar un nombre con ORDER BY*/
SELECT * FROM persona
INNER JOIN experiencia_laboral
ON persona.id = experiencia_laboral.persona_id 
ORDER BY persona.nombre;