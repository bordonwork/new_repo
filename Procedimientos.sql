use sistema;
create function f_compras_deposito(deposito Decimal(10,0),fecha Date) returns Decimal(10,0)
return (select sum(Total) from compras_productos where compras_productos.Deposito=deposito 
and compras_productos.Fecha=fecha);
create function f_ventas_deposito(deposito Decimal(10,0),fecha Date) returns Decimal(10,0)
return (select sum(Total) from ventas_productos where ventas_productos.Deposito=deposito 
and ventas_productos.Fecha=fecha);
create procedure total_compras(in desde Date,hasta Date)
select Fecha,Deposito,f_compras_deposito(Deposito,Fecha) as Total 
from compras_producto where Fecha between desde and hasta; 
create procedure total_ventas(in desde Date,hasta Date)
select Fecha,Deposito,f_ventas_deposito(Deposito,Fecha) as Total 
from ventas_producto where Fecha between desde and hasta; 
