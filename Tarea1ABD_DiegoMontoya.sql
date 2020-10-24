--TABLA DE CLASE DE DIAS
CREATE TABLE Tabla_dias(
Cod_dia int NOT NULL PRIMARY KEY IDENTITY (1,1),
clase_dia varchar (20) NOT NULL 
)

INSERT INTO Tabla_dias (clase_dia)
VALUES ('Domingo o Feriado')

INSERT INTO Tabla_dias (clase_dia)
VALUES ('Laboral')

INSERT INTO Tabla_dias (clase_dia)
VALUES ('Sabado')

SELECT * FROM Tabla_dias
-- TABLA DE PERIODOS 
CREATE TABLE Tabla_Periodo(
Cod_periodo int NOT NULL PRIMARY KEY IDENTITY (1,1),
Periodo varchar (20) NOT NULL 
)

INSERT INTO Tabla_Periodo(Periodo)
VALUES ('Periodo del Valle')

INSERT INTO Tabla_Periodo(Periodo)
VALUES ('Periodo Intermedio')

INSERT INTO Tabla_Periodo(Periodo)
VALUES ('Periodo de Punta')

SELECT * FROM Tabla_Periodo
--TABLA DE HORARIOS
CREATE TABLE Tabla_Horario(
Cod_periodo int NOT NULL PRIMARY KEY IDENTITY (1,1),
Horario varchar (25) NOT NULL,
Total int NOT NULL
)

INSERT INTO Tabla_Horario(Horario, Total)
VALUES ('0 a 11/ 13 a 17 /23 a 24', 16)

SELECT * FROM Tabla_Horario