use master
go
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'ACRONI_SQL')
	DROP DATABASE ACRONI_SQL

CREATE DATABASE ACRONI_SQL
GO
USE ACRONI_SQL
GO
CREATE TABLE tblCliente 
(
	id_cliente INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(30),
	usuario VARCHAR(30),
	senha VARCHAR(30),
	email VARCHAR(50),
	imagem_cliente VARBINARY(MAX),
	cpf VARCHAR(15),
	cep VARCHAR(15)
)
GO
CREATE TABLE tblProdutosDaLoja
(
	id_produto INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	descricao VARCHAR(80),
	peso DECIMAL(6,2),
	altura DECIMAL(6,2),
	largura DECIMAL(6,2),
	comprimento DECIMAL(6,2),
	preco DECIMAL(6,2),
)
GO
CREATE TABLE tblPedidosProdutosDaLoja
(
	id_cliente INT FOREIGN KEY REFERENCES tblCliente(id_cliente),
	id_produto INT FOREIGN KEY REFERENCES tblProdutosDaLoja(id_produto),
	preco_total DECIMAL(6,2),
	quantidade_pedida INT
)
GO
CREATE TABLE tblColecao
(	
	id_colecao INT PRIMARY KEY IDENTITY(1,1),
	id_cliente INT FOREIGN KEY REFERENCES tblCliente(id_cliente),
	nick_colecao VARCHAR(30),
	imagem_colecao VARBINARY(max)
)
GO
CREATE TABLE tblTecladoCustomizado
(
	id_teclado_customizado INT PRIMARY KEY IDENTITY(1,1),
	id_colecao INT FOREIGN KEY REFERENCES tblColecao(id_colecao),
	id_cliente INT FOREIGN KEY REFERENCES tblCliente(id_cliente),
	nickname VARCHAR(20),
	preco DECIMAL(6,2),
)
GO
CREATE TABLE tblPedidosTecladoCustomizado
(
	id_tecladoCustomizado INT FOREIGN KEY REFERENCES tblTecladoCustomizado(id_teclado_customizado),
	imagem VARBINARY(MAX),
)

SELECT * FROM tblCliente
SELECT * FROM tblPedidosTecladoCustomizado
SELECT * FROM tblProdutosDaLoja
SELECT * FROM tblTecladoCustomizado
SELECT * FROM tblColecao


-- Inserts:
-- Produtos
--insert into tblProdutos values('Rubens','ele é um RUBANCO bem LOCO','bem loco impolganti leite pao de batata',69.89)
--insert into tblProdutos values('FRUIT  DOLLY','Bebida de nectar',' DOLLY',56.30,1.98,3.56,5.97,69.89)
--insert into tblProdutos values('TETRAEDRO KRL','VOCE N SABE NEM EU','bem loco impolganti irineu',727)
--insert into tblProdutos values('OI MOUTA','Aquele que escreveu Mouta como nome na lista','bem leite eunsei kkj',420)
--insert into tblProdutos values('AGORA SIM','Famoso Rodrigao da Massa','fritas francesas JOBS Gabriel TORRES',50)
--insert into tblProdutos values('OI, eu sou um tecladinho bunitinho :D','digo, PERFECTUS','PERFEITINHOS PALHACTUOPLANCTUM JOTA É PALHATROLITICO ',999)
