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
	imagem_cliente VARBINARY(MAX) default 0x89504E470D0A1A0A0000000D49484452000001000000010008030000006BAC5854000000017352474200AECE1CE90000000467414D410000B18F0BFC610500000300504C54450000002424242525252626262727272828282929292A2A2A2B2B2B2C2C2C2D2D2D2E2E2E2F2F2F3030303131313232323333333434343C3C3C3D3D3D3E3E3E4040404141414545454646464848486D6D6D7171717272728181818282828989898A8A8AB0B0B0B2B2B200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065BE372E0000010074524E53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0053F70725000000097048597300002E2300002E230178A53F760000000774494D4507E2080E14050D5F1EAF8F0000001974455874536F667477617265007061696E742E6E657420342E302E3231F120699500000B5449444154785EED5D0B7BDA3A12E51A13480838DE7BDBEE661FEDEDFFFF8FEC8C3469C8037CE61548E5F37D8D9A1683E7688E66248DC5E250F1EFAF9B6E49E8F94738560F7ADCD075E596E2D12F77FFFA8F185E09F8C686E7D8DEF1DBDE89510A0C77F5FA1C30B3DF8AE94CC0F7F27BDF75298C33018358A5C1FED7D5C1E8C5CCAEFF5109F85E3FA44B72018245010FC34AAE0E46B1528CFD5E08A0BEAF3E91468141014503693D422083FFE8974CC05F5DD7677E12BDF75E6CD2619F4300299D7FD21FD2C25F87C54FFEF5A563C4A25FDE88453A8C0FAC81F01B126FAFE8977F2F1E2B174FCC6480156019067335C0E8978F8B2FD5FCC48FEAC87883FDC3C390D625CFF8B2B83D768914AC6C04D045AB7406BACD821215FE98C48F32C58082DBC4BB2AE35DD7778BA7B4200FB618C0D8C93BE4A02FF17F51FF9E4882290BAAC8CA850AC4E445E6F057703B8A3906D0009586EA004B92403276628C05BBC4BB23F3F9DD49024445FDA714F4628B0DE9DD236340226EC5141B9E34903746A513E05140761C602413D0FB14F0011AC8F6808D1862C4B891F749431E01B5EF3C0AE0F899AE81540FA040534D316348D740B2049C0A20646B2099807BB66134E582341D1E49055B79A72CE412E05500614CD6402A01BD5F01E91AC823807BAE28C089E438902B0152B117E3404C26CED65309588B113EAC53276B9904745BDB5AE00B0C0FF7F27639C824A0F79BCFD8A7C6814C026C1B226F71F329A7C374CBF7259BF7635BB6D89390E801BD7D39F825EA46791212098889013C295C27BA402201DB180110EE3F651E1014031843E2BE451E01510A601EB9602A0979046CEBFD8720714E9C47409402467AA341DE33013904D0A07DC3049C1B06CB8247C1D90593F27F63D1404A09479A07D837C5DFC198573498414009DA401644CE8DEA242F170A2740DC149C07C00345DA467992043A540168AC48D3403C01D505D07900BA6C9AA681240F4067C2BB0EDD3ACACA855208E8E04DF10DF8CA314D03391EC0A58113A8B1BFE71222FAEBF4EBB334904300970622E0D52E70B41892349043001A03D8AFEFC05898A4817802380A687A151D2F933490E201A84DBCE781CF9A7272A11402D0185057FCEF410DE4140D661000AF86AECBCBD11DD49CA2C10C0256E7A6B74FE05E178BCECE9A8FF06908401520FBBE1DE43044D86DC6266106016876FB14D8B0A0398C291BE50904A0F39BBACC438082C6388C291A8827002E0BF9B5D0072FA067C481040F4015F0BCD48B2E0A64E4420904C8DD4EA2064106BC85F02906C10D18D48EB6FD210D0C142D1334104F00AA803AA697F5232C101212E2403801933180373A18B747FE8C640E6517215E03E1044CC70021E0787E8FCE9E128A06C309404B03F7D5FBA54BA73550698BD7403401704C7FB9BE81AEA0D4097424A209808B635FAC70F5B80664E3250CB10474B0024A1A78D49DA8E384170D067B00BA1AFAB07DD5933071D1EB42B104285CB91E2FF30B93D2A9E9D530AEFBD88AA938024A97A21DF9F62900F98F49DC07578C057B009AD2BD2D7F4513C8E8C2D930028A03C0B39AB7493D2783D000B2AE1F1585580F801F9078BBCDC3A3074440701C8824A083B3A077F219FC5AB92008A11E002BE0BDB237B4B0F4D74A5A0C42098015F0BC16F20C177B76C4114043137931D08DF492F70E2E811FB18BD540A407501F624F49BD3FA723FF01AE26922917924B021048400717C7BEBFB285EEA7C46A2092004C01D489AB77B778E0E3664803712E1048003C0F38B5BABDC71281D882A9400260059CAAF580AB6B5F4F253D082400EB3E7AD5BB1D48A2805D28320EC41180DFFEC9E90C3A958AD4401C01D581A747C16177D28177E0181059301547007AF3EFA68115C8A6527949A0066208A03E2D0F482038B3A8859FBB16A781300F8087F0734BFBE8AA48602E1446003C809D3E29B4C7598CDB288F22005E0E3EE3BD8AF367E31687A30880FBEEDCF885AFA8C4C5812002F007A5CFAB17CE26C334104100C580A7C9FC741C5B9F4C8358036B6836C5904BDCF01350362AE0A9ECC48DC3AB22611A08914087C7AF89FDED3EEA8D60F809E06F25C03398A92A1FDC95CE484983984110BFEDA9F00587D331A8602A8600D8712737B6F07012A481100222872E38A108D2400801F8D9C9D39318785215A481100276E8621E328D859341D240C0FAB89F805EA1006463939241D0A1423410E101B770A701657EDD0675A798A2C10802A018C0670540456E3C2142281862E24080047AD4651F4EAF061EA1DBC143EA2A601008F0800D4400BF8682E0E40D2B5645423410400096050D0FE3707A39F4195DC7FBE4D03030DE4FF339093F01F83C804FC9452C2367017C8A878A8075213F01346AC3A20DC688B8D404FC04EC90EE4A003F77105030E526005FC64B4040F1B89B00B83C3C0301A7EFBB09800BA3A25184E7D78097808B2A80828ADC861D5E02F065DC68D4D8E38E035E02E2CECDB4C1AD012F011754007D7480069C04C09B7969281A7064C44E02E0ADAC34780BA69C045C320654540DD8597011803F229408671CF079C0E5154071C0A7013301250BBFBC029E3460868B806B508057032E095C8302BC05532E02AE41015E0D7808B80E05384F1AF410802FDFE6C2552CE22020EC1B24BC703D4CEA20E04A1440F068C041C0DD8567C2CFF06C94DB09E8F12DAC648C1E0D3808908FBF065C8480ED85F6035E839311471CB01350B704AF2317726C94EB091077932DC1EB20C01107CC04E0A5811F017B1C30498067E0D7920555D835602500DF14FF189837CAAD83E07529C051346825E0529BE2A760D680910085023C7142517AB1322E0D1A09F83005C00CD453D6F429A19100B83CDC0EA5E7540D7C1401B80286FD9671577EEAA160816DD7DB6F2440A180E3A34375209FEE158B4E1BBE423F10E809E013607005B80AB9CA57B0A0D8D9BE8BCDE401E86D9103BB9EEF23E751249CB6B259130168590811B02DBAB4CAA0D36C3DD80AA64C0428BAC555C645BC95223484EFD1980B5908D01446798B5915EB4EB6C2590B0158696061C9B15251C1A76EA3C990C9DB2C04DCE309AAFFC12645C435154C1908F848052C7BCDACC312070C04AC9F8E479F86BF8E517660319FB3E41C060214C5B111477D2802A1450306024A10CCEB92D7800F5AB4391C4E403DCFB757DCD010F2649F6603C640B8D60354B9993B081628A6DE06C9A909D0C48098A77B1581D0F000857A0CA80AC0580878A689A00884860D1235010A05049DF4A229C4D06B404D007FDB0D88A8734EA05591BA7EAAD780960052003FFE07C155BC74044D298A3A0E6809280AC00818CCCB00AFA11877D51A501140B9367C2F63C9CB62BE0C00FD524E06BF5EB336A821808CD178E3866EA30F2160AD7081151B4F1F2C974E0226A070DA2B6240D021277C52D50A7BE6B8801FA0D0CC0A351E40FEACE88A12041577720E7BC5E72A471E9504540F4870100C71825EB53DA02D9C550D829D62A7668C49032B873770EEC11A50B99D8A004D4EB6A78E93CBFCD04C409445833801417236802D4AFB749507FC8E980990B659CC0448DB2C6602A46D163301D2368B9900699BC54C80B4CD622640DA663113206DB3980990B659CC0448DB2C6602A46D163301D2368B9900699BC54C80B4CD622640DA663113206DB3980990B659CC0448DB2C6602A46D163301D2368B9900699BC54C80B4CD622640DA663113206DB3980990B659CC0448DB2C6602A46D163301D2368B9900699BC54C80B4CD622640DA663113507EC69DF5F0E94004943337DAA3A0AF870D2DC8FACB1D8E7149F4F5B8A1762520DDCE0490F92D3A417501964093282340D7778B7D61A0450D30BACDE29BFCB5517C593CB207B4EA007DF7B8F829F1B0A20126C4C472D463D7FFBD38FC493CF02F0DD8FE0C32B6D8FC8FC3E270E01858AC579CC3F899C15F93C3A010B03C30013FCA6FF5DFCACFDF1C47A6FE28041CFE57FE85E6042537FCED4166929D7CF0EA7FC97826E070E058187300ECE700F774F7CF627A25E0F0F3F1EBBA150ED8FAF5D7C79F6CF7E1F07F2EDD6FB74A51B9FC0000000049454E44AE426082,
	cpf VARCHAR(15),
	cep VARCHAR(15),
	tipoConta char(1) default 'c',
	-- p = premium, c = comum
	quantidade_teclados int default 0

)

GO
CREATE TABLE tblProdutoDaLoja
(
	id_produto INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	descricao VARCHAR(1000),
	peso DECIMAL(6,2),
	altura DECIMAL(6,2),
	largura DECIMAL(6,2),
	comprimento DECIMAL(6,2),
	preco DECIMAL(6,2),
	marca VARCHAR(30),

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
	imagem_teclado VARBINARY(MAX),
	nickname VARCHAR(20),
	preco DECIMAL(6,2),
)

CREATE INDEX Xcliente ON tblCliente(id_cliente);
GO
CREATE INDEX Xproduto ON tblProdutoDaLoja(id_produto);
GO
CREATE INDEX Xpedidoloja ON tblPedidoProdutoDaLoja(id_cliente);
GO
CREATE INDEX Xcolecao ON tblColecao(id_colecao);
GO
CREATE INDEX Xtecladocustomizado ON tblTecladoCustomizado(id_teclado_customizado);


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

-- USUÁRIO PADRÃO

insert into tblCliente(nome, usuario, senha) values ('teste','teste','teste')

select * from tblCliente
select * from tblColecao
select * from tblPedidoProdutoDaLoja
select * from tblProdutoDaLoja
select * from tblTecladoCustomizado