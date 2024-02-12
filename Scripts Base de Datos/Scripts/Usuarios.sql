create table usuarios(
	id_usuario int primary key,
	nombre_usuario varchar(15),
	fecha_nacimiento date,
	id_rolposee int not null,
	FOREIGN KEY (id_rolposee) REFERENCES rol (id_rol)
);