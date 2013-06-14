use sistema;
-- vista que contiene las facturas de ventas de cobro pendiente
CREATE OR REPLACE VIEW v_facturas_cobro_pend AS SELECT ID_Factura AS Factura,
Numero_Factura,ID_Clientes AS ID, CONCAT(Nombre," ",Apellido) AS Cliente,facturas_ventas.Saldo AS Saldo FROM clientes,
facturas_ventas WHERE facturas_ventas.Saldo>0 ORDER BY Saldo DESC;

-- vista que contiene las facturas de compras de pago pendiente
CREATE OR REPLACE VIEW v_facturas_pago_pend AS SELECT ID_Factura AS ID, 
Numero_Factura,Nombre AS Proveedor,facturas_compras.Saldo AS Saldo FROM proveedores,
facturas_compras WHERE facturas_compras.Saldo>0 ORDER BY Saldo DESC;

-- vista que contiene una lista de los clientes con credito
CREATE OR REPLACE VIEW v_clientes_credit AS SELECT ID_Clientes AS ID, CONCAT(Nombre," ",Apellido)
AS Cliente,Linea_Credito AS Credito_Maximo FROM clientes AS c LEFT JOIN categorias_clientes AS cc
ON c.Categoria=cc.ID_Categoria WHERE Linea_Credito>0 ORDER BY Linea_Credito DESC;

CREATE OR REPLACE VIEW v_stock_producto AS SELECT Item AS ID, descripcion AS Descripcion,
F_CANTIDAD_PRODUCTO(Item) AS Disponible FROM stocks LEFT JOIN productos ON Item=ID_Producto ORDER BY ID;

 
