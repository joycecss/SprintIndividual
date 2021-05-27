create database meumundospfc;
use meumundospfc;

create table usuario(
	id int primary key not null auto_increment,
    nome varchar(45),
    login varchar(45),
    senha varchar(45)
);

drop database meumundospfc;
select * from usuario;