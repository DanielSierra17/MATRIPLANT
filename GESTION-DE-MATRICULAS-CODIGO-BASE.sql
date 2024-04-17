	CREATE DATABASE GestionMatriculas;
	USE GestionMatriculas;
	CREATE TABLE Acudiente
	(
	Cedula bigint unsigned primary key unique,
	Nombres VARCHAR(255) not null,
	Apellidos VARCHAR(255) not null,
	Parentesco VARCHAR(255) not null,
	Correo VARCHAR(255) not null,
	Telefono BIGINT not null,
    Activo TINYINT
	);
	CREATE TABLE Usuario
	(
	Num_identificacion bigint unsigned primary key unique,
    Contrasena VARCHAR (255) not null,
    Nom_Usuario VARCHAR (255) not null,
	Nombre VARCHAR(255) not null,
	Primer_Ape VARCHAR(255) not null,
	Segundo_Ape VARCHAR(255) not null,
	Telefono BIGINT not null,
	Correo VARCHAR(255) not null,
	Cargo ENUM('Personal Gestion Matricula','Estudiante', 'Administrador') not null,
	Fecha_de_Nac Date not null,
	Colegio_Antiguo VARCHAR(255),
	Ciudad VARCHAR(255) not null,
	Direccion VARCHAR(255) not null,
	Barrio VARCHAR(255) not null,
	Estrato TINYINT not null,
	Anos_de_Exp TINYINT,
	Genero CHAR(1) not null,
	Eps VARCHAR(255) not null,
	RH CHAR(1) not null,
	Tipo_De_Sangre CHAR(2)not null,
	Activo TINYINT
	);
	CREATE TABLE Curso
	(
	Nombre VARCHAR(255) primary key not null,
	Cantidad_Estudiantes TINYINT not null,
	Ubicacion VARCHAR(255) not null
	);
	CREATE TABLE Asigna
	(
	Num_Matricula bigint unsigned unique not null,
	NOMBRE VARCHAR(255) not null,
    Activo TINYINT
	);
	CREATE TABLE Alergias
	(
	Num_Id bigint unsigned unique not null,
	Alergias VARCHAR(255) not null,
    Activo TINYINT,
	foreign key(Num_Id) references Usuario (Num_identificacion)
	);
	CREATE TABLE Matricula
	(
	Numero_Matricula bigint primary key unique not null,
	Lugar_De_Matricula VARCHAR(255) not null,
	Fecha_De_Matricula DATE not null,
	Numero_Identificacion_PGM bigint unsigned not null,
	Numero_Identificacion_EST bigint unsigned not null,
    Activo TINYINT,
	foreign key(Numero_Identificacion_PGM) references Usuario (Num_identificacion),
	foreign key(Numero_Identificacion_EST) references Usuario (Num_identificacion)
	);

#REGISTROS PRELIMINARES  --------------------------------------------------------------------------
INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1025320898, 'DAN@0912', 'DANTE3020', 'Daniel Fernando','Sierra','Betancourt', 3102359610 ,'danielsierrabetancourt@gmail.com', 3 ,'2004-09-12','Celestin Freinet', 'Barranquilla','Cra 137 A 132 F 09','La Toscana','4', '6', 'M','Sanidad Militar','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1536191412, 'ANDREWMASTERS', 'Miguel08989', 'Miguel Andres','Gonzalez','Moreno', 3015321653 ,'miguelgonzalezmoreno@gmail.com', 3 ,'2005-03-07', 'Bogotá','Calle 170a 133-82','Los Porticos','3','6','M','Famisanar','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1053268456, 'M4ur087','MAURI890', 'Mauricio','Hernandez','Forero', 3165785492 ,'maurohernandez27@gmail.com', 2 ,'2007-08-21','Gerardo Molina', 'Bogotá','Calle 130a 125-48','Los Porticos','2','M','Famisanar','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (99452010, 'M4r1419', 'maria091@', 'Maria','Marquez','Murcia', 5381206 ,'murciamaria654@gmail.com', 1 ,'1990-08-30', 'Bogotá','Calle 130a 123-32','Los Porticos','3','6','M','Famisanar','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (56488523, 'm1g63l90', 'FORZA0255', 'Miguel','Garcia','Forero', 65595482 ,'miguelforerog10@gmail.com', 1 ,'1986-03-12','Bogotá','Calle 130a 125-21','Los Porticos','3','4','M','Famisanar','+','B', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (89456325, '@l3j@480', 'Supermegasol', 'Alejandro','Gonzalez','Morales', 3152601846 ,'alegonzamor123@gmail.com', 1 ,'1994-01-11','Bogotá','Calle 130a 110-30','Los Porticos','4','13','M','salud total','-','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (65948566, '4n3890dro', 'OmegaPre0987', 'Andres','Hernandez','Acosta', 36485145 ,'andreshacosta@gmail.com', 1 ,'1993-09-27','Bogotá','Calle 130a 105-90','Los Porticos','1','1','M','Famisanar','-','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (102354956, 'ANDR45678', 'WeVT^vhz&i', 'Andrea','Marin','Ladino', 3220318596 ,'andrealadmarin74@gmail.com', 1 ,'1959-12-26', 'Bogotá','Calle 130a 115-40','Los Porticos','2','6','F','salud total','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (75684236, '89@x3lPOR', '5L6B5bfrDN', 'Axel','Portela','Gacia', 96453102 ,'aportelag9876@gmail.com', 1 ,'1992-05-21', 'Bogotá','Calle 130a 135-28','Los Porticos','2','10','M','salud colmena','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (53268456, '}{Felipao', 'fUxomxzYZi', 'Felipe','Borray','Piñero', 3126503125 ,'borrayfelipepiñero@gmail.com', 1 ,'1865-09-24','Bogotá','Calle 130a 118-18','Los Porticos','3','5','M','sanitas','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1102348569, '#9H@jdhu', 'LbUJHuCdal', 'Harold','Murcia','Rincon', 32156232 ,'haroldmurciar6545@gmail.com', 2 ,'2006-12-27','Gerardo Molina', 'Bogotá','Calle 130a 125-38','Los Porticos','4','M','Famisanar','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1336485204, 'B07J4@r', 'Fernanoi98', 'Daniel','Fernandez','Borja', 56321536 ,'danielferborja13@gmail.com', 2 ,'2007-06-16','Gerardo Molina', 'Bogotá','Calle 130a 120-65','Los Porticos','3','M','salud total','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1359485222, 'D@v1D.89', 'SUDAVIDA', 'David','Suarez','Lopez', 3102648910 ,'davidsuarez91@gmail.com', 2 ,'2005-01-11','Gerardo Molina', 'Bogotá','Calle 130a 125-85','Los Porticos','2','M','salud total','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1036485036, '@Ndr3S0ft', 'andresitol', 'Anderson','Camargo','Muriel', 5620163559 ,'andercamargomuriel@gmail.com', 2 ,'2007-08-09','Gerardo Molina', 'Bogotá','Calle 130a 105-48','Los Porticos','2','M','sanitas','-','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1648523465, 'ST3V3N90', 'UNIVERSE', 'Steven','Gomez','Perez', 3106485962 ,'stevengomez310@gmail.com', 2 ,'2007-02-10','Gerardo Molina', 'Bogotá','Calle 130a 114-65','Los Porticos','3','M','Famisanar','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1325849615, 'V4RG4S313', 'PLANET456', 'Andres','Vargas','Alvarez', 3132520136 ,'andresv4rg4s@gmail.com', 2 ,'2007-11-24','Gerardo Molina', 'Bogotá','Calle 130a 126-48','Los Porticos','1','M','cafesalud','-','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (98462137, 'J0S3L03',  'JOUTIÑO', 'Jose','Moreno','Sanches', 32562359 ,'Josemoreno@gmail.com', 1 ,'1991-06-16', 'Bogotá','Calle 130a 135-18','Los Porticos','2','5','M','Famisanar','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1658495200, 'J0RG3S13442', 'Jorjo', 'Jorge','Sierra','Rodriguez', 3254659985 ,'jorgesierrarodri@gmail.com', 2 ,'2006-04-13','Gerardo Molina', 'Bogotá','Calle 130a 125-20','Los Porticos','2','M','Sanitas','-','B', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (59862318, '@LEJA123456', 'aLEJHGYI', 'Alejandra','Ramirez','Vasquez', 53648566 ,'alejaramirezv@gmail.com', 1 ,'1995-10-23', 'Bogotá','Calle 130a 125-62','Los Porticos','2','3','F','Compensar','-','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac,  Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (65965987, '4irgn4234', 'viRGIosn', 'Virginia','Barrera','Alonso', 3226485699 ,'virgbarrera654@gmail.com', 1 ,'1996-06-07', 'Bogotá','Calle 130a 120-10','Los Porticos','4','1','F','Famisanar','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1458265930, 'A_N_67_***', '456855gndsdj', 'Antonia','Barragan','Ruiz', 3216859478 ,'antoniobarraganruiz@gmail.com', 2 ,'2006-03-08','Gerardo Molina', 'Bogotá','Calle 130a 105-80','Los Porticos','2','F','Salud Total','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1368459624, '2ho@P@nJxn', 'fernaGIHS', 'Fernanda','Alean','Diaz', 5397854 ,'faleandiaz@gmail.com', 1 ,'1990-05-25', 'Bogotá','Calle 130a 98-13','Los Porticos','2','2','F','Famisanar','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1064853569, 'F$U89NakJ8', 'AaRoN', 'Aaron','Pico','Megias', 3258181875 ,'aaronpicomegias@gmail.com', 2 ,'2010-05-04','Centro  De Estudios San Basilio','Bogotá', 'Cra. 111 A 148-50','Niza','2','M','Salud Colmena','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1200136059, '6$tZktb$DZ', 'yesuscri', 'Jesus','Valero','Rivera', 3038461087 ,'jesusvalerorivera@gmail.com', 2 ,'2010-10-05','Colegio Hog De Nazareth','Bogotá', 'Calle 148 109b-40','Tibabuyes','3','M','Salud Total','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1316652126, 'X!APf35fow', 'matiascrespom', 'Matias','Crespo','Montiel', 3245483119 ,'matiascrespom@gmail.com', 2 ,'2010-04-09','Centro  De Estudios San Basilio','Bogotá', 'Cl. 143a 113C - 50','Tibabuyes','2','M','Cafe Salud','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1930137032, '9D&B3@mAeX', 'margalvansancho', 'Mar','Galvan','Sancho', 3038254886 ,'margalvansancho@gmail.com', 2 ,'2010-03-08','Gimnasio Cult Santa Rita','Bogotá', 'Cra. 108a 140-48','San Jose','2','F','Famisanar','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1188344187, '4!FNUD2ooq', 'sarahrib', 'Sarah','Ribas','Lima', 3079947509 ,'sarahribasalma@gmail.com', 2 ,'2010-10-05','Colegio Gimn Romano Mixto','Bogotá', 'Cl. 137 129-35','El Rincon','4','F','Comfenalco','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1291147767, 'EDF235B46A', 'azucena', 'Azucena','Serrano','Casal', 3244764807 ,'azucenaserrano@gmail.com', 2 ,'2010-05-11','Gimnasio Cult Santa Rita','Bogotá', 'Cra. 141 142F-15','Tibabuyes','2','F','Compensar','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1016287236, '6BF8D6435C', 'jorgeperalagull', 'Jorge','Peral','Agullo', 3173695991 ,'jorgeperalagullo@outlook.com', 2 ,'2010-03-06','Liceo Arkadia Colombia','Bogotá', 'Cl. 139 144A-13','El Rincon','2','M','Sanitas','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1650816429, '6md%45zCY%', 'andreuangulomontoya', 'Andreu','Angulo','Montoya', 3185656700 ,'andreuangulomontoya@gmail.com', 2 ,'2009-09-03','Colegio Gimn Romano Mixto','Bogotá', 'Carrera 147 B Bis 139-52','Niza','1','M','Salud Total','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1423587060, 'B@GMBN5smh', 'gerardote', 'Gerardo','Tejero','Ventura', 3011656041 ,'gerardotejeroventura@gmail.com', 2 ,'2010-03-10','Liceo Arkadia Colombia','Bogotá', 'Cra. 149c 138-12','Niza','2','M','Famisanar','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1641545466, '7B37DDF8FC', 'Gallegosoler78', 'Faustino','Gallego','Soler', 3092883409 ,'faustinogallego@gmail.com', 2 ,'2010-07-01','Liceo Cult Las Américas','Bogotá', 'Cl. 138 151-35','Tibabuyes','2','M','Salud Total','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1975232862, '885A7289D9', 'MarkUS', 'Mark','Caballero','Menendez', 3047889362 ,'markcaballero@gmail.com', 2 ,'2009-10-09','Gimnasio Cult Santa Rita','Bogotá', 'Cl. 136a 151-41','La Floresta','2','M','Cafe Salud','+','B', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1610146731, 'C35F5A2CEC', 'LiceoVICTOR', 'Victor','Lozano','Redondo', 3215661180 ,'victorlozano@gmail.com', 2 ,'2010-01-09','Liceo Arkadia Colombia','Bogotá', 'Cra. 143 132A-45','Niza','3','M','Sanitas','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1988140535, '7F696437DE', 'manuelruanobello', 'Manuel','Ruano','Bello', 3134183823 ,'manuelruanobello@outlook.com', 2 ,'2010-02-08','Gimnasio Franciscano De Suba','Bogotá', 'cll 151 bis A 136-31','Guaymatal','2','M','Sanitas','+','AB', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (137707039, 'E495C7BD7B', 'celialaramontor', 'Celia','Lara','Montoro', 3016729553 ,'celialaramontoro@outlook.com', 2 ,'2010-10-12','Liceo Arkadia Colombia','Bogotá', 'Cra. 131 129b-98 129b-2 a','Britalia','3','F','Compensar','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1715345653, '24C4B425ED', 'BEAtriz', 'Beatriz','Pinilla','Zabala', 3081561734 ,'beatrizpinillazabala@gmail.com', 2 ,'2009-06-07','Liceo Cult Las Américas','Bogotá', 'Carrera 129  129b -45','San Pedro','1','F','Comfenalco','+','AB', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1938452158, 'zv{PR9nSWc', 'JJJJDISDJ', 'Judit','Fraga','Prado', 3013553526 ,'juditfragaprado@gmail.com', 2 ,'2009-11-12','Colegio Edgar Salamanca Africano','Bogotá', 'Cra. 129a 129b-99 a 129b-1','Nogales','2','F','Sanitas','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1275862592, 's0kl^jR62f', 'kdhUevuQce', 'Erik','Grande','Campo', 3223582042 ,'erkgrandecampo@outlook.com', 2 ,'2010-12-09','Gimnasio Franciscano De Suba','Bogotá', 'Cl. 132a Bis A 134-27 a 134-1','Villa Gloria','1','M','Compensar','-','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1236594070, 'trh"~u7wS[', 'Valenzuela', 'Maria','Valenzuela','Balaguer', 3223582042 ,'mariavelenzuela@outlook.com', 2 ,'2010-12-05','Liceo Arkadia Colombia','Bogotá', 'Cl. 133 140a-33 a 140a-1','Villa Maria','2','F','Salud Total','+','B', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1791410886, '+L[i+QAscK', 'peñamurc', 'Damian','Peña','Murcia', 3124143349 ,'damianpeñamurcia@gmail.com', 2 ,'2011-10-09','Liceo Cult Las Américas','Bogotá', 'Cl. 135 143a-2 a 143a-34','Toscana','2','M','Salud Total','-','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1440679493, '4et8jNK5^M', 'paularoyocespedes', 'Paula','Royo','Cespedes', 3017295362 ,'paularoyocespedes@gmail.com', 2 ,'2010-08-07','Liceo Arkadia Colombia','Bogotá', 'Tv. 143b 137-2 a 137-98','San Pedro','3','F','Famisanar','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1830986789, 'wWW{=W%5nZ', 'YAGITO', 'Yago','Rosa','Mañas', 3248752332 ,'yagorosamañas@gmail.com', 2 ,'2009-06-11','Colegio Edgar Salamanca Africano','Bogotá', 'Cl. 138a 145a-2 a 145a-36','Gaitana','2','M','Sanitas','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (1083698489, 'i5wQ=c{j;k', 'JOSE__IGNA', 'Jose Ignacio','Campo','Diaz', 3006353820 ,'joseignaciocampo', 2 ,'2010-02-03','Liceo Empresarial Del Campo','Bogotá', 'Cra. 146 142-99 a 142-1','San Jose','2','M','Cafe Salud','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (50468614, 'E40fRjUmml', 'JOSE--CUELAR', 'Jose-Maria','Cuellar','Delgado',3145089866,'jomacuellar@hotmail.com',1,'1984-10-01','Bogotá','Cra. 101c 13330 133- a','Costa Azul',3,3,'M','Sanitas','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (46658221, 'HdpL5QQbXR', '34353lizbeth', 'Elisabet','Maldonado','Morcillo',3183823450,'maldonadomorcillo15@hotmail.com',1,'1983-12-20','Bogotá','Cra. 118 132a-05','Villa Maria',3,4,'F','Compensar','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (49320010, 'TUOWlyY0PN', 'CMCHILLA', 'Camila','Figueroa','Costas',3046601129,'Camifigueroacostas@hotmail.com',1,'1985-05-18','Bogotá','Cl. 130d Bis 104-2,','Ricaurte',3,4,'F','Salud Total','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (49232699, '4RiL0dEhHJ', 'FREDICK', 'Federico','Arribas','Castro',3079877390,'federicoarribac@hotmail.com',1,'1990-06-05','Bogotá','CARRERA 98A No. 140B-60, Cra. 98a','Las Flores',3,7,'M','Famisanar','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (68244128, 'nhdmgrg4xb', 'N3LS0N1560', 'Nelson','Quiñones','Linares',3185969617,'nelsonlinares@gmail.com',1,'1989-08-19','Bogotá','13a- a 99a-, Cl. 145 99a-75','La Campiña',3,6,'M','Salud Militar','-','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (47282118, 'XWiC9btU6R', 'caropedr', 'Sara','Caro','Pedrosa',3065961500,'saracaropedrosa@hotmail.com',1,'1990-01-09','Medellín','Cl. 143 109','Lombardia',3,5,'F','Famisanar','+','B', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (68588974, 'jALTgUsn1L', 'R0b3t0', 'Roberto','Sánchez','Huerta',3177065681,'robertosanchesh@gmail.com',1,'1986-11-28','Bogotá','Carera142c cll129-05','Tibabuyes',2,7,'M','Salud Total','-','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (66846051, 'HzV5nYTZt&', '54610jdhdn', 'Pablo','Aragon','Santos',3030415933,'pabloaragonsantos@outlook.com',1,'1988-09-12','Bogotá','calle 139, Cra. 145b','Berlín',2,2,'M','Nueva EPS','+','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (54747613, 'MS^2ZXi9Uq', 'CINTIAO', 'Cintia','Pérez','Barroso',3108149614,'cintiaperez@gmail.com',1,'1982-01-29','Bogotá','Cl. 143b 145A-16','Bilbao',2,5,'F','Salud Total','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (57616969, 'X%UP&8uy3K', 'DYLANILLOR', 'Dylan','Laguna','Valles',3035048123,'dylanlagunavalles@hotmail.com',1,'1985-12-12','Barranquilla','carrera 147a142f 39','Cafam',4,6,'M','Saniatas','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (59044042, 'js$X5PLhwr', 'el78483vira', 'Elvira','Echevarria','Alvarez',3194956327,'elviraechevarriaee@hotmail.com',1,'1989-05-08','Bogotá','Tv. 138  139-35','San Carlos',2,5,'F','Sura','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (55064257, '6sGmyM4!xZ', '2872hHISIFS', 'Adan','Rodriguez','García',3108818136,'adanrodrigezgg@gmail.com',1,'1986-10-25','Bogotá','Cl. 132d 153-61','Lisboa',2,4,'M','Compensar','-','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (54708239, '%BtYsgoz5V', 'NAY-Y39R3', 'Nayra','Martinez','Chaves',3094000864,'nayramchavez@hotmail.com',1,'1989-02-10','Cali','Cra. 131 134-44','Gaitana',3,4,'F','Compensar','-','AB', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (51170750, 'zU%iW#o5NK', 'Bol2342roa', 'Rodrigo', 'Fegueroa','Bolaños',3252789389,'rodrigofigueroabolaños@outlook.com',1,'1991-12-30','Medellín','Cra. 113c 142A-98','Cedritos',3,3,'M','Previmedic','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (66545907, 'zU%iW#o5NK', 'pauldonño', 'Paulino','Maldonado','Soler',3235360439,'paulinomaldonadosoler@gmail.com',1,'1990-11-17','Tunja','Cra. 133 1521','Compartir',4,4,'F','Sanitas','+','A', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (57882636, '^1!VC7^vhF', 'DAVMOR', 'David','Moreno','Granados',3181202827,'davidmorenog@hotmail.com',1,'1986-04-23','Bogotá','Cra. 136a 145-30,','Fontanar',3,4,'M','Salud Total','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (46323551, 'CQWFruaQCj', 'LESMENENDEZ', 'Angeles','Menendez','Salcedo',3075551617,'angelesmenendezs@outlook.com',1,'1995-09-27','Pasto','Cra. 136a 14450','Plazuelas San Martin',3,1,'F','Famisanar','-','O', '1');

INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (46991250, 'rbX4#C$KbQ', 'SeRgi890','Sergio','Escudero','Fernandez',3069310013,'sergioescuderof@hotmail.com',1,'1991-08-18','Tulua','Cra. 151d 138d-25','Santa Rita',2,2,'M','Salud Militar','+','A', '1');


INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (56985630, 'Maria Teresa', 'Forero Mejia', 'Mamá', 'foreromaria569@hotmail.com', 3212154895,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (59540315, 'Alfonso', 'Perez Daza', 'Papá', 'AlfonsoPerez10@hotmail.com', 3216598566,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (60133485, 'Andrea', 'Muriel Rincon', 'Mamá', 'ANMURI25@hotmail.com', 3213659852,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (60160054, 'Santiago', 'Sierra Ruiz', 'Papá', 'SantSierraR20@hotmail.com', 3013483578,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (64855470, 'Maria Alejandra', 'Rincon Martinez', 'Mamá', 'maalerincon123@hotmail.com', 3234680183,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (84685006, 'Sandra', 'Alvarez Restrepo', 'Mamá', 'sandraalvarezzz@hotmail.com', 3208687560,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (69877850, 'Kevin', 'Fernandez Camargo', 'Papá', 'kevinfernandezcamargo77@hotmail.com', 3125138682,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (59889015, 'Milena', 'Lopez Sierra', 'Mamá', 'lopezmilen4@hotmail.com', 3113141699,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (64203159, 'Miguel', 'Alean Duarte', 'Papá', 'miguelaledu22@hotmail.com', 3272765545,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (65985064, 'Maria Fernanda', 'Ruiz Mejia', 'Mamá', 'maferuizm125@hotmail.com', 3116553248,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (47846942,'Sebastian','Peral Hernández','Papá','sebasperalh10@hotmail.com',3169124793,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (62499360,'Ana Maria','Cespedes Mira','Mamá','anamariacespedes@hotmail.com',3028801328,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (45057435,'Alexis','Camargo Rivera','Papá','alexiscamargorivera@gmail.com',3237556427,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (58075857,'Angela Maria','Ruiz Araujo','Mamá','angelamariaruiz@hotmail.com',3104246076,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (50777554,'Carlota','Perez Bonilla','Mamá','carlotaperezbonilla@hotmail.com',3130740613,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (63377714,'Milena','Montoya Vegas','Mamá','milenamontoyav@hotmail.com',3253705998,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (46867071,'Maria','Rodriguez Vivas','Mamá','mariarodriguezvivas@outlook.com',3241230089,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (54971722,'Santiago','Lara Serna','Papá','santiagolaraserna@hotmail.com',3118039391,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (45144333,'Saul','Pico Morillo','Papá','sauñpicomorillo@gmail.com',3019923753,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (56733580,'Agustin','Murcia Verdugo','Papá','agustinmurciaverdugo@outlook.com',3076748810,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (53601516,'Ramon','Valero Moreno','Papá','ramonvaleromoreno@gmail.com',3085624801,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (52302162,'Martin','Valenzuela Vera','Papá','martinvalenzuela17@hotmail.com',3100381238,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (56985600,'Herminio','Grande Novoa','Papá','herminiograndenovoa@hotmail.com',3254932726,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (57074984,'Óscar','Serrano Martinez','Papá','oscarserranom@outlook.com',3217199214,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (50893042,'Brenda ','Murcia Cabezas','Mamá','brendamurciacabezas@hotmail.com',3142053984,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (53681382,'Michelle','Mañas Bautista','Mamá','michellemañasbau@hotmail.com',3099443822,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (51709007,'Abraham','Vargas Galiano','Papá','abrahamvargas@gmail.com',3024464826,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (47840332,'Maribel','Bello Peralta','Mamá','maribelbelloperalta@outlook.com',3193270895,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (58503936,'Gerardo','Fernandez Tejada','Papá','fernandeztejadag@hotmail.com',3221817905,1);

INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (64071255,'Milena','Diaz Valera','Mamá','diazmiletavalera@gmail.com',3134799673,1);


INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (601, 26, 'Sede Administrativa');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (702, 30, 'Sede Bilingue');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (803, 27, 'Sede Soacha');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (904, 29, 'Sede Bachillerato');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (1004, 17, 'Sede Bachillerato');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (1105, 20, 'Sede Bachillerato');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (1106, 30, 'Sede Bachillerato');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (704, 26, 'Sede Villamaria');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (709, 18, 'Sede Villamaria');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (905, 19, 'Sede Norte');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (1110, 32, 'Sede Chia');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (807, 37, 'Sede Bachillerato');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (810, 26, 'Sede Chia');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (906, 37, 'Sede Norte');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (602, 28, 'Sede Administrativa');
INSERT INTO Curso(Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (509, 13, 'Sede Soacha');



INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1658495200','601',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1648523465','601',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1458265930','702',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1359485222','803',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1336485204','803',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1325849615','904',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1102348569','904',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1053268456','1005',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1036485036','1005',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1975232862','1106',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1938452158','1106',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1930137032','702',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1830986789','702',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1791410886','704',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1715345653','709',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1650816429','709',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1641545466','905',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1610146731','709',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1440679493','1110',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1423587060','1110',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1316652126','807',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1291147767','810',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1275862592','807',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1236594070','906',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1200136059','906',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1188344187','810',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1064853569','602',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('1016287236','810',1);
INSERT INTO Asigna(Num_Matricula, NOMBRE, Activo)
VALUES ('137707039', '509',1);


INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1658495200, 'Chocolate',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo)
VALUES (1648523465, 'Mani',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1458265930, 'Leche',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1359485222, 'Mani',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1336485204, 'Polen',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1325849615, 'NA',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1102348569, 'Acaros',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1053268456, 'Gatos',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1036485036, 'Acaros',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1975232862,'Gatos',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1938452158,'Polvo',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1930137032,'Productos Lacteos',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1830986789,'Polen',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1791410886,'Polvo',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1715345653,'Maní',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo)  
VALUES (1650816429,'Chocolate',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1641545466,'Estacional',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1610146731,'Acetaminofén',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1440679493,'Rinitis',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1423587060,'Polen',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1316652126,'Maní',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1291147767,'Chocolate',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1275862592,'Gatos',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1236594070,'Acetaminofén',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1200136059,'Gluten',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1188344187,'Polvo',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1064853569,'Productos lacteos',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo) 
VALUES (1016287236,'Polen',1);
INSERT INTO Alergias(Num_Id, Alergias, Activo)
VALUES (137707039,'Moho',1);


INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1658495200, 'Bogotá', '2021-01-21', 1658495200, 53268456, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (137707039, 'Bogotá', '2021-01-21', 137707039, 53268456, 1);

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1648523465, 'Bogotá', '2021-01-21', 1648523465, 56488523, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1458265930, 'Bogotá', '2021-01-21', 1458265930, 56488523, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1359485222, 'Bogotá', '2021-01-21', 1359485222, 65948566, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1336485204, 'Bogotá', '2021-01-21', 1336485204, 65965987, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1325849615, 'Bogotá', '2021-01-21', 1325849615, 75684236, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1102348569, 'Bogotá', '2021-01-22', 1102348569, 89456325, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1053268456, 'Bogotá', '2021-01-22', 1053268456, 98462137, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1036485036, 'Bogotá', '2021-01-22', 1036485036, 99452010, 1);  

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1975232862, 'Bogotá', '2021-01-22', 1975232862, 46323551, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1938452158, 'Bogotá', '2021-01-22', 1938452158, 46658221, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1930137032, 'Bogotá', '2021-01-22', 1930137032, 46991250, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1830986789, 'Bogotá', '2021-01-22', 1830986789, 47282118, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1791410886, 'Bogotá', '2021-01-22', 1791410886, 50468614, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1715345653, 'Bogotá', '2021-01-22', 1715345653, 51170750, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1650816429, 'Bogotá', '2021-01-22', 1650816429, 54708239, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1641545466, 'Bogotá', '2021-01-22', 1641545466, 54747613, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1610146731, 'Bogotá', '2021-01-22', 1610146731, 55064257, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1440679493, 'Bogotá', '2021-01-23', 1440679493, 57616969, 1);

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1423587060, 'Bogotá', '2021-01-23', 1423587060, 57882636, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1316652126, 'Bogotá', '2021-01-23', 1316652126, 59044042, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1291147767, 'Bogotá', '2021-01-23', 1291147767, 65948566, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1275862592, 'Bogotá', '2021-01-23', 1275862592, 65948566, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1236594070, 'Bogotá', '2021-01-23', 1236594070, 65965987, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1200136059, 'Bogotá', '2021-01-23', 1200136059, 66545907, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1188344187, 'Bogotá', '2021-01-23', 1188344187, 66846051, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1064853569, 'Bogotá', '2021-01-23', 1064853569, 68244128, 1); 

INSERT INTO Matricula(Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (1016287236, 'Bogotá', '2021-01-23', 1016287236, 75684236, 1);

#CONSULTAS GENERALES  --------------------------------------------------------------------------

SELECT COUNT(*) FROM Usuario;
SELECT COUNT(*) FROM Acudiente;
SELECT COUNT(*) FROM Curso;
SELECT COUNT(*) FROM Asigna;
SELECT COUNT(*) FROM Alergias;
SELECT COUNT(*) FROM Matricula;

SELECT * FROM Usuario;
SELECT * FROM Acudiente;
SELECT * FROM Curso;
SELECT * FROM Asigna;
SELECT * FROM Alergias;
SELECT * FROM Matricula;

UPDATE Alergias SET Alergias = 'Polvo' WHERE Num_Id = 1658495200;
UPDATE Acudiente SET Telefono = 3214567068 WHERE Cedula = 60133485;
UPDATE Usuario SET Anos_de_Exp = 2 WHERE Num_identificacion = 65948566;
UPDATE Alergias SET Alergias = 'Polen y Polvo' WHERE Num_Id = 1359485222;
UPDATE Acudiente SET Correo = 'mariafernandar29@gmail.com' WHERE Cedula = 65985064;
UPDATE Usuario SET Cargo = 'PGM' WHERE Num_identificacion = 1368459624 ;

SELECT Cantidad_Estudiantes, Ubicacion FROM Curso WHERE Nombre = 610;
SELECT Correo, Telefono, Nombres, Apellidos FROM Acudiente WHERE Cedula = 59889015;
SELECT Primer_ape, Segundo_Ape, Nombre, Cargo FROM Usuario WHERE Num_identificacion = 1658495200;
SELECT Alergias FROM Alergias WHERE Num_Id = 1336485204;
SELECT Telefono, Correo, Nombre, Primer_Ape, Segundo_Ape FROM Usuario WHERE Num_identificacion = 65965987;

#PROCEDIMIENTO ALMACENADO  --------------------------------------------------------------------------

CREATE PROCEDURE RegistrarUsuario
(
IN NUM_IDEN BIGINT UNSIGNED,
IN CONTRAS VARCHAR (255),
IN NOM_USU VARCHAR (255),
IN NOMB VARCHAR (255),
IN P_APE VARCHAR (255),
IN S_APE VARCHAR (255),
IN TEL BIGINT,
IN CORREO_USU VARCHAR (255),
IN CARGO ENUM ('Personal Gestion Matricula','Estudiante', 'Administrador'),
IN FECHA DATE,
IN COL_ANTI VARCHAR (255),
IN CIUDAD VARCHAR (255),
IN DIRECCION VARCHAR (255),
IN BARRIO VARCHAR (255),
IN ESTRAT TINYINT,
IN AN_EXP VARCHAR (255),
IN GENERO CHAR (1),
IN EPS VARCHAR (255),
IN RH CHAR (1),
IN TIPO_SANGRE CHAR (2)
)
INSERT INTO Usuario (Num_identificacion, Contrasena, Nom_Usuario, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre, Activo)
VALUES (NUM_IDEN, CONTRAS, NOM_USU, NOMB, P_APE, S_APE, TEL, CORREO_USU, CARGO, FECHA, COL_ANTI, CIUDAD, DIRECCION, BARRIO, ESTRAT, AN_EXP, GENERO, EPS, RH, TIPO_SANGRE, 1);

CREATE PROCEDURE RegistrarAcudiente
(
IN CC BIGINT UNSIGNED,
IN NOM_ACU VARCHAR (255),
IN APELLIDOS VARCHAR (255),
IN PARENTESCO VARCHAR (255),
IN CORREO VARCHAR (255),
IN TEL BIGINT
)
INSERT INTO Acudiente (Cedula, Nombres, Apellidos, Parentesco, Correo, Telefono, Activo)
VALUES (CC, NOM_ACU, APELLIDOS, PARENTESCO, CORREO, TEL, 1);

CREATE PROCEDURE Asignarcurso
(
IN CURSO VARCHAR (255),
IN CANT_ESTU TINYINT,
IN UBICACION VARCHAR (255)
)
INSERT INTO Curso (Nombre, Cantidad_Estudiantes, Ubicacion)
VALUES (CURSO, CANT_ESTU, UBICACION);

CREATE PROCEDURE IngresarCurso
(
IN NUM_MATRI BIGINT UNSIGNED,
IN NOMBRE VARCHAR (255)
)
INSERT INTO Asigna (Num_Matricula, NOMBRE, Activo)
VALUES (NUM_MATRI, NOMBRE, 1);

CREATE PROCEDURE RegistrarAlergias
(
IN ID_NUM BIGINT UNSIGNED,
IN ALERGIS VARCHAR(255)
)
INSERT INTO Alergias (Num_Id, Alergias, Activo)
VALUES (ID_NUM, ALERGIS, 1);

CREATE PROCEDURE RegistrarMatricula
(
IN NUMERO_MATRI BIGINT,
IN LUGAR_MATRI VARCHAR (255),
IN FECHA_MATRI DATE,
IN NUM_IDE_EST BIGINT UNSIGNED,
IN NUM_ID_PGM BIGINT UNSIGNED
)
INSERT INTO Matricula (Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM, Activo)
VALUES (NUMERO_MATRI, LUGAR_MATRI, FECHA_MATRI, NUM_IDE_EST, NUM_ID_PGM, 1);

CREATE PROCEDURE Accesos
(
NOM_USU VARCHAR (255),
CONTRAS VARCHAR (255)
)
SELECT Cargo FROM Usuario WHERE Nom_Usuario = NOM_USU AND Contrasena = CONTRAS AND Activo = 1;

#PROCEDIMIENTO CONSULTAS --------------------------------------------------------------------------

CREATE PROCEDURE ConsultarUsuario
(
IN NUMERO_CLAVE BIGINT UNSIGNED
)
SELECT Activo, Num_identificacion, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Cargo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre FROM Usuario WHERE Num_identificacion = NUMERO_CLAVE AND Activo=1;

CREATE PROCEDURE ConsultarAcudiente
(
IN NUMERO_CED BIGINT UNSIGNED
)
SELECT Activo, Cedula, nombres, apellidos, parentesco, Correo, Telefono FROM Acudiente WHERE Cedula=NUMERO_CED AND Activo=1;

CREATE PROCEDURE ConsultarAlergias
(
IN IDENTIFY BIGINT UNSIGNED
)
SELECT Activo, Num_Id, Alergias FROM Alergias WHERE Num_Id=IDENTIFY AND Activo=1;

CREATE PROCEDURE ListadoMatricula()
SELECT Activo, Numero_Matricula, Lugar_De_Matricula, Fecha_De_Matricula, Numero_Identificacion_EST, Numero_Identificacion_PGM FROM Matricula WHERE Activo = 1;

CREATE PROCEDURE ConsultarAsignados()
SELECT Activo, Num_Matricula, NOMBRE FROM Asigna WHERE Activo=1;

CREATE PROCEDURE ConsultarCurso()
SELECT Nombre, Ubicacion, Cantidad_Estudiantes FROM Curso;

CREATE PROCEDURE ConsultaPerfil
(
IN PERFIL ENUM ('Personal Gestion Matricula','Estudiante', 'Administrador')
)
SELECT Activo, Num_identificacion, Cargo, Nombre, Primer_Ape, Segundo_Ape, Telefono, Correo, Fecha_de_Nac, Colegio_Antiguo, Ciudad, Direccion, Barrio, Estrato, Anos_de_Exp, Genero, EPS, RH, Tipo_De_sangre FROM Usuario WHERE Cargo = PERFIL AND Activo=1;

#PROCEDIMIENTO ACTUALIZACIONES --------------------------------------------------------------------------

CREATE PROCEDURE Actualizacion
(
IN Docss BIGINT UNSIGNED,
IN Tele BIGINT,
IN Cor VARCHAR(255),
IN Trabajo ENUM ('Personal Gestion Matricula','Estudiante', 'Administrador'),
IN Lugar VARCHAR(255),
IN Casa VARCHAR(255),
IN Ubicacion VARCHAR(255),
IN Est TINYINT,
IN Numero TINYINT,
IN Xp TINYINT,
IN Salud VARCHAR(255)
)
UPDATE Usuario SET Telefono=Tele, Correo=Cor, Cargo=Trabajo, Ciudad=Lugar, Direccion=Casa, Barrio=Ubicacion, Estrato=Est, Anos_de_Exp=Xp, Eps=Salud WHERE Num_identificacion=Docss;

CREATE PROCEDURE ActualizacionAcudiente
(
IN Ced BIGINT UNSIGNED,
IN Coro VARCHAR(255),
IN Telef BIGINT
)
UPDATE Acudiente SET Correo=Coro, Telefono=Telef WHERE Cedula=Ced;

CREATE PROCEDURE ActualizacionAlergias
(
IN Codex BIGINT UNSIGNED,
IN Gripa VARCHAR(255)
)
UPDATE Alergias SET Alergias=Gripa WHERE Num_Id=Codex;

CREATE PROCEDURE ActualizacionMatricula
(
IN Matri BIGINT UNSIGNED,
IN Lugar VARCHAR(255),
IN Fecha DATE
)
UPDATE Matricula SET Lugar_De_Matricula=Lugar, Fecha_De_Matricula=Fecha WHERE Numero_Matricula=Matri;

CREATE PROCEDURE ActualizacionAsigna
(
IN NUM BIGINT UNSIGNED,
IN NOM VARCHAR(255)
)
UPDATE Asigna SET NOMBRE=NOM WHERE Num_Matricula=NUM;

CREATE PROCEDURE ActualizacionCurso
(
IN CURSO VARCHAR(255),
IN Poblado TINYINT,
IN Casa VARCHAR(255)
)
UPDATE Curso SET Cantidad_Estudiantes=Poblado, Ubicacion=Casa WHERE Nombre=CURSO;

#PROCEDIMIENTO ELIMINACIONES --------------------------------------------------------------------------

CREATE PROCEDURE Inactivar
(
IN Clave BIGINT UNSIGNED
)
UPDATE Usuario SET Activo = 0 WHERE Num_identificacion=Clave;

CREATE PROCEDURE InactivarAcudiente
(
IN Codix BIGINT UNSIGNED
)
UPDATE Acudiente SET Activo = 0 WHERE Cedula=Codix;

CREATE PROCEDURE InactivarAlergias
(
IN Coman BIGINT UNSIGNED
)
UPDATE Alergias SET Activo = 0 WHERE Num_Id=Coman;

CREATE PROCEDURE InactivarMatricula
(
IN Cecu BIGINT 
)
UPDATE Matricula SET Activo = 0 WHERE Numero_Matricula=Cecu;

CREATE PROCEDURE InactivarAsignacion
(
IN Asp BIGINT UNSIGNED
)
UPDATE Asigna SET Activo = 0 WHERE Num_Matricula=Asp;

#CONSULTAS MULTITABLAS --------------------------------------------------------------------------

SELECT  Matricula.Numero_Matricula, Matricula.Lugar_De_Matricula, Matricula.Fecha_De_Matricula, Matricula.Numero_Identificacion_PGM, Matricula.Numero_Identificacion_EST, Usuario.Cargo, Usuario.Nombre, Usuario.Primer_Ape, Usuario.Segundo_Ape, Usuario.Fecha_de_Nac, Usuario.Correo, Usuario.Telefono
FROM Matricula INNER JOIN Usuario
ON Usuario.Num_identificacion = Matricula.Numero_Matricula;

SELECT  Alergias.Num_Id, Alergias.Alergias, Usuario.EPS, Usuario.RH, Usuario.Tipo_De_Sangre, Usuario.Genero, Usuario.Nombre, Usuario.Primer_Ape, Usuario.Segundo_Ape, Usuario.Fecha_de_Nac, Usuario.Correo, Usuario.Telefono
FROM Usuario INNER JOIN Alergias
ON Usuario.Num_identificacion = Alergias.Num_Id;

SELECT  Asigna.NOMBRE, Usuario.Num_identificacion, Usuario.Cargo, Usuario.Nombre, Usuario.Primer_Ape, Usuario.Segundo_Ape, Usuario.Telefono, Usuario.Correo
FROM Asigna INNER JOIN Usuario
ON Asigna.Num_Matricula = Usuario.Num_identificacion;

SELECT Asigna.NOMBRE, Curso.Cantidad_Estudiantes, Asigna.Num_Matricula, Curso.Ubicacion
FROM Asigna INNER JOIN Curso
ON Asigna.NOMBRE = Curso.Nombre;

SELECT  Matricula.Numero_Matricula, Matricula.Lugar_De_Matricula, Matricula.Fecha_De_Matricula, Matricula.Numero_Identificacion_PGM, Usuario.Cargo, Usuario.Nombre, Usuario.Primer_Ape, Usuario.Segundo_Ape, Usuario.Fecha_de_Nac, Usuario.Correo, Usuario.Telefono
FROM Matricula INNER JOIN Usuario
ON Usuario.Num_identificacion = Matricula.Numero_Identificacion_PGM;

SELECT Matricula.Numero_Matricula, Usuario.Cargo
FROM Matricula INNER JOIN Usuario
ON Matricula.Numero_Matricula = Usuario.Num_identificacion;