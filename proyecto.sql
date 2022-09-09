/*  COMIENZO DEL SCRIPTS   */


create schema sebastianBenitez authorization postgres;

create table sebastianBenitez.color(
id_color serial primary key, 
color varchar(120) not null,
descripcion varchar (512) null
);

insert into sebastianBenitez.color (color,descripcion) values ('ROJO','ROJO METALIZADO');
insert into sebastianBenitez.color (color,descripcion) values ('GRIS','GRIS ANTRACITA');
insert into sebastianBenitez.color (color,descripcion) values ('VERDE','SIN DATOS');
insert into sebastianBenitez.color (color,descripcion) values ('NEGRO','SIN DATOS');
insert into sebastianBenitez.color (color,descripcion) values ('AMARILLO','SIN DATOS');
insert into sebastianBenitez.color (color,descripcion) values ('VERDE','VERDE LIMON');
insert into sebastianBenitez.color (color,descripcion) values ('AZUL','AZUL METALIZADO');
insert into sebastianBenitez.color(color,descripcion) values ('NARANJA','SIN DATOS');
insert into sebastianBenitez.color (color,descripcion) values ('BRONCE','BRONCE METALIZADO');
insert into sebastianBenitez.color (color,descripcion) values ('PLATA','PLATA METALIZADO');

create table sebastianBenitez.modelo (
id_modelo varchar (20) not null, --PK
nombre_modelo varchar (120) not null,
descripcion varchar(512) null,
constraint modelo_pk primary key (id_modelo));

insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD001','ACTIVE TORIER',' 5 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD002','COUNTRY MAN',' 3 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD003','MINI CABRIO',' SIN DATOS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD004','LEXUS UX',' 3 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD005','LEXUS NX',' SIN DATOS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD006','LEXUS RX',' 3 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD007','INTEGRA',' SIN DATOS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD008','TLX',' 5 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD009','CIVIC',' SIN DATOS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD010','A3',' 3 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD011','IBIZA',' 5 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD012','GOLF',' 3 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD013','MEGANE',' 5 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD014','MICRA',' 3 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD015','PACIFICA',' 5 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD016','300C',' 3 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD017','CALIBER',' 5 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD018','CHALLENGUER',' 3 PUERTAS');
insert into sebastianBenitez.modelo (id_modelo,nombre_modelo,descripcion) values ('MOD019','JOURNEY',' 5 PUERTAS');

create table sebastianBenitez.marca(
id_marca varchar(20) not null,
marca varchar (120) not null,
descripcion varchar (512) null,
constraint marca_pk primary key (id_marca));

insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR001','BMW','SIN DATOS');
insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR002','MINI','SIN DATOS');
insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR003','LEXUS','SIN DATOS');
insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR004','ACURA','SIN DATOS');
insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR005','HONDA','SIN DATOS');
insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR006','AUDI','SIN DATOS');
insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR007','SEAT','SIN DATOS');
insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR008','VOLKSWAGEN','SIN DATOS');
insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR009','RENAULT','SIN DATOS');
insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR010','NISSAN','SIN DATOS');
insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR011','CHRYSLER','SIN DATOS');
insert into sebastianBenitez.marca (id_marca,marca,descripcion) values ('MAR012','DODGE','SIN DATOS');

create table sebastianBenitez.grupo (
id_grupo varchar(20) not null,
nombre_grupo varchar(120) not null,
descripcion varchar(512) null,
constraint grupo_pk primary key (id_grupo));

insert into sebastianBenitez.grupo (id_grupo,nombre_grupo,descripcion) values ('GRU001','BMW','SIN DATOS');
insert into sebastianBenitez.grupo (id_grupo,nombre_grupo,descripcion) values ('GRU002','TOYOTA','SIN DATOS');
insert into sebastianBenitez.grupo (id_grupo,nombre_grupo,descripcion) values ('GRU003','HONDA','SIN DATOS');
insert into sebastianBenitez.grupo (id_grupo,nombre_grupo,descripcion) values ('GRU004','VOLKSWAGEN','NACIONAL');
insert into sebastianBenitez.grupo (id_grupo,nombre_grupo,descripcion) values ('GRU005','RENAULT','NACIONAL');
insert into sebastianBenitez.grupo (id_grupo,nombre_grupo,descripcion) values ('GRU006','FCA','IMPORTADOS');


create table sebastianBenitez.moneda(
id_moneda integer primary key, --PK
tipo_moneda varchar(120) not null,
descripcion varchar (512) null);

insert into sebastianbenitez.moneda (id_moneda,tipo_moneda,descripcion) values (1,'EUROS', 'SIN DATOS');
insert into sebastianbenitez.moneda (id_moneda,tipo_moneda,descripcion) values (2,'DOLARES', 'SIN DATOS');


create table sebastianBenitez.poliza (
id_poliza varchar (20) not null,
num_poliza varchar (120) not null,
importe float not null,
fecha_alta date not null,
fecha_renovacion date not null,
id_moneda integer not null,
descripcion varchar (512) null,
constraint poliza_pk primary key (id_poliza));

insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL001','A00000001',340.00,'2022-01-01','2023-01-01',1,'POLIZA BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL002','A00000002',280.10,'2021-10-01','2022-10-01',1,'POLIZA BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL003','A00000003',540.30,'2022-02-01','2023-02-01',1,'POLIZA BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL004','A00000004',345.50,'2021-11-01','2022-11-01',1,'POLIZA BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL005','A00000005',340.00,'2022-03-01','2023-03-01',1,'POLIZA BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL006','B00000001',540.98,'2021-12-01','2022-12-01',1,'POLIZA NO BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL007','B00000002',580.45,'2022-04-01','2023-04-01',1,'POLIZA NO BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL008','B00000003',540.34,'2021-10-02','2022-10-02',1,'POLIZA NO BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL009','B00000004',245.45,'2022-05-01','2023-05-01',1,'POLIZA NO BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL010','B00000005',340.00,'2021-11-02','2022-11-02',1,'POLIZA NO BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL011','C00000001',540.45,'2022-06-01','2023-06-01',1,'POLIZA NO BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL012','C00000002',580.50,'2021-12-02','2022-12-02',1,'POLIZA NO BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL013','C00000003',540.00,'2022-07-01','2023-07-01',1,'POLIZA NO BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL014','C00000004',245.00,'2021-10-03','2022-10-03',1,'POLIZA NO BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL015','C00000005',340.10,'2022-08-01','2023-08-01',1,'POLIZA NO BONIFICADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL016','D00000001',540.86,'2021-11-03','2022-11-03',1,'POLIZA AMPLIADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL017','D00000002',580.45,'2022-09-01','2023-09-01',1,'POLIZA AMPLIADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL018','D00000003',540.50,'2021-12-03','2022-12-03',1,'POLIZA AMPLIADA');
insert into sebastianbenitez.poliza (id_poliza,num_poliza,importe,fecha_alta,fecha_renovacion,id_moneda,descripcion) values ('POL019','D00000004',245.34,'2022-09-02','2023-09-02',1,'POLIZA AMPLIADA');


create table sebastianBenitez.aseguradora (
id_matricula varchar (20) not null,
id_poliza varchar(20) not null,
nombre_aseguradora varchar (512) null,
descripcion varchar (120) null,
constraint aseguradora_pk primary key (id_matricula,id_poliza));


insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT001','POL001','PELAYO','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT002','POL002','PELAYO','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT003','POL003','PELAYO','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT004','POL004','PELAYO','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT005','POL005','PELAYO','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT006','POL006','MAPFRE','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT007','POL007','MAPFRE','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT008','POL008','MAPFRE','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT009','POL009','MAPFRE','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT010','POL010','MAPFRE','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT011','POL011','LINEA DIRECTA','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT012','POL012','LINEA DIRECTA','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT013','POL013','LINEA DIRECTA','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT014','POL014','LINEA DIRECTA','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT015','POL015','LINEA DIRECTA','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT016','POL016','MUTUA MADRILEÑA','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT017','POL017','MUTUA MADRILEÑA','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT018','POL018','MUTUA MADRILEÑA','SIN DATOS');
insert into sebastianBenitez.aseguradora (id_matricula,id_poliza,nombre_aseguradora,descripcion) values ('MAT019','POL019','MUTUA MADRILEÑA','SIN DATOS');


create table sebastianbenitez.revisiones(
id_revision varchar(20) not null,
fecha_revision date not null,
cantidad_revisiones integer not null,
importe float not null,
id_moneda integer not null,
kilometros_revision float not null,
observaciones varchar(512) null,
constraint revision_pk primary key (id_revision));

INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV001','01/01/2020',1,55.20,1,125000.23,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV002','	01/01/2021'	,2,	56.37,1	,135030.34,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV003','	01/01/2022',3,47.34,1,145010.98,' '	);
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV004','	01/01/2023',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV005','	01/01/2021',1,100.34,1,35000.34,' '	);
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV006','	01/01/2022',2,99.56,1,45123.12,' '	);
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV007','	01/01/2023',0,0,1,0000,' '	);
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV008','	01/01/2022',1,47.76,1,21003.30,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV009','	01/01/2023',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV010','	01/01/2023',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV011','	01/01/2024',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV012','	01/01/2025',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV013','01/01/2026',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV014','01/06/2020',1,46.10,1,31999.80,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV015','01/06/2021',2,47.15,1,59010.23,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV016','01/06/2022',3,123.12,1,75030.20,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV017','01/06/2023',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV018','01/06/2021',1,99.10,1,26301.10,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV019','01/06/2022',2,88.34,1,46030.30,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV020','01/06/2023',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV021','01/06/2022',1,67.36,1,81543.34,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV022','01/06/2023',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV023','01/06/2023',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV024','01/06/2024',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV025','01/06/2025',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV026','01/06/2026',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV027','01/08/2020',1,47.00,1,17532.45,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV028','01/08/2021',2,123.00,1,27500.00,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV029','01/08/2022',3,100.50,1,37555.98,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV030','01/08/2023',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV031','01/08/2021',1,88.90,1,88345.98,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV032','01/08/2022',2,47.56,1,99876.01,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV033','01/08/2023',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV034','01/08/2022',1,78.67,1,37987.10,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV035','01/08/2023',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV036','01/08/2023',0,0,1,0000,' ');
INSERT INTO	sebastianbenitez.revisiones	(id_revision,fecha_revision,cantidad_revisiones,importe,id_moneda,kilometros_revision,observaciones) values ('REV037','01/08/2024',0,0,1,0000,' ');


create table sebastianbenitez.historico_revisiones(
id_matricula varchar(20) not null,
num_revision integer not null,
id_revision varchar(20) not null,
observaciones varchar (120) null,
constraint historico_revision_pk primary key (id_matricula,num_revision));


insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT001',1,'REV001','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT001',2,'REV002','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT001',3,'REV003','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT001',4,'REV004','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT002',5,'REV005','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT002',6,'REV006','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT002',7,'REV007','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT003',8,'REV008','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT003',9,'REV009','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT004',10,'REV010','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT005',11,'REV011','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT006',12,'REV012','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT007',13,'REV013','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT008',14,'REV014','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT008',15,'REV015','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT008',16,'REV016','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT008',17,'REV017','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT009',18,'REV018','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT009',19,'REV019','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT009',20,'REV020','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT010',21,'REV021','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT010',22,'REV022','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT011',23,'REV023','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT012',24,'REV024','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT013',25,'REV025','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT014',26,'REV026','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT015',27,'REV027','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT015',28,'REV028','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT015',29,'REV029','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT015',30,'REV030','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT016',31,'REV031','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT016',32,'REV032','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT016',33,'REV033','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT017',34,'REV034','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT017',35,'REV035','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT018',36,'REV036','SIN DATOS');
insert into sebastianbenitez.historico_revisiones (id_matricula,num_revision,id_revision,observaciones) values ('MAT019',37,'REV037','SIN DATOS');


create table sebastianbenitez.vehiculos (
id_matricula varchar(20) not null,
id_grupo varchar (20) not null,
id_marca varchar (20) not null,
id_modelo varchar (20) not null,
id_color integer not null,
num_matricula varchar(120) not null,
kilometraje integer not null,
precio_compra float not null,
id_moneda integer not null,
fecha_compra DATE not null,
descripcion varchar (512) null,
constraint matricula_pk primary key (id_matricula),
constraint moneda_fk foreign key (id_moneda) references sebastianbenitez.moneda(id_moneda));


insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT001','GRU001','MAR001','MOD001',1,'0001NBX',155000,35600.50,1,'2015-01-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT002','GRU001','MAR002','MOD002',2,'0002NBX',55000,45310.00,1,'2016-01-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT003','GRU001','MAR002','MOD003',3,'0003NBX',45000,55060.40,1,'2017-01-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT004','GRU002','MAR003','MOD004',4,'0004NBX',35000,33320.30,1,'2018-01-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT005','GRU002','MAR003','MOD005',5,'0005NBX',65000,33500.00,1,'2019-01-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT006','GRU002','MAR003','MOD006',6,'0006NBX',75000,42040.00,1,'2020-01-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT007','GRU003','MAR004','MOD007',1,'0007NBX',85000,43580.90,1,'2021-01-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT008','GRU003','MAR004','MOD008',2,'0008NBX',95000,44387.90,1,'2015-06-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT009','GRU003','MAR005','MOD009',3,'0009NBX',47000,46377.50,1,'2016-06-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT010','GRU004','MAR006','MOD010',4,'0010NBX',100000,47000.00,1,'2017-06-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT011','GRU004','MAR007','MOD011',5,'0011NBX',55000,88444.50,1,'2018-06-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT012','GRU004','MAR008','MOD012',6,'0012NBX',35500,650045.50,1,'2019-06-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT013','GRU005','MAR009','MOD013',1,'0013NBX',45500,49001.10,1,'2020-06-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT014','GRU005','MAR010','MOD014',3,'0014NBX',55700,38808.90,1,'2021-06-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT015','GRU006','MAR011','MOD015',2,'CL001DC',55900,37500.50,2,'2015-08-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT016','GRU006','MAR011','MOD016',4,'CL002DC',102000,34657.60,2,'2016-08-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT017','GRU006','MAR012','MOD017',5,'CL003DC',51200,44456.45,2,'2017-08-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT018','GRU006','MAR012','MOD018',6,'CL004DC',50200,55678.70,2,'2018-08-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');
insert into sebastianbenitez.vehiculos(id_matricula,id_grupo ,id_marca ,id_modelo ,id_color  ,num_matricula ,kilometraje ,precio_compra,id_moneda ,fecha_compra,descripcion) values ('MAT019','GRU006','MAR012','MOD019',1,'CL005DC',5500,34587.56,2,'2019-08-01','COCHE COMPARTIDO POR EMPLEADOS A1 Y A2');


/* FK */

alter table sebastianbenitez.vehiculos add constraint vehiculos_grupo_fk foreign key (id_grupo) references sebastianBenitez.grupo(id_grupo);
alter table sebastianbenitez.vehiculos  add constraint vehiculos_marca_pk foreign key (id_marca) references sebastianBenitez.marca(id_marca);
alter table sebastianbenitez.vehiculos add constraint vehiculos_modelos_pk foreign key (id_modelo) references sebastianBenitez.modelo(id_modelo);
alter table sebastianbenitez.aseguradora  add constraint aseguradora_poliza_pk foreign key (id_poliza) references sebastianBenitez.poliza (id_poliza);
alter table sebastianbenitez.aseguradora  add constraint aseguradora_vehiculas_pk foreign key (id_matricula) references sebastianBenitez.vehiculos (id_matricula);
alter table sebastianbenitez.vehiculos add constraint vehiculos_color_pk foreign key (id_color) references sebastianBenitez.color(id_color);
alter table sebastianbenitez.poliza add constraint poliza_moneda_fk foreign key (id_moneda) references sebastianBenitez.moneda(id_moneda);
alter table sebastianbenitez.historico_revisiones  add constraint historico_revisiones_fk foreign key (id_revision) references sebastianbenitez.revisiones(id_revision);
alter table sebastianbenitez.historico_revisiones  add constraint historicos_revisiones_matricula_fk foreign key (id_matricula) references sebastianbenitez.vehiculos(id_matricula);
alter table sebastianbenitez.revisiones add constraint revisiones_moneda_fk foreign key (id_moneda) references sebastianbenitez.moneda(id_moneda);

/*  FIN DEL SCRIPTS  */


