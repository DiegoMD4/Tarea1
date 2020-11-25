USE Mercado
GO

INSERT INTO Proveedor
( 
  [Nombre_Proveedor], [Telefono_Proveedor]
)
VALUES
( 
 'Quesos del Campo', 32420025
),
( 
 'Pollos la granja', 25405308
),
(
 'Productos para el Aseo SA', 60390532
),
(
 'Cafe Maya', 76760401
),
(
 'Lacteos La vaca', 52460867
),
(
 'Carnes don Ricky', 00499391
), 
(
 'Utiles Escolares La escuelita', 53235094
),
(
 'Panaderia La miga', 58700242
),
(
 'Refrescos y Gaseosas SA', 14542004
),
(
 'Azucarera Dulce', 70833432
)
GO

INSERT INTO Productos
(
 [Producto_nombre], [Precio], [Cantidad_Unidades]
)
VALUES
( 
 'Queso crema', 12, 20
),
( 
 'Pollo grande', 40, 14
),
( 
 'Cloro', 32, 10
),
( 
 'Cafe Maya 1 lb', 25, 30
),
( 
 'Leche entera 1 lt', 18, 40
),
( 
 'Carne de Res', 70, 8
),
( 
 'Cuaderno doble raya', 30, 100
),
( 
 'Pan molde', 26, 30
),
( 
 'Coca cola', 20, 70
),
( 
 'Azucar 1 lb', 40, 60
)
GO


INSERT INTO Historial
( 
 [Cliente], [ComprasRecientes], [Saldo], [Fecha]
)
VALUES
--( 
-- 'Jose Marquez', 'Pan blanco', 26, '12-11-2020'
--),
( 
 'Maria Flores', 'Detergente', 63, '12-11-2020' 
),
( 
 'Diego Armando', 'Cuaderno rayado', 20, '22-12-2020' 
),
( 
 'Clarissa Mejia', 'Pepsi 2l', 30, '01-11-2020'
),
( 
 'Luis Alvarez', 'Azucar 1 lb', 40, '02-11-2020' 
),
( 
 'James Diaz', 'Pasta dental', 35, '03-11-2020' 
),
( 
 'Lucas Hernandez', 'Detergente', 63, '01-11-2020' 
),
( 
 'Lucy Marquez', 'Tortillas', 20, '03-11-2020' 
),
( 
 'Jennifer Lopez', 'Cereal', 65, '10-11-2020' 
),
( 
 'Melissa Alexandra', 'PLatanos verdes', 18, '20-11-2020' 
)
GO

INSERT INTO Cliente
( 
 [Cliente_Nombre], [Credito]
)
VALUES
(
 'Jose Marquez', 200
),
( 
 'Maria Flores', 100
),
( 
 'Diego Armando', 0
),
( 
 'Clarissa Mejia', 400
),
( 
 'Luis Alvarez', 500
),
( 
 'James Diaz', 100
),
( 
 'Lucas Hernandez', 55
),
( 
 'Lucy Marquez', 800
),
( 
 'Jennifer Lopez', 0
),
( 
 'Melissa Alexandra', 1000
)
GO


INSERT INTO Gasto_Consumos
(
 [Detalle_Gastos], [OrigenDelGasto], [Precio_Dinero]
)
VALUES
(
 'Pago de telefono', 1 , 105
),
( 
 'Pago de agua', 1, 200
),
( 
 'Impuestos', 2, 590
),
( 
 'Luz electrica', 2, 1800
),
( 
 'Luz electrica', 1, 500
),
( 
 'Pollo para cena', 1, 70
),
( 
 'Refrescos para cena', 1, 30
),
( 
 'Alquiler de refrigeradores', 2, 930
),
( 
 'Pago Telefono', 2, 200
),
( 
 'Velas para casa', 1, 15
)
GO


INSERT INTO Origen_Gasto
( 
 [Origen]
)
VALUES
( 
 'Casa'
),
( 
 'Tienda'
)

GO