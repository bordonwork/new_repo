--
-- ER/Studio 7.5 SQL Code Generation
-- Company :      Hewlett-Packard
-- Project :      Practico.dm1
-- Author :       hp
--
-- Date Created : Friday, May 24, 2013 13:12:56
-- Target DBMS : MySQL 5.x
--

-- 
-- TABLE: Cargos 
--

CREATE TABLE Cargos(
    ID_Cargo        INT            NOT NULL,
    Cargo           VARCHAR(60)    NOT NULL,
    Nivel_Acceso    INT            NOT NULL,
    PRIMARY KEY (ID_Cargo)
)ENGINE=MYISAM
;



-- 
-- TABLE: Categorias_Clientes 
--

CREATE TABLE Categorias_Clientes(
    ID_Categoria     DECIMAL(10, 0)    NOT NULL,
    Descripcion      VARCHAR(50)       NOT NULL,
    Linea_Credito    DECIMAL(10, 2)    NOT NULL,
    PRIMARY KEY (ID_Categoria)
)ENGINE=MYISAM
;



-- 
-- TABLE: Clientes 
--

CREATE TABLE Clientes(
    ID_Clientes    DECIMAL(10, 0)    NOT NULL,
    Nombre         VARCHAR(100)      NOT NULL,
    Apellido       VARCHAR(100)      NOT NULL,
    Categoria      DECIMAL(10, 0)    NOT NULL,
    `RUC/C.I`      VARCHAR(10),
    Contacto       VARCHAR(100),
    Direccion      VARCHAR(100),
    Telefono       VARCHAR(20),
    Saldo          DECIMAL(10, 0)    NOT NULL,
    PRIMARY KEY (ID_Clientes)
)ENGINE=MYISAM
;



-- 
-- TABLE: Compras_Detalle 
--

CREATE TABLE Compras_Detalle(
    ID_Detalle       DECIMAL(10, 0)    NOT NULL,
    Factura          DECIMAL(10, 0)    NOT NULL,
    Producto         DECIMAL(6, 0)     NOT NULL,
    Cantidad         DECIMAL(10, 0),
    Precio_Compra    DECIMAL(10, 0)    NOT NULL,
    Tasa_IVA         DECIMAL(1, 0)     NOT NULL,
    PRIMARY KEY (ID_Detalle, Factura)
)ENGINE=MYISAM
;



-- 
-- TABLE: Condiciones_Ventas 
--

CREATE TABLE Condiciones_Ventas(
    ID_Condicion    DECIMAL(3, 0)    NOT NULL,
    Descripcion     VARCHAR(7)       NOT NULL,
    PRIMARY KEY (ID_Condicion)
)ENGINE=MYISAM
;



-- 
-- TABLE: Depositos 
--

CREATE TABLE Depositos(
    ID_Deposito    DECIMAL(10, 0)    NOT NULL,
    Descripcion    VARCHAR(100)      NOT NULL,
    PRIMARY KEY (ID_Deposito)
)ENGINE=MYISAM
;



-- 
-- TABLE: Empleados 
--

CREATE TABLE Empleados(
    ID_Empleado    DECIMAL(4, 0)     NOT NULL,
    Nombres        VARCHAR(100)      NOT NULL,
    Apellidos      VARCHAR(100)      NOT NULL,
    Cedula         DECIMAL(10, 0)    NOT NULL,
    Domicilio      VARCHAR(200)      NOT NULL,
    Telefono       VARCHAR(30)       NOT NULL,
    Cargo          INT               NOT NULL,
    PRIMARY KEY (ID_Empleado)
)ENGINE=MYISAM
;



-- 
-- TABLE: Facturas_Compras 
--

CREATE TABLE Facturas_Compras(
    ID_Factura        DECIMAL(10, 0)    NOT NULL,
    Numero_Factura    DECIMAL(10, 0)    NOT NULL,
    ID_Condicion      DECIMAL(3, 0)     NOT NULL,
    Fecha             DATE              NOT NULL,
    Vencimiento       DATE              NOT NULL,
    Proveedor         DECIMAL(10, 0)    NOT NULL,
    Saldo             DECIMAL(10, 0),
    PRIMARY KEY (ID_Factura)
)ENGINE=MYISAM
;



-- 
-- TABLE: Facturas_Ventas 
--

CREATE TABLE Facturas_Ventas(
    ID_Factura         DECIMAL(10, 0)    NOT NULL,
    Numero_Factura     DECIMAL(10, 0)    NOT NULL,
    Condicion_Venta    DECIMAL(3, 0)     NOT NULL,
    Fecha              DATE              NOT NULL,
    Vencimiento        DATE              NOT NULL,
    Vendedor           DECIMAL(4, 0)     NOT NULL,
    Cliente            DECIMAL(10, 0)    NOT NULL,
    Saldo              DECIMAL(10, 0)    NOT NULL,
    PRIMARY KEY (ID_Factura)
)ENGINE=MYISAM
;



-- 
-- TABLE: IVA_Tasas 
--

CREATE TABLE IVA_Tasas(
    ID_Tasa       DECIMAL(1, 0)    NOT NULL,
    Porcentaje    DECIMAL(2, 2),
    PRIMARY KEY (ID_Tasa)
)ENGINE=MYISAM
;



-- 
-- TABLE: Lineas_Productos 
--

CREATE TABLE Lineas_Productos(
    ID_Linea_Producto    INT             AUTO_INCREMENT,
    Descripcion          VARCHAR(200)    NOT NULL,
    PRIMARY KEY (ID_Linea_Producto)
)ENGINE=MYISAM
;



-- 
-- TABLE: Lista_Precios 
--

CREATE TABLE Lista_Precios(
    Item             DECIMAL(6, 0)    NOT NULL,
    Precio_Venta     INT              NOT NULL,
    Precio_Compra    INT              NOT NULL,
    Existencias      INT              NOT NULL,
    PRIMARY KEY (Item)
)ENGINE=MYISAM
;



-- 
-- TABLE: Marcas 
--

CREATE TABLE Marcas(
    ID_Marca       DECIMAL(3, 0)    NOT NULL,
    Descripcion    VARCHAR(100)     NOT NULL,
    PRIMARY KEY (ID_Marca)
)ENGINE=MYISAM
;



-- 
-- TABLE: Niveles_Acceso 
--

CREATE TABLE Niveles_Acceso(
    ID_Acceso      INT             NOT NULL,
    Tipo_Acceso    VARCHAR(20)     NOT NULL,
    Descripcion    VARCHAR(200)    NOT NULL,
    PRIMARY KEY (ID_Acceso)
)ENGINE=MYISAM
;



-- 
-- TABLE: Ordenes_Detalles 
--

CREATE TABLE Ordenes_Detalles(
    ID_Detalle    INT               NOT NULL,
    Orden_Pago    DECIMAL(10, 0)    NOT NULL,
    Factura       DECIMAL(10, 0)    NOT NULL,
    Monto         DECIMAL(10, 0)    NOT NULL,
    Detalles      VARCHAR(200)      NOT NULL,
    PRIMARY KEY (ID_Detalle, Orden_Pago)
)ENGINE=MYISAM
;



-- 
-- TABLE: Ordenes_Pagos 
--

CREATE TABLE Ordenes_Pagos(
    ID_Orden_Pago    DECIMAL(10, 0)    NOT NULL,
    Fecha            DATE              NOT NULL,
    Proveedor        DECIMAL(10, 0)    NOT NULL,
    Observaciones    VARCHAR(150),
    PRIMARY KEY (ID_Orden_Pago)
)ENGINE=MYISAM
;



-- 
-- TABLE: Productos 
--

CREATE TABLE Productos(
    ID_Producto              DECIMAL(6, 0)     NOT NULL,
    Codigo_Barra             VARCHAR(20)       NOT NULL,
    Linea_Producto           INT               NOT NULL,
    Marca                    DECIMAL(3, 0)     NOT NULL,
    Descripcion              VARCHAR(200)      NOT NULL,
    Tasa_IVA                 DECIMAL(1, 0)     NOT NULL,
    Ultimo_Costo_Unitario    DECIMAL(10, 2),
    PRIMARY KEY (ID_Producto)
)ENGINE=MYISAM
;



-- 
-- TABLE: Proveedores 
--

CREATE TABLE Proveedores(
    ID_Proveedor    DECIMAL(10, 0)    NOT NULL,
    Nombre          VARCHAR(100)      NOT NULL,
    RUC             VARCHAR(10)       NOT NULL,
    Direccion       VARCHAR(150),
    Telefono        VARCHAR(20)       NOT NULL,
    Email           VARCHAR(50),
    Saldo           DECIMAL(10, 0)    NOT NULL,
    PRIMARY KEY (ID_Proveedor)
)ENGINE=MYISAM
;



-- 
-- TABLE: Recibos_Cobros 
--

CREATE TABLE Recibos_Cobros(
    ID_Orden_Pago    DECIMAL(10, 0)    NOT NULL,
    Fecha            DATE              NOT NULL,
    Clientes         DECIMAL(10, 0)    NOT NULL,
    Observaciones    VARCHAR(150),
    PRIMARY KEY (ID_Orden_Pago)
)ENGINE=MYISAM
;



-- 
-- TABLE: Recibos_Detalles 
--

CREATE TABLE Recibos_Detalles(
    ID_Detalle      INT               NOT NULL,
    Recibo_Cobro    DECIMAL(10, 0)    NOT NULL,
    Factura         DECIMAL(10, 0)    NOT NULL,
    Monto           INT               NOT NULL,
    Detalle         VARCHAR(200)      NOT NULL,
    PRIMARY KEY (ID_Detalle, Recibo_Cobro)
)ENGINE=MYISAM
;



-- 
-- TABLE: Stocks 
--

CREATE TABLE Stocks(
    Deposito               DECIMAL(10, 0)    NOT NULL,
    Item                   DECIMAL(6, 0)     NOT NULL,
    Cantidad_Disponible    DECIMAL(10, 3),
    PRIMARY KEY (Deposito, Item)
)ENGINE=MYISAM
;



-- 
-- TABLE: Transferencias 
--

CREATE TABLE Transferencias(
    ID_Transferencia    DECIMAL(10, 0)    NOT NULL,
    Origen              DECIMAL(10, 0)    NOT NULL,
    Destino             DECIMAL(10, 0)    NOT NULL,
    Tranferente         DECIMAL(4, 0)     NOT NULL,
    Autorizante         DECIMAL(4, 0)     NOT NULL,
    PRIMARY KEY (ID_Transferencia)
)ENGINE=MYISAM
;



-- 
-- TABLE: Transferencias_Detalle 
--

CREATE TABLE Transferencias_Detalle(
    ID_Detalle          INT               NOT NULL,
    ID_Transferencia    DECIMAL(10, 0)    NOT NULL,
    Item                DECIMAL(6, 0)     NOT NULL,
    Cantidad            INT               NOT NULL,
    PRIMARY KEY (ID_Detalle, ID_Transferencia)
)ENGINE=MYISAM
;



-- 
-- TABLE: Ventas_Detalle 
--

CREATE TABLE Ventas_Detalle(
    ID_Detalle      DECIMAL(10, 0)    NOT NULL,
    Factura         DECIMAL(10, 0)    NOT NULL,
    Producto        DECIMAL(6, 0)     NOT NULL,
    Cantidad        DECIMAL(10, 0)    NOT NULL,
    Precio_Venta    DECIMAL(10, 0)    NOT NULL,
    Tasa_IVA        DECIMAL(1, 0)     NOT NULL,
    PRIMARY KEY (ID_Detalle, Factura)
)ENGINE=MYISAM
;



-- 
-- TABLE: Cargos 
--

ALTER TABLE Cargos ADD CONSTRAINT RefNiveles_Acceso57 
    FOREIGN KEY (Nivel_Acceso)
    REFERENCES Niveles_Acceso(ID_Acceso)
;


-- 
-- TABLE: Clientes 
--

ALTER TABLE Clientes ADD CONSTRAINT RefCategorias_Clientes20 
    FOREIGN KEY (Categoria)
    REFERENCES Categorias_Clientes(ID_Categoria)
;


-- 
-- TABLE: Compras_Detalle 
--

ALTER TABLE Compras_Detalle ADD CONSTRAINT RefFacturas_Compras28 
    FOREIGN KEY (Factura)
    REFERENCES Facturas_Compras(ID_Factura)
;

ALTER TABLE Compras_Detalle ADD CONSTRAINT RefProductos29 
    FOREIGN KEY (Producto)
    REFERENCES Productos(ID_Producto)
;

ALTER TABLE Compras_Detalle ADD CONSTRAINT RefIVA_Tasas40 
    FOREIGN KEY (Tasa_IVA)
    REFERENCES IVA_Tasas(ID_Tasa)
;


-- 
-- TABLE: Empleados 
--

ALTER TABLE Empleados ADD CONSTRAINT RefCargos56 
    FOREIGN KEY (Cargo)
    REFERENCES Cargos(ID_Cargo)
;


-- 
-- TABLE: Facturas_Compras 
--

ALTER TABLE Facturas_Compras ADD CONSTRAINT RefProveedores19 
    FOREIGN KEY (Proveedor)
    REFERENCES Proveedores(ID_Proveedor)
;

ALTER TABLE Facturas_Compras ADD CONSTRAINT RefCondiciones_Ventas21 
    FOREIGN KEY (ID_Condicion)
    REFERENCES Condiciones_Ventas(ID_Condicion)
;


-- 
-- TABLE: Facturas_Ventas 
--

ALTER TABLE Facturas_Ventas ADD CONSTRAINT RefEmpleados18 
    FOREIGN KEY (Vendedor)
    REFERENCES Empleados(ID_Empleado)
;

ALTER TABLE Facturas_Ventas ADD CONSTRAINT RefCondiciones_Ventas25 
    FOREIGN KEY (Condicion_Venta)
    REFERENCES Condiciones_Ventas(ID_Condicion)
;

ALTER TABLE Facturas_Ventas ADD CONSTRAINT RefClientes55 
    FOREIGN KEY (Cliente)
    REFERENCES Clientes(ID_Clientes)
;


-- 
-- TABLE: Lista_Precios 
--

ALTER TABLE Lista_Precios ADD CONSTRAINT RefProductos44 
    FOREIGN KEY (Item)
    REFERENCES Productos(ID_Producto)
;


-- 
-- TABLE: Ordenes_Detalles 
--

ALTER TABLE Ordenes_Detalles ADD CONSTRAINT RefOrdenes_Pagos60 
    FOREIGN KEY (Orden_Pago)
    REFERENCES Ordenes_Pagos(ID_Orden_Pago)
;

ALTER TABLE Ordenes_Detalles ADD CONSTRAINT RefFacturas_Compras63 
    FOREIGN KEY (Factura)
    REFERENCES Facturas_Compras(ID_Factura)
;


-- 
-- TABLE: Ordenes_Pagos 
--

ALTER TABLE Ordenes_Pagos ADD CONSTRAINT RefProveedores42 
    FOREIGN KEY (Proveedor)
    REFERENCES Proveedores(ID_Proveedor)
;


-- 
-- TABLE: Productos 
--

ALTER TABLE Productos ADD CONSTRAINT RefIVA_Tasas32 
    FOREIGN KEY (Tasa_IVA)
    REFERENCES IVA_Tasas(ID_Tasa)
;

ALTER TABLE Productos ADD CONSTRAINT RefLineas_Productos33 
    FOREIGN KEY (Linea_Producto)
    REFERENCES Lineas_Productos(ID_Linea_Producto)
;

ALTER TABLE Productos ADD CONSTRAINT RefMarcas45 
    FOREIGN KEY (Marca)
    REFERENCES Marcas(ID_Marca)
;


-- 
-- TABLE: Recibos_Cobros 
--

ALTER TABLE Recibos_Cobros ADD CONSTRAINT RefClientes43 
    FOREIGN KEY (Clientes)
    REFERENCES Clientes(ID_Clientes)
;


-- 
-- TABLE: Recibos_Detalles 
--

ALTER TABLE Recibos_Detalles ADD CONSTRAINT RefRecibos_Cobros64 
    FOREIGN KEY (Recibo_Cobro)
    REFERENCES Recibos_Cobros(ID_Orden_Pago)
;

ALTER TABLE Recibos_Detalles ADD CONSTRAINT RefFacturas_Ventas65 
    FOREIGN KEY (Factura)
    REFERENCES Facturas_Ventas(ID_Factura)
;


-- 
-- TABLE: Stocks 
--

ALTER TABLE Stocks ADD CONSTRAINT RefDepositos36 
    FOREIGN KEY (Deposito)
    REFERENCES Depositos(ID_Deposito)
;

ALTER TABLE Stocks ADD CONSTRAINT RefProductos38 
    FOREIGN KEY (Item)
    REFERENCES Productos(ID_Producto)
;


-- 
-- TABLE: Transferencias 
--

ALTER TABLE Transferencias ADD CONSTRAINT RefDepositos47 
    FOREIGN KEY (Destino)
    REFERENCES Depositos(ID_Deposito)
;

ALTER TABLE Transferencias ADD CONSTRAINT RefDepositos48 
    FOREIGN KEY (Origen)
    REFERENCES Depositos(ID_Deposito)
;

ALTER TABLE Transferencias ADD CONSTRAINT RefEmpleados51 
    FOREIGN KEY (Tranferente)
    REFERENCES Empleados(ID_Empleado)
;

ALTER TABLE Transferencias ADD CONSTRAINT RefEmpleados52 
    FOREIGN KEY (Autorizante)
    REFERENCES Empleados(ID_Empleado)
;


-- 
-- TABLE: Transferencias_Detalle 
--

ALTER TABLE Transferencias_Detalle ADD CONSTRAINT RefTransferencias66 
    FOREIGN KEY (ID_Transferencia)
    REFERENCES Transferencias(ID_Transferencia)
;

ALTER TABLE Transferencias_Detalle ADD CONSTRAINT RefProductos67 
    FOREIGN KEY (Item)
    REFERENCES Productos(ID_Producto)
;


-- 
-- TABLE: Ventas_Detalle 
--

ALTER TABLE Ventas_Detalle ADD CONSTRAINT RefFacturas_Ventas13 
    FOREIGN KEY (Factura)
    REFERENCES Facturas_Ventas(ID_Factura)
;

ALTER TABLE Ventas_Detalle ADD CONSTRAINT RefProductos17 
    FOREIGN KEY (Producto)
    REFERENCES Productos(ID_Producto)
;

ALTER TABLE Ventas_Detalle ADD CONSTRAINT RefIVA_Tasas39 
    FOREIGN KEY (Tasa_IVA)
    REFERENCES IVA_Tasas(ID_Tasa)
;


