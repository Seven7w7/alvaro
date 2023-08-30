create database db_universidad;
use db_universidad;
drop database db_universidad;

create table departamento(
	id_departamento int (10),
    nom varchar (50)
);

insert into departamento(id_departamento, nom) values (1, 'Gabriel');
insert into departamento(id_departamento, nom) values (2, 'Steven');
insert into departamento(id_departamento, nom) values (3, 'Juan');
insert into departamento(id_departamento, nom) values (4, 'David');
insert into departamento(id_departamento, nom) values (5, 'Jhoan');


create table profesor(
	id_profesor int (10),
    nif varchar (9),
    nombre varchar (25),
    apellido1 varchar (50),
	apellido2 varchar (50),
    ciudad varchar (25),
    direccion varchar (50),
    telefono varchar (9),
    fecha_nacimiento date,
    sexo enum ('H', 'M'),
    id_departamento int (10)
);


insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (1, '678901234', 'Sofia', 'Elena ', 'Rodríguez', 'Armenia', 'Calle 23 #48', '917483256', '2005-01-12', 'M', 1);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (2, '876543219', 'Diego', 'Alejandro ', 'Martinez', 'Guajira', 'Calle 33 #18', '439825106', '2001-05-14', 'H', 2);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (3, '210987654', 'Valentina', 'Isabella ', 'López', 'Calarca', 'Calle 10 #12', '378219645', '2000-01-06', 'H', 3);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (4, '987654123', 'Juan ', 'Carlos ', 'Ramírez', 'Caicedonia', 'Calle 9 #45', '986503217', '1999-02-12', 'H', 4);
insert into profesor (id_profesor, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento) values (5, '345678901', 'Camila ', 'Victoria ', 'García', 'Huila', 'Calle 21 #26', '713468952', '2004-2-12', 'H', 5);


create table asignatura(
	id_asignatura int (10),
    nombre varchar (100),
    creditos float,
    tipo enum ('Básico', 'Avanzado', 'Especializado'),
    curso tinyint (3),
    cuatrimestre tinyint (3),
    id_profesor int (10),
    id_grado int (10)
);


insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (1, 'Intrduccion A La Programacion', 5.0, 'Basico', 1, 1, 1, 1);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (2, 'Matematicas Avanzadas', 5.0, 'Especializado', 2, 2, 2, 2);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (3, 'Pseudocodigo', 5.0, 'Basico', 3, 3, 3, 3);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (4, 'Manejo En JavaScript', 4.5, 'Basico', 4, 4, 4, 4);
insert into asignatura (id_asignatura, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values (5, 'java', 4.5, 'Avanzado', 5, 5, 5, 5);


create table grado(
	id_grado int (10),
    nombre varchar (100)
);

insert into grado (id_grado, nombre) values (1, 'Natalia');
insert into grado (id_grado, nombre) values (2, 'Ricardo');
insert into grado (id_grado, nombre) values (3, 'Manuel');
insert into grado (id_grado, nombre) values (4, 'Sofía');
insert into grado (id_grado, nombre) values (5, 'Javier');


create table alumno_se_matricula_asignatura(
	id_alumno int (10),
    id_asignatura int (10),
    id_curso_escolar int (10)
);


insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (1, 1, 1);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (2, 2, 2);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (3, 3, 3);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (4, 4, 4);
insert into alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) values (5, 5, 5);



create table alumno(
	id_alumno int (10),
    nif varchar (9),
    nombre varchar (25),
    apellido1 varchar (50),
    apellido2 varchar (50),
    ciudad varchar (25),
    direccion varchar (25),
    telefono varchar (9),
    fecha_nacimiento date,
    sexo enum ('H', 'M') 
);

insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (1, '917483256', 'Juan', 'Manuel', 'Pérez', 'Armenia', 'Calle principal 4', '874512369', '2023-08-15', 'H');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (2, '439825106', 'Lucas ', 'Andrés ', 'Davis', 'Cali', 'Calle principal 32', '652389147', '2022-05-30', 'H');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (3, '204738915', 'Martina ', 'Lucía ', 'Rodríguez', 'Pereira', 'Calle principal 9', '981476325', '2024-11-22', 'M');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (4, '713468952', 'Emilia ', 'Carolina ', 'Williams', 'Finlandia', 'Calle principal 11', '536298741', '2021-03-10', 'M');
insert into alumno (id_alumno, nif, nombre, apellido1, apellido2, ciudad, direccion, telefono, fecha_nacimiento, sexo) values (5, '826574039', 'Leonardo ', 'Esteban ', 'Anderson', 'Caicedonia', 'Calle principal 5', '325698147', '2022-07-11', 'H');

create table curso_escolar(
	id_curso_escolar int (10),
    anyo_inicio year (4),
    anyo_fin year (4)
);

insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (1,2022, 2023);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (2,2024, 2025);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (3,2025, 2026);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (4,2026, 2027);
insert into curso_escolar (id_curso_escolar, anyo_inicio, anyo_fin) values (5,2027, 2028);

show databases;
show tables;

select * from departamento;
select * from curso_escolar;
select * from alumno;
select * from profesor;
select * from grado;
select * from asignatura;
select * from alumno_se_matricula_asignatura;