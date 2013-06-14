USE sistema;
-- procedimiento que devuelve el total de compras en un rago de fecha
DROP PROCEDURE IF EXISTS p_total_compras;
CREATE PROCEDURE p_total_compras(desde DATE,hasta DATE)
SELECT Fecha,Deposito,F_COMPRAS_DEPOSITO(Deposito,Fecha) AS Total 
FROM compras_producto WHERE Fecha BETWEEN desde AND hasta; 

-- procedimiento que devuelve una tabla con el total de ventas en un rango de fecha
DROP PROCEDURE IF EXISTS p_total_ventas;
CREATE PROCEDURE p_total_ventas(desde DATE,hasta DATE)
SELECT Fecha,Deposito,F_VENTAS_DEPOSITO(Deposito,Fecha) AS Total 
FROM ventas_producto WHERE Fecha BETWEEN desde AND hasta; 

-- procedimiento que devuelve una tabla con las facturas sin cobrar vencidas
DROP PROCEDURE IF EXISTS p_facturas_v_venc;
CREATE PROCEDURE p_facturas_v_venc()
SELECT* FROM v_facturas_cobro_pend WHERE Fecha < TODAY();

-- procedimiento que devuelve una tabla con las facturas sin cobrar a vencer
DROP PROCEDURE IF EXISTS p_facturas_v_avencer;
CREATE PROCEDURE p_facturas_v_avencer()
SELECT* FROM v_facturas_cobro_pend WHERE Fecha > TODAY();

-- procedimiento que devuelve una tabla con las facturas sin pagar vencidas
DROP PROCEDURE IF EXISTS p_facturas_c_venc;
CREATE PROCEDURE p_facturas_c_venc()
SELECT* FROM v_facturas_pago_pend WHERE Fecha < TODAY();

-- procedimiento que devuelve una tabla con las facturas sin pagar a vencer
DROP PROCEDURE IF EXISTS p_factuas_c_avencer;
CREATE PROCEDURE p_facturas_c_avencer()
SELECT* FROM v_facturas_pago_pend WHERE Fecha > TODAY();





