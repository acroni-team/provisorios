use master
go

IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'ACRONI_SQL')
	DROP DATABASE ACRONI_SQL

CREATE DATABASE ACRONI_SQL
GO
USE ACRONI_SQL
GO
CREATE TABLE tblCliente (
	id int primary key identity(1,1),
	nome VARCHAR(30),
	usuario VARCHAR(30),
	senha VARCHAR(30),
	email VARCHAR(50),
	imagem VARBINARY(MAX),
	cpf VARCHAR(15),
	cep VARCHAR(15),
	arquivo_cliente varbinary(max)
)
GO
create table tblMarca(
	id int primary key identity(1,1),
	nome varchar(20)	
)
GO
create table tblProdutosDaLoja
(
	id int primary key identity(1,1),
	nome varchar(50),
	descricao varchar(80),
	id_marca int foreign key references tblMarca(id),
	peso decimal(6,2),
	altura decimal(6,2),
	largura decimal(6,2),
	comprimento decimal(6,2),
	preco decimal(6,2),
)
GO
create table tblColecao(	
	id int primary key identity(1,1),
	nick_colecao varchar(30),
	imagem_colecao varbinary(max),
	id_cliente int foreign key references tblCliente(id)
)
GO
create table tblTecladoCustomizado(
	id int primary key identity(1,1),
	id_cliente int foreign key references tblCliente(id),
	nickname varchar(20),
	preco decimal(6,2),
	id_colecao int foreign key references tblColecao(id)
)
GO
create table tblPedidosTecladoCustomizado
(
	id_tecladoCustomizado int foreign key references tblTecladoCustomizado(id),
	imagem VARBINARY(MAX),
)

SELECT * FROM tblCliente
SELECT * FROM tblPedidosTecladoCustomizado
SELECT * FROM tblProdutosDaLoja
SELECT * FROM tblTecladoCustomizado
SELECT * FROM tblColecao


-- Inserts:
-- Produtos
--insert into tblProdutos values('Rubens','ele � um RUBANCO bem LOCO','bem loco impolganti leite pao de batata',69.89)
--insert into tblProdutos values('FRUIT  DOLLY','Bebida de nectar',' DOLLY',56.30,1.98,3.56,5.97,69.89)
--insert into tblProdutos values('TETRAEDRO KRL','VOCE N SABE NEM EU','bem loco impolganti irineu',727)
--insert into tblProdutos values('OI MOUTA','Aquele que escreveu Mouta como nome na lista','bem leite eunsei kkj',420)
--insert into tblProdutos values('AGORA SIM','Famoso Rodrigao da Massa','fritas francesas JOBS Gabriel TORRES',50)
--insert into tblProdutos values('OI, eu sou um tecladinho bunitinho :D','digo, PERFECTUS','PERFEITINHOS PALHACTUOPLANCTUM JOTA � PALHATROLITICO ',999)

---- Cliente:
--INSERT tblCliente(nome_usuario, senha, email, cpf) VALUES ('felipi', 'facil', 'papel@log.com','518.998.930-59') 