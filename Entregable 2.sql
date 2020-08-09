create database proyecto
use proyecto

--tabla carrera

create table carrera (
	clave_c int,
	nombre_c varchar(30),
	durac_c float, 
	constraint pk_cc primary key (clave_c)
)

--drop table carrera


-- tabla materia

create table materia(
	clave_m int,
	nombre_m varchar (50),
	cred_m float,
	constraint pk_cm primary key (clave_m)
)



-- tabla profesor
create table profesor(
clave_p int,
nombre_p varchar(150),
dir_p varchar(200),
tel_p bigint,
hor_p datetime,
constraint pk_cp primary key (clave_p)
)


/* tabla alumno
(con clave foranea)*/

create table alumno (
	mat_alu int,
	nom_alu varchar (150),
	edad_alu int,
	sem_alu int,
	gen_alu varchar (10),
	clave_c1 int,
	constraint pk_calu primary key (mat_alu),
	constraint fk_fc1 foreign key (clave_c1) references carrera(clave_c)

)

-- materia profesor

create table mat_pro(
clave_m2 int,
clave_p2 int,
constraint fk_fm2 foreign key (clave_m2) references materia (clave_m),
constraint fk_fp2 foreign key (clave_p2) references profesor (clave_p)

)



-- tablas intermedias: alumno profesor

create table alu_prof(
mat_alu1 int,
clave_p1 int,
constraint fk_falu1 foreign key (mat_alu1) references alumno (mat_alu),
constraint fk_fp1 foreign key (clave_p1) references profesor (clave_p),
)

insert into alu_prof values (1,3)
insert into alu_prof values (2,1)
insert into alu_prof values (1,2)

select*from alu_prof


-- tablas intermedias materia-alumno

create table mat_alu (
clave_m1 int,
mat_alu2 int,
constraint fk_fm1 foreign key (clave_m1) references materia (clave_m),
constraint fk_falu2 foreign key (mat_alu2) references alumno (mat_alu),
)

insert into mat_alu values (2,1)
insert into mat_alu values (1,2)
insert into mat_alu values (3,1)

select*from mat_alu
