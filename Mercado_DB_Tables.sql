
USE Mercado
GO

/*IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'DatabaseName'
)
CREATE DATABASE Mercado
GO*/

--Creación de tablas
IF OBJECT_ID('SchemaName.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO

CREATE TABLE Proveedor
(
    ID_Proveedor INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Nombre_Proveedor [NVARCHAR](50) NOT NULL,
    Telefono_Proveedor INT NOT NULL
    
);
GO


IF OBJECT_ID('SchemaName.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO

CREATE TABLE Productos
(
    Codigo_Producto INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
    Producto_nombre [NVARCHAR](50) NOT NULL,
    Precio INT NOT NULL,
    Cantidad_Unidades INT NOT NULL
  
);
GO

IF OBJECT_ID('SchemaName.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO

CREATE TABLE Historial
(
    Historial_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    Cliente [NVARCHAR](50) NOT NULL,
    ComprasRecientes [NVARCHAR](50) NOT NULL,
    Saldo INT,
    Fecha DATE
    
);
GO


IF OBJECT_ID('SchemaName.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO

CREATE TABLE Cliente
(
    Cod_Cliente INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
    Cliente_Nombre [NVARCHAR](50) NOT NULL,
    Credito INT    
    
);
GO


IF OBJECT_ID('SchemaName.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO

CREATE TABLE Gasto_Consumos
(
    ID_Gastos INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    Detalle_Gastos [NVARCHAR] (60),
    OrigenDelGasto INT NOT NULL,
    Precio_Dinero INT NOT NULL
    
);
GO


IF OBJECT_ID('SchemaName.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO

CREATE TABLE Origen_Gasto
(
   ID INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
   Origen NVARCHAR (20)
  
);
GO