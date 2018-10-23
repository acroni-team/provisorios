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
insert into tblProdutoDaLoja values('Full-Size','Apenas um teclado full-size mecânico, simples e bonito, para usuário que desejam um teclado elegante que não te deixa na mão. Está versão vem switches Cherry Mx Blue',1.1, 3.4, 13.2, 44.5,
									300.00,'Acroni')

insert into tblProdutoDaLoja values('Tenkeyless','Com o mesmo design da sua versão maior "Full-Size", Tenkeyless é um teclado mecânico que não possui um number pad, sendo mais compacto e ideal pra usuários que desejam mais portabilidade ou tem uma mesa menor. Está versão vem switches Cherry Mx Red',0.9, 3.4, 13.2, 34.5,
									230.00,'Acroni')

insert into tblProdutoDaLoja values('Compact','Compact, um teclado estremamente portátil para aqueles que só desejam o essencial. Está versão vem switches Cherry Mx Brown',0.9, 3.4, 13.2, 24.5,
									170.00,'Acroni')

insert into tblProdutoDaLoja values('BlackWidow X Chroma','A mesma performance de seu antecessor, 
									o Blackwidow Chroma mas com switches expostos e uma construção em metal. É um teclado mecânico que vem com os 
									switches da própria Razer e possui o sistema RGB de iluminação, oferecendo 16.8 milhões de cores (É luz que não acaba mais) 
									e muitos, muitos modos diferentes de iluminação. Obviamente ele também vem com o famoso barulhinho da Razer.',1.905,4.06,28.84,45.97,
									1199.99,'Razer')
INSERT INTO tblProdutoDaLoja VALUES ('BlackWidow X Tournament Chroma', 'Igualzinho ao Blackwidow X Chroma normal, Mecânico, RGB, vários modos de iluminação, 
									switches Razer e construção em metal, porém está versão é para aqueles que não se importam com a existência do teclado numérico
									(tadinho dele, é bem útil até… as vezes) ou simplesmente querem um teclado mais compacto. 
									E pra você que já tava ficando louco pra saber, ele tem o barulhinho da Razer sim.',
									0.95,3,15.4,36.6,999.99, 'Razer')
INSERT INTO tblProdutoDaLoja VALUES ('BlackWidow Chroma v2','Esse novo Blackwidow Chroma v2, veio, como o próprio nome já diz, para substituir o Blackwidow Chroma,
									 tem um design muito semelhante ao seu antecessor, mas dessa vez ele vem com um apoio de pulso ergonômico, uma variedade ainda 
									 maior de modos de iluminação e com suporte ao novo Razer Synapse 3, e claro o switch e o barulhinho da Razer.',
									 1.5, 3.9, 17.1,47.5,1199.99, 'Razer')
INSERT INTO tblProdutoDaLoja VALUES ('BlackWidow Tournament Chroma V2','Essa belezinha tem o mesmo design do Blackwidow Chroma v2, porém essa é a vers"ao de torneio,
									ou seja, não possui o teclado numérico, tornando-se mais portátil. Switches, suporte ao Razer Synapse e led´s também o acompanham.',
									1.65, 3.9, 17.1, 47.5, 979.99, 'Razer')
INSERT INTO tblProdutoDaLoja VALUES ('G413 Silver','Construído em alumínio escovado, com LED´s vermelhos, é mais silencioso devido ao seu switch Romer-G, que diz 
									ser a mistura perfeita entre velocidade, precisão e desempenho. Focado para jogos permitindo que as teclas F1-F12 sejam programadas 
									pelo software da Logitech. Este modelo vem na cor silver, um alumínio escovado mais claro, lembrando a prata.',
									1.1, 3.4, 13.2, 44.5,459.99, 'Logitech')									
INSERT INTO tblProdutoDaLoja VALUES ('G413 Carbon', 'Construído em alumínio escovado, com LED´s vermelhos, é mais silencioso devido ao seu switch Romer-G, que diz 
									ser a mistura perfeita entre velocidade, precisão e desempenho. Focado para jogos permitindo que as teclas F1-F12 sejam programadas
									pelo software da Logitech. Este modelo vem na cor carbon, um alumínio escovado mais escuro, lembrando o carbono.',
									1.1, 3.4, 13.2, 44.5,459.99, 'Logitech')	 									
INSERT INTO tblProdutoDaLoja VALUES ('G810', 'Assim como o G413 também conta com o switch Roman-G, porém esse é RGB, ou seja, a cor de todas as teclas podem ser controladas.
									Ele vem com um design muito estiloso que faz um balanço ótimo entre o simples e o gamer. Trazendo as teclas multimídia redondinhas que são
									a sensação do momento.',
									1.18, 3.43, 15.3, 44.35, 679.90, 'Logitech')
INSERT INTO tblProdutoDaLoja VALUES ('K120', 'Teclado de membrana resistente a derramamentos, perfeito para escritório ou para casa. Utilizado até mesmo por estudantes de
									escolas técnicas K, podendo ser utilizado na madrugada sem incomodar ninguém por conta de suas teclas leves e silenciosas. É a escolha
									perfeita para um usuário simples que deseja um teclado barato para digitar a vontade.',
								    0.75,3,18,47,50.90,'Logitech')
INSERT INTO tblProdutoDaLoja VALUES ('Mars RGB','',1,3.5,19.4,47.1,419.99,'Hyperx')
INSERT INTO tblProdutoDaLoja VALUES ('Alloy Fps', '',1.54,3.55,12.9,44.1,549.90,'Hyperx')
INSERT INTO tblProdutoDaLoja VALUES ('Alloy Fps PRO', '',1.18,3.45,13,35.9,449.90,'Hyperx')
INSERT INTO tblProdutoDaLoja VALUES ('Alloy Elite', '', 2.1,3.6,22.6,44.4, 899.99,'Hyperx')
INSERT INTO tblProdutoDaLoja VALUES ('Kumara 552', '',1.03,3.81,12.1,35.3,259.99, 'Redragon')
INSERT INTO tblProdutoDaLoja VALUES ('Vara 551', '',1.29,4,16,46,229.99, 'Redragon')
INSERT INTO tblProdutoDaLoja VALUES ('Varuna', '', 1.15,4,15,42, 264.99, 'Redragon')
INSERT INTO tblProdutoDaLoja VALUES ('Yama','',1.9,5,29,52,389.99,'Redragon')


SELECT * FROM tblCliente
SELECT * FROM tblPedidoTecladoCustomizado
SELECT * FROM tblProdutoDaLoja
SELECT * FROM tblTecladoCustomizado
SELECT * FROM tblColecao
