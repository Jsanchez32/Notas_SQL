CREATE DATABASE campusEstudiantes

use campusEstudiantes;

CREATE TABLE Estudiantes(
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT
);

CREATE TABLE Notas(
    id_nota INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    asignatura VARCHAR(50),
    calificaion INT,
    FOREIGN KEY(id_estudiante) REFERENCES Estudiantes(id_estudiante)
);

INSERT INTO Estudiantes(id_estudiante,nombre,apellido,edad)
VALUES(1,"Raul","Tarazona",18),
(2,"Ronald","Cardenas",25),
(3,"Cristian","Luna",22),
(4,"Carlos","Florez",17),
(5,"Sebastian","Hernandez",22);

INSERT INTO Notas(id_nota, id_estudiante,asignatura,calificaion)
VALUES(1,1,"Matematicas",4.5),
(2,2,"Español",4.0),
(3,3,"Ciencias",3.5),
(4,4,"Informatica",4.8),
(5,5,"Sociales",3.0);

SELECT Estudiantes.nombre,Estudiantes.apellido,Notas.asignatura,Notas.calificaion FROM Estudiantes
INNER JOIN Notas ON Estudiantes.id_estudiante = Notas.id_estudiante;