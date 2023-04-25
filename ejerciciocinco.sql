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
-- 6  Creen una nueva tabla llamada Contactos (id_contacto, id_usuario, numero de telefono, correo electronico).
create table contacto(
id_contacto int  primary key auto_increment,
id_usuario int not null,
numero_telefono VARCHAR(50) NOT NULL,
correo_electronico VARCHAR(50)
);
-- 7 Modifique la columna teléfono de contacto, para crear un vínculo entre la tabla Usuarios y la tabla Contactos.
alter table contacto
    modify column numero_telefono VARCHAR(50) NOT NULL,
    add foreign key (id_usuario) references usuario(id_usuario);

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
select * from contacto;

/*
-- 5 justifique el tipo de dato utilizado 
fecha_hora_ingreso timestamp default current_timestamp, 


R: Para los ID se utilizó el tipo de dato INT como clave primaria y asignado el AUTO-INCREMENT, se utilizó INT
ya que necesitamos identificar a cada usuario en la tabla con un número que al asignarle AUTO-INCREMENT significa que
se generará automáticamente incrementando su número de uno en uno. Para los nombres, apellidos, contraseña,
genero y teléfono se utilizó el tipo de dato VARCHAR por su capacidad y versatilidad para ingresar carácteres que 
contemplan números, letras y carácteres especiales definiendo la cantidad máxima de datos a ingresar. Y para 
finalizar se utilizó el tipo de dato timestamp para obtener la fecha y la hora exacta.
Todos los tipos de datos ingresados son óptimos para el uso de la base de datos.
*/



