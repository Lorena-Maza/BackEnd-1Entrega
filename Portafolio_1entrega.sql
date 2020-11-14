create database Portafolio;
use Portafolio;
create table t_persona(
	per_id int not null auto_increment,
    per_dni char(8),
    per_nombres varchar (50),
    per_apellidos varchar (50),
    per_fecnac date,
    per_sexo char(3),
    per_correo varchar(30),
    per_celular varchar(15),    
    per_observacion varchar(100),
    per_estado boolean,    
    per_fecreg datetime,
    primary key (per_id)       
);
create table t_conocimiento(
	conoci_id int not null auto_increment,
    conoci_descripcion varchar(200),
    conoci_fecini date,
    conoci_fecfin date,    
    conoci_cestudios varchar(100),
    conoci_horas int,
    conoci_observacion varchar(100),
    conoci_estado boolean,    
    conoci_fecreg datetime, 
    per_id int,
    primary key (conoci_id),
    foreign key (per_id) references t_persona(per_id)
);
create table t_academico(
	acad_id int not null auto_increment,
    acad_nivel varchar(100),
    acad_cestudios varchar(200),
    acad_carrera varchar(200),        
    acad_observacion varchar(100),
    acad_estado boolean,    
    acad_fecreg datetime,   
    per_id int,
    primary key (acad_id),
    foreign key (per_id) references t_persona(per_id)
);
create table t_hobbie(
	hob_id int not null auto_increment,
    hob_descripcion varchar(100),
    hob_observacion varchar(200),
    hob_estado boolean,    
    hob_fecreg datetime,  
    per_id int,
    primary key (hob_id),
    foreign key (per_id) references t_persona(per_id)
);
create table t_habilidad(
	hab_id int not null auto_increment,
    hab_descripcion varchar(100),
    hab_observacion varchar(200),
    hab_estado boolean,    
    hab_fecreg datetime,   
    per_id int,
    primary key (hab_id),
    foreign key (per_id) references t_persona(per_id)
);
create table t_laboral(
	lab_id int not null auto_increment,
    lab_empresa varchar(100),
    lab_cargo varchar(100),
    lab_fecini date,
    lab_fecfin date,
    lab_contacnombre varchar(100),
    lab_contaccelular varchar(15),
    lab_observacion varchar(100),
    lab_estado boolean,    
    lab_fecreg datetime,   
    per_id int,
    primary key (lab_id),
    foreign key (per_id) references t_persona(per_id)
);
 alter table t_persona drop per_imagen;t_libro