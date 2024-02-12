create table mensaje(
	id_mensaje int primary key,
	fecha_envio date,
	Longitud_Caracteres VARCHAR(45),
  	Tamano_Archivos VARCHAR(45),
  	id_usuarioEnvia int,
  	id_servidorEnviado int,
  	foreign key (id_usuarioEnvia) references usuarios (id_usuario),
  	foreign key (id_servidorEnviado) references servidor (id_servidor)
);