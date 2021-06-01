create database meumundospfc;
use meumundospfc;

create table usuario(
	id int primary key not null auto_increment,
    nome varchar(45),
    login varchar(45),
    senha varchar(45),
    dtNascimento date, 
    sexo varchar(20),
    socio varchar(3),
    fkTimes int,
    foreign key (fkTimes) references times(idTime)
);
create table times(
	idTime int primary key auto_increment,
	nomeTime varchar(45),
	estado varchar(45),
	mascote varchar(45)
);
insert into times values (null,'São Paulo F.C','São Paulo','Santo Paulo');

create table campeonato(
	idCampeonato int primary key auto_increment,
	nomeCampeonato varchar(45),
	categoria varchar(45),
	valorPremiacao double,
	fkTimes int,
    foreign key (fkTimes) references times(idTime)
);
insert into campeonato values (null,'Libertadores','Internacional',5500000),
(null,'Brasileirão','Nacional',14600000),
(null,'Copa do Brasil','Nacional',1700000),
 (null,'Paulistão','Regional',3500000);

drop database meumundospfc;
select * from usuario;
select * from campeonato;
select * from times;

-- --------------------------------------------------------------------------