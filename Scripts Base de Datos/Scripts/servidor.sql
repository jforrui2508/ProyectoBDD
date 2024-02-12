create table servidor (
	id_servidor int primary key,
	nombre_servidor varchar(25),
	fecha_creacion date,
	id_usuarioCreador int,
	foreign key(id_usuarioCreador) references usuarios (id_usuario)
);