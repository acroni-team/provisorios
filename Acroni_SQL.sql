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
CREATE TABLE tblProdutoDaLoja
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
CREATE TABLE tblPedidoProdutoDaLoja
(
	id_cliente INT FOREIGN KEY REFERENCES tblCliente(id_cliente),
	id_produto INT FOREIGN KEY REFERENCES tblProdutoDaLoja(id_produto),
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
CREATE TABLE tblPedidoTecladoCustomizado
(
	id_teclado_customizado INT FOREIGN KEY REFERENCES tblTecladoCustomizado(id_teclado_customizado),
	imagem VARBINARY(MAX),
)


ALTER TABLE tblProdutoDaLoja ADD marca VARCHAR(30)
ALTER TABLE tblProdutoDaLoja ALTER COLUMN descricao VARCHAR(1000)



CREATE INDEX Xcliente ON tblCliente(id_cliente);
GO
CREATE INDEX Xproduto ON tblProdutoDaLoja(id_produto);
GO
CREATE INDEX Xpedidoloja ON tblPedidoProdutoDaLoja(id_cliente);
GO
CREATE INDEX Xcolecao ON tblColecao(id_colecao);
GO
CREATE INDEX Xtecladocustomizado ON tblTecladoCustomizado(id_teclado_customizado);
GO
CREATE INDEX Xpedidocustomizado ON tblPedidoTecladoCustomizado(id_teclado_customizado);



-- Inserts:
-- Produtos
insert into tblProdutoDaLoja values('BlackWidow X Chroma','A mesma performance de seu antecessor, 
									o Blackwidow Chroma mas com switches expostos e uma construção em metal. É um teclado mecânico que vem com os 
									switches da própria Razer e possui o sistema RGB de iluminação, oferecendo 16.8 milhões de cores (É luz que não acaba mais) 
									e muitos, muitos modos diferentes de iluminação. Obviamente ele também vem com o famoso barulhinho da Razer.',1905,4.06,28.84,45.97,
									1199.99,'Razer')

--insert into tblProdutoDaLoja values('FRUIT  DOLLY','Bebida de nectar',' DOLLY',56.30,1.98,3.56,5.97,69.89)
--insert into tblProdutoDaLoja values('TETRAEDRO KRL','VOCE N SABE NEM EU','bem loco impolganti irineu',727)
--insert into tblProdutoDaLoja values('OI MOUTA','Aquele que escreveu Mouta como nome na lista','bem leite eunsei kkj',420)
--insert into tblProdutoDaLoja values('AGORA SIM','Famoso Rodrigao da Massa','fritas francesas JOBS Gabriel TORRES',50)
--insert into tblProdutoDaLoja values('OI, eu sou um tecladinho bunitinho :D','digo, PERFECTUS','PERFEITINHOS PALHACTUOPLANCTUM JOTA É PALHATROLITICO ',999)

SELECT * FROM tblCliente
SELECT * FROM tblPedidoTecladoCustomizado
SELECT * FROM tblProdutoDaLoja
SELECT * FROM tblTecladoCustomizado
SELECT * FROM tblColecao