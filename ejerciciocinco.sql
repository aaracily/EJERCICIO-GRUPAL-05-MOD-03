create database ejercicio5;
use ejercicio5;

-- 1 CREACIÓN DE USUARIO Y PERMISOS
CREATE USER 'admincinco'@'localhost' IDENTIFIED BY 'admincinco';
GRANT ALL PRIVILEGES ON ejercinco.* TO 'admincinco'@'localhost';
-- 2
create table usuario(
id_usuario int  primary key auto_increment,
nombre varchar(50),
apellido varchar(60),
contrasena varchar (50),
zona_horaria VARCHAR(8) NOT NULL DEFAULT '-03:00',
genero varchar(20),
telefono varchar (12)
);

create table ingresoU (
id_ingreso int  primary key auto_increment,
id_usuario int not null ,
fecha_hora_ingreso timestamp default current_timestamp, 
foreign key (id_usuario) references usuario (id_usuario)
);

-- 3
UPDATE ingresoU SET fecha_hora_ingreso = CONVERT_TZ(fecha_hora_ingreso, '-03:00', '-02:00');

-- 4 cree 8 registros para cada tabla 
insert into usuario ( nombre, apellido, contrasena, genero , telefono)
values ('Margarita','Amarilla','90plop90','femenino','56976543243'),
('Manuela','Aros','90plac0','femenino','56976522223'),
('Martin','Lillo','90cloc0','masculino','56976540000'),
('Maria','Antares','lock9i98','femenino','56976876543'),
('Orlando','Morales','poli0','masculino','56978675643'),
('Contanza','Jackson','plplplpl9','femenino','56976009988'),
('Caminlo','Jackson','plplplpl9','femenino','56976009988'),
('Ivan','Aridles','locky88','masculino','56976090988');


insert into ingresoU ( id_usuario, fecha_hora_ingreso)
values (1,now()),
(2,now()),
(3,now()),
(4,now()),
(5,now()),
(6,now()),
(7,now()),
(8,now());

select * from usuario;
select * from ingresoU;
-- 5 justifique el tipo de dato utilizado 

-- 6  cree

