USE sistema;

DESCRIBE ventas_detalle;
DROP PROCEDURE IF EXISTS p_ins_fact_c;
delimiter //
CREATE PROCEDURE p_ins_fact_c(numero_factura DECIMAL,condicion_venta DECIMAL,fecha DECIMAL,vencimiento DATE,proveedor DECIMAL)
BEGIN
	SET autocommit= 0;
	INSERT INTO Facturas_Compras VALUES(ID_Factura, numero_factura,condicion_venta,fecha,vencimiento,proveedor);
	IF @@error > 0 THEN ROLLBACK;
	ELSE COMMIT;
	END IF;
END
//
delimiter ;	

	