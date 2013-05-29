use sistema;
create trigger t_compra_producto after insert on compras_detalle
for each row
insert into compras_productos
select Fecha, New.Producto, New.Cantidad*New.Precio_Compra,New.Deposito from facturas_compras as fc, 
compras_detalle as cd where fc.ID_Factura=New.Factura;

create trigger t_venta_producto after insert on ventas_detalle
for each row
insert into ventas_productos select Fecha,New.producto, New.Cantidad*New.Precio_Venta,New.Deposito from facturas_ventas as fv,
ventas_detalle as vd where fv.ID_Factura=New.Factura;


