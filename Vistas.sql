use sistema;
create or replace view v_facturas_cobro_pend as select ID_Factura as ID, 
Numero_Factura,concat(Nombre," ",Apellido) as Cliente,facturas_ventas.Saldo as Saldo from clientes,
facturas_ventas where facturas_ventas.Saldo>0 order by Saldo desc;

create or replace view v_facturas_pago_pend as select ID_Factura as ID, 
Numero_Factura,Nombre as Proveedor,facturas_compras.Saldo as Saldo from proveedores,
facturas_compras where facturas_compras.Saldo>0 order by Saldo desc;

create or replace view v_clientes_credit as select ID_Clientes as ID, concat(Nombre," ",Apellido)
as Cliente,Linea_Credito as Credito_Maximo from clientes as c left join categorias_clientes as cc
on c.Categoria=cc.ID_Categoria where Linea_Credito>0 order by Linea_Credito desc;
create function f_cantidad_producto(producto numeric(10,0)) returns numeric(10,0)	
return (select sum(Cantidad_Disponible) from stocks where Item=Producto); 

create or replace view v_stock_producto as select Item as ID, descripcion as Descripcion,
f_cantidad_producto(Item) as Disponible from stocks left join productos on Item=ID_Producto order by ID; 
