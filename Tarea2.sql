-- Create a new database called 'DatabaseName'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = 'Tarea2'
)
CREATE DATABASE Tarea2
GO



-- Create the table in the specified schema
CREATE TABLE dbo.Robot
(
    Robot INT NOT NULL IDENTITY(1,1) PRIMARY KEY , -- primary key column
    Estado [bit] NOT NULL,
    Orientacion INT NOT NULL,
    Atributo [VARCHAR] (20),
    Coordenada INT NOT NULL
    -- specify more columns here
);
GO

CREATE TABLE dbo.Escenario
(
    ID_coordenada INT NOT NULL IDENTITY(1,1) PRIMARY KEY, -- primary key column
    Nombre [NVARCHAR](50) NOT NULL,
    CoordenadaX INT NOT NULL,
    CoordenadaY INT NOT NULL 
    -- specify more columns here
);
GO



CREATE TABLE dbo.Tabla_Tarea
(
    ID_Tarea INT NOT NULL IDENTITY (1,1) PRIMARY KEY, -- primary key column
    Descripcion [NVARCHAR](60) NOT NULL,
    Prioridad INT NOT NULL, 
    CHECK (Prioridad like '[1-9]') 
    
);
GO


CREATE TABLE dbo.Sensor
(
    ID_Sensor INT NOT NULL IDENTITY (1,1) PRIMARY KEY, -- primary key column
    Tipo INT NOT NULL    
);
GO


CREATE TABLE dbo.SensorVisual
(
    CodigoSensorVisual INT NOT NULL IDENTITY(1,1) PRIMARY KEY, -- primary key column
    Resolucion INT NOT NULL,
);
GO

CREATE TABLE dbo.SensorProximidad
(
    CodigoProximidad INT NOT NULL IDENTITY (1,1) PRIMARY KEY, -- primary key column
    DistantciaMinima INT NOT NULL
);
GO


CREATE TABLE dbo.Orientacion
(
    CodigoOrientacion INT NOT NULL IDENTITY (1,1)PRIMARY KEY, -- primary key column
    OrientacionNombre [NVARCHAR] (20)
    );
GO


