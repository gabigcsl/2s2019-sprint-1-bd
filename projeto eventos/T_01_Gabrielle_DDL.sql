CREATE DATABASE T_Gufos;

USE T_Gufos

CREATE TABLE Categoria
(
IdCategoria    int primary key identity not null
,Nome          varchar (250) not null unique
);

create table Eventos 
(
IdEvento    int identity  primary key not null
,Titulo     varchar (250)
,Descricao  text
,DataEvento  datetime
,Ativo       bit not null default (1)
,Localizacao  varchar (250) null
,IdCategoria  int foreign key references Categoria (IdCategoria)
);

create table Usuarios 
(
IdUsuario    int identity primary key  not null
,Nome        varchar (250) not null
,Email       varchar (250) not null unique
,Senha       varchar (250) not null 
,Permissao   varchar (250)not null
);

create table Presencas
(
IdUsuario int foreign key references Usuarios (IdUsuario)
,IdEvento  int foreign key references Eventos (IdEvento)
);

