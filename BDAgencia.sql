CREATE DATABASE agencia;

use agencia;

create table cliente (
id_cliente int auto_increment primary key,
CPF varchar(11),
nome_cliente varchar(100)
);

create table destino (
cidade_destino varchar(40) not null primary key,
qtde_passagens int,
qtde_quartos int,
data_partida date,
data_retorno date
);

create table origem (
cidade_origem varchar(40) not null primary key,
id_cliente int,
codigo_aeroporto varchar(3),

constraint fk_cliente_id_cliente foreign key (id_cliente) references cliente (id_cliente)
);
