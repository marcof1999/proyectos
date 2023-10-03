create database formulario;
use formulario;

-- tabla de personas --

create table personas (
id int(5) not null auto_increment,
id_destino_turismo int (5) not null,
id_comida varchar(50) not null,
nombre varchar (100) not null,
apellido varchar (100) not null,
genero enum ('Masculino', 'Femenino', 'otro'),
mascotas_si_no enum ('Si', 'No') not null,
-- se solicita en el formulario el nombre de la mascota de mayor edad en caso de tener más de una.
nombre_mascota varchar (100),    
color_preferido varchar (100),
primary key(id)
);

-- tabla de destinos --

create table destinos_turisticos (
id int(5) not null,
destino varchar (100) not null,
primary key (id)
);
insert into destinos_turisticos values (0001, 'Rio de janeiro'),(0002, 'Miami'),(0003,'Paris'),(0004,'Roma'),(0005,'Amsterdam'),(0006,'Londres');

-- tabla de destinos --

create table comidas (
id varchar (50) not null,
comidas varchar(100) not null,
primary key (id)
);
insert into comidas values ('MILA001','Milanesa'),('MILA002','Milanesa con ensalada'),('MILA003','Milanesa con puré'),('MILA004','Sanguche de milanesa'),('MILA005','Milanesa de soja'),('MILA006','Milanesa de berenjena'),('X001','otras comidas');


-- foreign key de comida --
  alter table personas add constraint fk_comida
  foreign key(id_comida) references comidas(id);
  
  -- foreign key de destinos turisticos --
  alter table personas add constraint fk_pais 
  FOREIGN KEY(id_destino_turismo) REFERENCES destinos_turisticos(id);