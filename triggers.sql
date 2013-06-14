USE sistema;
DESCRIBE Lista_Precios;
-- Actualiza el stock despues de una compra
DROP TRIGGER IF EXISTS t_actualizar_stock;
delimiter //
CREATE TRIGGER t_actualizar_stock_c AFTER INSERT ON compras_detalle
FOR EACH ROW
BEGIN
DECLARE msg CHAR(255);
SET autocommit=0;
UPDATE Stocks
SET Cantidad_Disponible= Cantidad_Disponible+New.Cantidad
WHERE Stocks.Item= New.Producto AND Stocks.Deposito=New.Deposito;
IF @@SQLCODE <> 0 THEN 
	BEGIN
	ROLLBACK;
	SET msg= CONCAT('Error al actualizar el stock del Producto: ',CAST(New.Producto AS CHAR));
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
	END;
ELSE COMMIT;
END IF;
set autocommit=1;
END
//
delimiter ;

DROP TRIGGER IF EXISTS t_actualizar_precio_c;
delimiter //
CREATE TRIGGER t_actualizar_precios_c AFTER INSERT ON compras_detalle
FOR EACH ROW
BEGIN
DECLARE n_precio_c,cant INT;
DECLARE msg CHAR(255);
SET cant= F_CANTIDAD_PRODUCTO(New.Producto);
SET n_precio_c =((Precio_Compra*cant)+(New.Precio_Compra*New.Cantidad))/(cant+New.Cantidad);
SET autocommit=0;
UPDATE Lista_Precios
SET Precio_Compra= n_precio_c,Precio_Venta= n_precio_c+(n_precio_c*0.4) WHERE Lista_Precios.Item= New.Producto;
IF @@SQLCODE <> 0 THEN
	BEGIN
		ROLLBACK;
		SET msg= CONCAT('Error al actualizar lista de precios de Producto: ',CAST(New.Producto AS CHAR));
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
	END;
ELSE COMMIT;
END IF;
set autocommit=1;
END
//
delimiter ;

DROP TRIGGER IF EXISTS t_actualizar_stock_v;
delimiter //
CREATE TRIGGER t_actualizar_stock_v AFTER INSERT ON Ventas_Detalle
FOR EACH ROW
BEGIN
	DECLARE msg CHAR(255);
	SET autocommit=0;
	UPDATE Stocks
	SET Cantidad_Disponible= Cantidad_Disponible- New.Cantidad WHERE Stocks.Item=New.Producto 
		AND Stocks.Deposito=New.Deposito;
	IF @@SQLCODE <>0 THEN
	BEGIN
		ROLLBACK;
		SET msg= CONCAT('Error al actualizar el stock del Producto: ',CAST(New.Producto AS CHAR));
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
	END;
	ELSE COMMIT;
	END IF;
	set autocommit=1;
END
//
delimiter ;

DROP TRIGGER IF EXISTS t_verificar_disp_stock_v;
delimiter //
CREATE TRIGGER t_verificar_disp_stock_v BEFORE INSERT ON Ventas_Detalle
FOR EACH ROW
	BEGIN
		DECLARE msg CHAR(255);
		SET autocommit=0;
		IF ((SELECT Cantidad_Disponible FROM stocks WHERE Deposito= New.Deposito AND Item=New.Producto)
			- New.Cantidad) < 0 THEN
			BEGIN
				ROLLBACK;
				SET msg= CONCAT('Error: cantidad insuficiente del Producto ',CAST(New.Producto AS CHAR),
				' en Deposito ',CAST(New.Deposito AS CHAR));
				SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
			END;
		ELSE COMMIT;
		END IF;
		set autocommit=1;
	END
	//
delimiter ;

DROP TRIGGER IF EXISTS t_comprobar_cred_cl;
delimiter //
CREATE TRIGGER t_comprobar_cred_cl BEFORE INSERT ON Facturas_Ventas
FOR EACH ROW
BEGIN
	DECLARE msg CHAR(255);
	SET autocommit=0;
	IF(New.Saldo+F_CREDIT_CL(New.Cliente)) > F_LIMITE_CRED_CL(New.Cliente) THEN
		BEGIN
				ROLLBACK;
				SET msg= CONCAT('Error: se supera limite de credito de cliente ',CAST(New.Cliente AS CHAR));
				SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
			END;
		ELSE COMMIT;
		END IF;
	set autocommit=1;
END   
//
delimiter ;

DROP TRIGGER IF EXISTS t_comprobar_cred_cl_a;
delimiter //
CREATE TRIGGER t_comprobar_cred_cl_a BEFORE UPDATE ON Facturas_Ventas
FOR EACH ROW
BEGIN
	DECLARE msg CHAR(255);
	SET autocommit=0;
	IF(New.Saldo+F_CREDIT_CL(New.Cliente)) > F_LIMITE_CRED_CL(New.Cliente) THEN
		BEGIN
				ROLLBACK;
				SET msg= CONCAT('Error: se supera limite de credito de cliente ',CAST(New.Cliente AS CHAR));
				SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
		END;
	ELSE COMMIT;
	END IF;	
	set autocommit=1;
END   
//
delimiter ;

DROP TRIGGER IF EXISTS t_actualizar_sald_cl;
delimiter //
CREATE TRIGGER t_actualizar_sald_cl AFTER INSERT ON Facturas_Ventas
FOR EACH ROW
BEGIN
	DECLARE msg CHAR(255);
	SET autocommit=0;
	UPDATE Clientes
	SET Saldo= Saldo+ New.Saldo WHERE ID_Clientes=New.Cliente;
	IF @@SQLCODE <> 0 THEN
		BEGIN
				ROLLBACK;
				SET msg= CONCAT('Error: ha ocurrido un error al actualizar el saldo del cliente ',CAST(New.Cliente AS CHAR));
				SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
		END;
	ELSE COMMIT;
	END IF;
	set autocommit=1;
END   
//
delimiter ;

DROP TRIGGER IF EXISTS t_actualizar_sald_cl_a;
delimiter //
CREATE TRIGGER t_actualizar_sald_cl_a AFTER UPDATE ON Facturas_Ventas
FOR EACH ROW
BEGIN
	DECLARE msg CHAR(255);
	SET autocommit=0;
	UPDATE Clientes
	SET Saldo= Saldo+ New.Saldo WHERE ID_Clientes=New.Cliente;
	IF @@SQLCODE <> 0 THEN
		BEGIN
				ROLLBACK;
				SET msg= CONCAT('Error: ha ocurrido un error al actualizar el saldo del cliente ',CAST(New.Cliente AS CHAR));
				SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
		END;
	ELSE COMMIT;
	END IF;	
	set autocommit=1;
END   
//
delimiter ;

drop trigger if exists t_actualizar_sald_fact_c;
delimiter //
create trigger t_actualizar_sald_fact_c after insert on Ordenes_Detalles
for each row
begin
	declare msg char(255);
	set autocommit=0;
	update Facturas_Compras set Saldo= Saldo-New.Monto where ID_Factura=New.Factura;
	if @@sqlcode <> 0 then
	BEGIN
				ROLLBACK;
				SET msg= CONCAT('Error: ha ocurrido un error al actualizar el saldo de la factura ',CAST(New.Factura AS CHAR));
				SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
	END;
	ELSE COMMIT;
	end if;
	set autocommit=1;
end
//
delimiter ;

drop trigger if exists t_actualizar_sald_fact_v;
delimiter //
create trigger t_actualizar_sald_fact_v after insert on Recibos_Detalles
for each row
begin
	declare msg char(255);
	set autocommit=0;
	update Facturas_Ventas set Saldo= Saldo-New.Monto where ID_Factura=New.Factura;
	if @@sqlcode <> 0 then
	BEGIN
				ROLLBACK;
				SET msg= CONCAT('Error: ha ocurrido un error al actualizar el saldo de la factura ',CAST(New.Factura AS CHAR));
				SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
	END;
	ELSE COMMIT;
	end if;
	set autocommit=1;
end
//
delimiter ;

drop trigger if exists t_verificar_disp_stock_transf;
delimiter //
create trigger t_verificar_disp_stock_transf before insert on Transferencias_Detalle
FOR EACH ROW
	BEGIN
		DECLARE msg CHAR(255);
		SET autocommit=0;
		IF (f_cantidad_producto_dep(New.Producto,f_origen_transferencia(New.Transferencia))) < New.Cantidad
		THEN
			BEGIN
				ROLLBACK;
				SET msg= CONCAT('Error: cantidad insuficiente del Producto ',CAST(New.Producto AS CHAR),
				' en Deposito ',CAST(New.Deposito AS CHAR));
				SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
			END;
		ELSE COMMIT;
		END IF;
		set autocommit=1;
	END
	//
delimiter ;
 
create trigger t_verificar_transferencia before insert on Transferencias
for each row
begin
	if(New.Origen = New.Destino) then --
	else if(
end


 