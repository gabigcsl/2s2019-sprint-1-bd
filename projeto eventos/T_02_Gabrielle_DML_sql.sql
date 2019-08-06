--T_02_SeuNome_DML.sql

use T_Gufos

insert into Usuarios (Nome, Email, Senha, Permissao)
values ('Clayton', 'c@gmail.com', '123456','ADMINISTRADOR')


insert into Usuarios (Nome, Email, Senha, Permissao)
values ('Gabrielle','Gabrielle@gmail.com','g123456','ALUNO')

select * from Usuarios;

insert into Categoria (Nome)
values ('Jogos'), ('Meetup'), ('Futebol');
select * from Categoria order by IdCategoria asc;

insert into Eventos (Titulo,Descrição, DataEvento,Ativo, Localizacao, IdCategoria)
values ('Campeonato de Ping`-Pong'
       ,'Campeonato entre as turmas de tec. de redes e dev'
	   ,GETDATE () ,1, 'Alameda Barão de Limeira, 539', 1);

select * from Eventos ;

insert into Eventos (Titulo,Descrição, DataEvento,Ativo, Localizacao, IdCategoria)
values ('Meetup'
       ,'BD Ralacionais'
	   ,'2019-08-06T18:00:00' ,1, 'Alameda Barão de Limeira, 539',2);

insert into Eventos (Titulo,Descrição, DataEvento,Ativo, Localizacao, IdCategoria)
values ('Futebol'
       ,'Do Nucleo Desenvolvimento Senai'
	   ,'2019-08-06T18:00:00' , 'Alameda Barão de Limeira, 539',2);

insert into Presencas (IdEvento, IdUsuario) values (1,2),(1,1),(2,2)
select * from Categoria; 

update Eventos set  IdCategoria =3 where IdEvento = 3

select *from Eventos 