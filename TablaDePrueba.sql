-- Create a new table called 'TableName' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Datos
(
    ID_P INT NOT NULL IDENTITY (1,1) PRIMARY KEY, -- primary key column
    Nombre [NVARCHAR](50) NOT NULL,
    Edad INT NOT NULL
    -- specify more columns here
);
-- Insert rows into table  dbo.Datos'
INSERT INTO dbo.Datos
( -- columns to insert data into
[Nombre], [Edad]
)
VALUES
( -- first row: values for the columns in the list above
 'Diego', 21
)
-- add more rows here
GO
GO
-- Select rows from a Table or View 'TableOrViewName' in schema 'SchemaName'
SELECT * FROM DBO.Datos
--WHERE 	/* add search conditions here */
GO
