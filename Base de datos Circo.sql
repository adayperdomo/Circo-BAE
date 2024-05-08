drop database if exists circo;
create database circo;
use circo;
create table atraccion (
	nombre varchar(45) not null,
	fecha_inicio DATE not null,
    descripcion varchar(200) not null,
    primary key (nombre)
)engine = innoDB;

create table artista (
	DNI varchar (45) not null,
    nombre varchar(45) not null,
    apellidos varchar (45) not null,
    profesion varchar(45) not null,
    primary key (DNI)
)engine = innoDB;

create table atracciones_artista (
	fecha_inicio DATE not null,
    fecha_fin DATE not null,
    primary key (fecha_inicio),
    nombre_atraccion varchar(45) not null,
    DNI_artista varchar (45) not null,
    foreign key (nombre_atraccion) references atraccion(nombre),
	foreign key (DNI_artista) references artista (DNI)
)engine = innoDB;

create table pista(
	nombre varchar(45) not null,
    aforo int not null,
    primary key (nombre)
)engine = innoDB;

create table animal (
	tipo varchar (45) not null,
    nombre varchar(45) not null,
    peso varchar (45) not null,
    estatura varchar(45) not null,
    nombre_pista varchar(45) not null,
    nombre_atraccion varchar(45) not null,
    foreign key (nombre_pista) references pista(nombre),
    foreign key (nombre_atraccion) references atraccion(nombre),
    primary key (nombre)
)engine = innoDB;

create table animal_artista(
	nombre_animal varchar (50) not null,
    DNI_artista varchar (45) not null,
    foreign key (nombre_animal) references animal(nombre),
    foreign key (DNI_artista) references artista(DNI)
)engine = innoDB;

insert into atraccion values('caminar en cuerda floja','2024-05-21','El artista se sube a una plataforma alta y camina en una cuerda sujetando una vara larga hasta llegar hasta el final');
insert into atraccion values('salto a piscina','2024-05-21','El artista se sube a una plataforma alta y salta a una piscina comicamente pequeña');
insert into atraccion values('lanzamiento de cuchillos','2024-05-21','El artista se venda los ojos y se disponé a lanzar varios cuchillos hacia una persona atada de manos y pies mientras va girando');
insert into atraccion values('hombre bala','2024-05-22','El artista se sube a un cañon y es disparado hacia una diana que es una colchoneta');
insert into atraccion values('el forzudo','2024-05-22','El artista coge pesas comicamente pesadas y hace malabares');
insert into atraccion values('El mini-coche','2024-05-22','Un coche comicamente pequeño de donde salen 16 artistas');
insert into atraccion values('domador de leones','2024-05-23','Un artista doma un león con una silla y un látigo');
insert into atraccion values('domador de elefantes','2024-05-23','Un artista doma un elefante');
insert into atraccion values('domador de focas','2024-05-23','Un artista juega con una foca la cual hace trucos');
insert into atraccion values('domador de monos','2024-05-23','Un artista juega con unos monos que interactuan con el público');
insert into atraccion values('El aro de fuego','2024-05-24','Un artista monta una moto y pasa por un aro en llamas');
insert into atraccion values('Malabarista de motosierras','2024-05-24','Un artista hace malabares con motosierras');
insert into atraccion values('trapecistas','2024-05-24','unos artistas saltan entre cuerdas mientras piruetas');

INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('12345678A', 'Pablo', 'Picasso', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('23456789B', 'Vincent', 'van Gogh', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('34567890C', 'Leonardo', 'da Vinci', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('45678901D', 'Frida', 'Kahlo', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('56789012E', 'Salvador', 'Dalí', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('67890123F', 'Claude', 'Monet', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('78901234G', 'Georgia', 'O\'Keeffe', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('89012345H', 'Diego', 'Rivera', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('90123456I', 'Edvard', 'Munch', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('01234567J', 'Andy', 'Warhol', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('12345678K', 'Michelangelo', 'Buonarroti', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('23456789L', 'Rembrandt', 'van Rijn', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('34567890M', 'Pierre-Auguste', 'Renoir', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('45678901N', 'Jackson', 'Pollock', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('56789012O', 'Gustav', 'Klimt', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('67890123P', 'Paul', 'Cézanne', 'Payaso');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('78901234Q', 'Henri', 'Matisse', 'Funambulista');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('89012345R', 'Pablo', 'Neruda', 'Funambulista');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('90123456S', 'Ludwig', 'van Beethoven', 'Saltador');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('01234567T', 'Miguel', 'Ángel Asturias', 'Lanzador de cuchillos');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('12345678U', 'Joan', 'Miró', 'Ayudante del lanzador de cuchillos');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('23456789V', 'Federico', 'García Lorca', 'Hombre bala');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('34567890W', 'Salvador', 'Allende', 'Forzudo');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('45678901X', 'Gabriel', 'García Márquez', 'Forzudo');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('56789012Y', 'Diego', 'Velázquez', 'Domador de leones');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('67890123Z', 'Raphael', 'Sanzio', 'Domador de elefantes');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('78901234A', 'Johann', 'Sebastian Bach', 'Domador de focas');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('89012345A', 'Wolfgang', 'Amadeus Mozart', 'Domador de monos');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('90123456A', 'Ludwig', 'van der Rohe', 'Pasador por el aro de fuego');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('01234567A', 'Frank', 'Lloyd Wright', 'Malabarista de motosierras');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('12345678E', 'Albert', 'Einstein', 'trapecistas');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('23456789F', 'Marie', 'Curie', 'trapecistas');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('34567890G', 'Charles', 'Darwin', 'trapecistas');
INSERT INTO artista (DNI, nombre, apellidos, profesion) VALUES ('45678901H', 'Isaac', 'Newton', 'trapecistas');

INSERT INTO animal (tipo, nombre, peso, estatura, nombre_pista, nombre_atraccion) VALUES ('Mono', 'Chita', '20 kg', '50 cm', 'Pista de la Selva', 'domador de monos');
INSERT INTO animal (tipo, nombre, peso, estatura, nombre_pista, nombre_atraccion) VALUES ('Mono', 'Rafiki', '18 kg', '45 cm', 'Pista de la Selva', 'domador de monos');
INSERT INTO animal (tipo, nombre, peso, estatura, nombre_pista, nombre_atraccion) VALUES ('León', 'Simba', '180 kg', '120 cm', 'Pista de la Sabana', 'domador de leones');
INSERT INTO animal (tipo, nombre, peso, estatura, nombre_pista, nombre_atraccion) VALUES ('León', 'Nala', '160 kg', '115 cm', 'Pista de la Sabana', 'domador de leones');
INSERT INTO animal (tipo, nombre, peso, estatura, nombre_pista, nombre_atraccion) VALUES ('Foca', 'Nemo', '100 kg', '90 cm', 'Pista del Ártico', 'domador de focas');
INSERT INTO animal (tipo, nombre, peso, estatura, nombre_pista, nombre_atraccion) VALUES ('Foca', 'Luna', '110 kg', '95 cm', 'Pista del Ártico', 'domador de focas');
INSERT INTO animal (tipo, nombre, peso, estatura, nombre_pista, nombre_atraccion) VALUES ('Elefante', 'Dumbo', '5000 kg', '300 cm', 'Pista de la Selva', 'domador de elefantes');
INSERT INTO animal (tipo, nombre, peso, estatura, nombre_pista, nombre_atraccion) VALUES ('Elefante', 'Babar', '4800 kg', '290 cm', 'Pista de la Selva', 'domador de elefantes');













