create database if not exists EMPRESA_XPTO;
use EMPRESA_XPTO;
show databases;
drop database EMPRESA_XPTO;
show databases;
create database if not exists EMPRESA;
use EMPRESA;
create table if not exists DEPARTAMENTO(
coddpto int not null, 
descricao varchar (45), 
primary key (coddpto)
) engine InnoDB;
show tables;
desc DEPARTAMENTO;

use EMPRESA;
create table if not exists FUNCIONARIO(
codigo int not null, 
nome varchar (45), 
dataNasc date, 
sexo varchar (15), 
endereco varchar (100), 
coddpto int not null,
primary key (codigo),
foreign key (coddpto) references DEPARTAMENTO (coddpto)
)engine InnoDB;
desc FUNCIONARIO;

alter table DEPARTAMENTO
add column local varchar (30);

