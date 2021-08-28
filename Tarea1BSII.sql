create database tarea1;

 --sudo -u postgres psql para ingresar a postgres desde consola.
 -- \l para listar las bases de datos existentes.
 -- \c tarea1 para trabajar o acceder a esta base de datos.
 

create table autores(
    idAutor int primary key not null,
    nombre varchar(10) not null,
    apellido varchar(20) not null,
    direccion varchar(75) not null,
    telefono varchar(10) not null,
    correo text
);

create table libros(
    idlibro serial primary key not null,
    titulo varchar(20) not null,
    idAutor int,
    constraint fk_autor foreign key(idAutor) references autores(idAutor),
    ISBN varchar(15) not null,
    paginas int not null,
    edicion varchar(20) not null
);

insert into autores (idAutor, nombre, apellido, direccion, telefono, correo) values
(1, 'JK', 'Rowling', '19 st 9 ave', '86995623', 'jkrowling@gmail.com'),
(2, 'Paulo', 'Coelho', '26 st 10 ave', '77895246', 'paulocoelho@gmail.com'),
(3, 'Gabriel', 'Garcia Marquez', '23 st 8 ave', '74591236', 'ggmarquezgmail.com'),
(4, 'Jane', 'Austen', '13 st 5 ave', '84561234', 'janeausten@gmail.com'),
(5, 'Antoine', 'de Saint', '15 st 8 ave', '63841416', 'adesaint@gmail.com'),
(6, 'Roberto', 'Bolaño', '8 st 4 ave', '55478623', 'Broberto@gmail.com'),
(7, 'Isabel', 'Allende', '7 st 3 ave', '82154793', 'isabelallende@gmail.com'),
(8, 'E.L', 'James', '19 st 7 ave', '78451269', 'ejames@gmail.com'),
(9, 'Stephenie', 'Meyer', '23 st 12 ave', '48695321', 'smeyer@gmail.com'),
(10, 'Veronica', 'Roth', '5 st 3 ave', '83214967', 'veronicar@gmail.com');


insert into libros (titulo, idAutor, ISBN, paginas, edicion) values 
('Divergente', 10, '0062024027', 487, 'Primera edicion'),
('Cien años de soledad', 3, '844730619\l4', 471, 'Primera edicion'),
('Crepusculo', 9, '9789562398510', 502, 'Primera edicion'),
('50 sombras de grey', 8, '9789502806037', 514, 'Primera edicion'),
('El alquimista', 2, '0062502174', 163, 'Primera edicion'),
('Harry Potter', 1, '0747532699', 223, 'Primera edicion'),
('Pride and prejudice', 4, '9788484284888', 424, 'Primera edicion'),
('El principito', 5, '1329305272', 97, 'Primera edicion'),
('Los detectives', 6, '8433910868', 610, 'Primera edicion'),
('50 sombras de grey', 7, '8698724256', 466, 'Primera edicion');

