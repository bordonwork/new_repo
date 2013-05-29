use sistema; 

INSERT INTO IVA_Tasas (`ID_Tasa`,`Porcentaje`) VALUES ('100','0.0');
INSERT INTO IVA_Tasas (`ID_Tasa`,`Porcentaje`) VALUES ('101','5.0');
INSERT INTO IVA_Tasas (`ID_Tasa`,`Porcentaje`) VALUES ('102','10.0');

INSERT INTO Tipos_Pagos (`ID_Tipo_Pago`,`Descripcion`) VALUES ('100','Efectivo');
INSERT INTO Tipos_Pagos (`ID_Tipo_Pago`,`Descripcion`) VALUES ('101','Cheque');
INSERT INTO Tipos_Pagos (`ID_Tipo_Pago`,`Descripcion`) VALUES ('102','Nota de Extraccion');
INSERT INTO Tipos_Pagos (`ID_Tipo_Pago`,`Descripcion`) VALUES ('103','Pagare');

INSERT INTO Categorias_Clientes (`ID_Categoria`,`Descripcion`,`Linea_Credito`) VALUES ('100','Minorista','0');
INSERT INTO Categorias_Clientes (`ID_Categoria`,`Descripcion`,`Linea_Credito`) VALUES ('101','Mayorista_Tipo_Uno','2000000');
INSERT INTO Categorias_Clientes (`ID_Categoria`,`Descripcion`,`Linea_Credito`) VALUES ('102','Mayorista_Tipo_Dos','5000000');
INSERT INTO Categorias_Clientes (`ID_Categoria`,`Descripcion`,`Linea_Credito`) VALUES ('103','Mayorista_Tipo_Tres','8000000');
INSERT INTO Categorias_Clientes (`ID_Categoria`,`Descripcion`,`Linea_Credito`) VALUES ('104','Mayorista_Tipo_Cuatro','11000000');

INSERT INTO Condiciones_Ventas (`ID_Condicion`,`Descripcion`) VALUES ('100','Contado');
INSERT INTO Condiciones_Ventas (`ID_Condicion`,`Descripcion`) VALUES ('101','Credito');


INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES ('100','Siemi S.R.L','80005675-1','Amancio Gonzalez 129 c/ Fdo de la Mora','(021)301 225','pietrafesa@siemi.com.py','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('101','Lamp S.A','80005674-1','Av.  Mcal Lopez c/Mateo Estigarribia','(021) 678 027','lampsa@gmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('102','Casa Bento','80005673-6','Av. Aviadores del Chaco 3.536','(021)622 895','casabento@gmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('103','Maelec','80005673-1','Av. Aviadores del Chaco 3494','(0985)661 890','ventas@maelec.com.py','8000000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('104','Imaluz','80005673-7','Av. Eusebio Ayala Nº 3499','(021)550 047','imaluz@gmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('105','APA S.R.L','80005675-1','Av. Eusebio Ayala Nº4458','(021) 514 302','apa@hotmail.com','900000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('106','Lumitex S.R.L','80005672-0','Av. Gaspar Rodriguez de Francia','(0985)987654','lumitexsrl@gmail.com','700000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('107','Kawai','80005673-3','Av. Medicos del Chaco','(061)300 800','kawai@hotmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('108','Arte Luz','80005674-1','Av.Eusebio Ayala 1.488','(021) 222 917','arteluz@hotmail.com','10000000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('109','Electrobell','80005673-4','Av.Eusebio Ayala 1186','(061) 208 987','electorobell@gmail.com','7000000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('110','Electro Mass','80005675-5','Av.Eusebio Ayala 817','(061)222 645','electomass00@hotmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('111','Nelservice','80005674-3','Av.Eusebio Ayala esq. Juan P.Melgarejo','(0975)876 342','nelservice2gmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('112','Demafin','80005675-9','Av.Madame Lynch 315 y Andrada','(021)501 633','demafin@hotmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('113','AB Electricidad','80005675-1','Av.San Jose y 1º de mayo','(021) 584 566','ab.electriciada@hotmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('114','Dandres S.A','80005673-8','Ayolas 1.045 c/Jejui','(021)443 478','dandres@hotmail.com','30000000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('115','Semac S.R.L','80005673-9','Azara 1.694 esq Rca. Francia','(021)222 673','semacsrl@hotmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('116','Alum S.R.L','80005674-1','Carios 683 c/Bartolome de las Casas','(021) 550 218','info@alumsrl.com.py','3000000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('117','Luminotecnia S.A','80005672-6','E. Ayala 2.288','(021)551 075','luminotecniasa@hotmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('118','Luzram S.A','80005675-8','Encarnacion 1.921 esq.Taruma','(021)554 947','mm@luzram.com.py','540000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('119','Apud S.A.I.C.I','80005673-1','Fulgencio R. Moreno 134','(021) 450 659','apud@gmail.com.py','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('120','Enerluz S.A','80005672-1','Gral. Caballero c/Independencia','(0983)567 890','enerluz.gmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('121','Comercial San Expedito','80005674-4','Gral.Aquino Nº967','(061)233 498','cholitorres@hotmail.com','8000000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('122','Inpaco','80005673-5','Gral.Caballero c/ S.Pettirossi','(021)900 551','inpaco@hotmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('123','Electic City','80005674-5','Gral.Diaz Nº 486 c/ 14 de Mayo','(0541) 450 977','electic@gmail.com','900000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('124','Comercial 3H','80005672-7','Hernandarias Nº 1093','(021)480 017','comercial3h@hotmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('125','Electricidad RMS','80005672-3','Independencia Nacional','(061) 226 939','electricidadrms@hotmail.es','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('126','Electro Largo','80005672-2','Libertad 855 c/Mcal.Lopez','(0875)123 566','electrolargo@hotmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('127','Electrica Mendez','80005672-8','Mcal. Lopez 3.065','(021)274 005','electricidad.mendez@gmail.com','5000000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('128','Panorama S.R.L','80005672-4','Mcal.Estigarribia 22 e/Dr. Francia','(0336)274 125','panorama.982hotmail.com','4000000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('129','Electrototal','80005674-8','Mcal.Estigarribia Nº 324 km 7','(021)520 408','vetas@electrototal.com.py','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('130','Peralta Electricidad','80005675-3','Medicos del Chaco 2988','(0983)765 455','peralta_electricidad@hotmail.com','300000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('131','Volta Electricidad','80005674-9','Ntra. De la Asuncion Nº2260','(021)370 606','voltaelectricidad@gmail.com','4000000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('132','Singel S.A','80005674-2','Nuestra Señora de la Asuncion','(0983)987 655','info@singelsrl.com','2000000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('133','Alicion S.A','80005673-6','Ñeembucu Nº 3.255 c/Paraiso','(021) 557534','alcion.sa.paraguay@gmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('134','Vicente Espinola Roa','80005675-4','Proyectadas e/ Brasil y Rojas Silva','(0975)344 788','vicente.espinola@hotmail.com','860000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('135','Electropar S.A','80005674-7','Rca. Argentina 1.778','(021)616 700','ventas@electropar.com.py','600000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('136','Dieselectix S.A','80005672-5','Ruta Mcal.Estigarribia 331','(021) 501 321','dieselectrixsa@yahoo.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('137','Agrofepar','80005672-9','Ruta Mcal.Estigarribia c/España','(021) 582 107','agrofepar@hotmail.com','1000000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('138','Servi San Cayetano','80005674-6','Ruta Transchaco km 12.5','(021)761 366','servi.sancayetano@gmail.com','560000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('139','Comercial Katuetei','80005675-7','Ruta Transchaco km 18','(021)756 109','katuetei@hotmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('140','San Andres Electricidad','80005675-6','Ruta x esq. Tte Agüero','(0343)421 208','san_andres208@hotmail.com','0');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('141','Beko Electricidad','80005672-5','Sp. Luqueño c/Humaita','(021)644 055','bekoelectricidad@hotmail.com','900000');
INSERT INTO Proveedores (`ID_Proveedor`,`Nombre`,`RUC`,`Direccion`,`Telefono`,`Email`,`Saldo`) VALUES  ('142','Electrotec Jorge','80005673-2','Von Polesky c/Rio Ñacunday','(0981)803 272','electrotec.jorge@hotmail.com','3000000');
