/*comentário no banco de dados*/
create database if not exists exemplo;
# colocar o banco de dados em uso
use exemplo;
# mostrar os bancos na máquina
show databases;
#apagar o banco de dados
drop database exemplo;
show databases;
# criar uma tabela
create table if not exists fornecedor(
# o not null deixa que seja obrigatória a entrada
idFornecedor int not null,
nome varchar (45) not null unique,
# unique é o comando que permite uma única entrada
endereco varchar (45), 
telefone int, 
cidade varchar (20) default "Atibaia", 
# default usa-se quando o usuário não colocar nada nesse atributo e ele será preenchido automaticamente com "Atibaia" nesse caso
email varchar (25), 
primary key (idFornecedor)
) engine InnoDB;
#mostrar as tabelas do banco de dados
show tables;
# exibir a descrição da tabela
desc fornecedor;
 # apagando uma tabela
 drop table fornecedor;
 
 # criar a tabela produto
 create table if not exists produto(
 idProduto int not null,
 descricao varchar(45),
 preco decimal (7,2),
 #o primeiro é o total de casas, o segundo é o número de casas decimais
 unidade varchar(10),
 idFornecedor int not null, 
 primary key (idProduto), 
 foreign key (idFornecedor) references fornecedor (idFornecedor)
 #foreign key é usado para chave estrangeira
 ) engine InnoDB;
 desc produto;
 
 #comando para adicionar uma coluna na tabela
 alter table fornecedor
 add column ramoAtu varchar(30);
 desc fornecedor;
 
 #remover uma coluna na tabela
 alter table fornecedor
 drop column ramoAtu;
 
 # modificar coluna
 alter table fornecedor
 modify column cidade varchar(20);
 
 