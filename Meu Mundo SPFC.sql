create database meumundospfc;
use meumundospfc;

create table usuario(
	id int primary key not null auto_increment,
    nome varchar(45),
    login varchar(45),
    senha varchar(45)
   -- dtNascimento date,
    -- sexo varchar(15),
   -- check (sexo = 'feminino' or sexo = 'masculino' or sexo = 'outros'),
   -- saoPaulino char(3),
  --  check (saoPaulino = 'Sim' or saoPaulino = 'Não') 
);

create table login (
	idLogin int primary key not null auto_increment,
    email varchar(45),
    senha varchar(45)
)auto_increment = 100;

drop database meumundospfc;
select * from usuario;