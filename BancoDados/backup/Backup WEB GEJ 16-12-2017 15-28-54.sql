CREATE DATABASE IF NOT EXISTS gejdo247_gej;

USE gejdo247_gej;

DROP TABLE IF EXISTS TB_ACESSO;


CREATE TABLE `TB_ACESSO` (
  `co_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `ds_session_id` varchar(255) NOT NULL,
  `dt_inicio_acesso` datetime DEFAULT NULL,
  `dt_fim_acesso` datetime DEFAULT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_acesso`,`co_usuario`),
  KEY `FK_TB_ACESSO_TB_USUARIO1_IDX` (`co_usuario`),
  CONSTRAINT `FK_TB_ACESSO_TB_USUARIO1` FOREIGN KEY (`co_usuario`) REFERENCES `TB_USUARIO` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;


INSERT INTO TB_ACESSO VALUES("1","b9175174033b2ef919f990405420aa53","2017-12-04 00:00:00","2017-12-11 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("2","8a5273b5c36a57b29834599f7a1da6c1","2017-12-08 00:00:00","2017-12-08 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("3","8e70ce5accfa2ea4bb503b4b29e410be","2017-12-08 00:00:00","2017-12-08 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("4","4b280095ed8dae2678d8283ad1a59fbf","2017-12-08 00:00:00","2017-12-11 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("5","d3ec0796d6df257731caf5622077d735","2017-12-09 00:00:00","2017-12-09 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("6","3c955d424dd9bc34bb257c603abedd24","2017-12-09 00:00:00","2017-12-09 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("7","ae9d63f7e27d92f72b5d011e531b2665","2017-12-09 00:00:00","2017-12-09 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("8","96547df9386851ad5cce78f3b0d9dea0","2017-12-09 00:00:00","2017-12-09 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("9","18be51f348d156405cff895cd682ea40","2017-12-09 00:00:00","2017-12-09 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("10","c21487907376c9fbbdbf708ac5ac4f31","2017-12-09 00:00:00","2017-12-09 00:00:00","2");

INSERT INTO TB_ACESSO VALUES("11","896a80fd1522e479d2e0fd4d592a6188","2017-12-10 00:00:00","2017-12-10 00:00:00","2");

INSERT INTO TB_ACESSO VALUES("12","cb7301464af28e55f1636c990fc4bf08","2017-12-10 00:00:00","2017-12-10 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("13","734f42e08668cdf92c7267cac77f6f32","2017-12-10 00:00:00","2017-12-10 00:00:00","3");

INSERT INTO TB_ACESSO VALUES("14","9021fe3a0ea58ad28fb52a94bb74459d","2017-12-11 00:00:00","2017-12-11 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("15","12008ee05271b3caa8862753f63261dd","2017-12-11 00:00:00","2017-12-11 00:00:00","4");

INSERT INTO TB_ACESSO VALUES("16","b77052a6c705ce576fe47a36bd01f0ef","2017-12-11 00:00:00","2017-12-11 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("17","decf75595bf52c0e0400cd679ad7002d","2017-12-11 00:00:00","2017-12-11 00:00:00","3");

INSERT INTO TB_ACESSO VALUES("18","038c17c5534ff1384edefb8c6b452490","2017-12-11 00:00:00","2017-12-11 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("19","a57444126414e8c44c4897b36be8628d","2017-12-11 00:00:00","2017-12-11 00:00:00","6");

INSERT INTO TB_ACESSO VALUES("20","d132e20170302cc21e327d210897e656","2017-12-11 00:00:00","2017-12-11 00:00:00","6");

INSERT INTO TB_ACESSO VALUES("21","71c9484e048758790863567d1cca6c85","2017-12-12 00:00:00","2017-12-12 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("22","0c3ff0ab58106f5b3ffc0877c16c4476","2017-12-12 00:00:00","2017-12-12 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("23","648d51fc548e8caca1bb705a1a390da0","2017-12-12 00:00:00","2017-12-12 00:00:00","6");

INSERT INTO TB_ACESSO VALUES("24","03f0f15ac5640cbde83e01bc25fdabca","2017-12-13 00:00:00","2017-12-13 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("25","576a23a58d786f4935c934629dc4026c","2017-12-13 00:00:00","2017-12-13 00:00:00","4");

INSERT INTO TB_ACESSO VALUES("26","b563b21c1d283572dd448c1529b67048","2017-12-14 00:00:00","2017-12-14 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("27","abb7b36a15356d949b21d845262339c8","2017-12-14 00:00:00","2017-12-14 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("28","81ecbfa28ce39a10e2404b12709e8734","2017-12-14 00:00:00","2017-12-14 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("29","8b0f20fe2eccfd8dc05f341ba5644c92","2017-12-14 00:00:00","2017-12-14 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("30","fb74af1a16d204d7eac336b6238aea1a","2017-12-14 00:00:00","2017-12-14 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("31","dc84353e5bf87f127eaa160b802b2c64","2017-12-15 00:00:00","2017-12-15 00:00:00","1");

INSERT INTO TB_ACESSO VALUES("32","bde9e1723ad94c9ac5264189bd6af72b","2017-12-15 00:00:00","2017-12-15 00:00:00","1");




DROP TABLE IF EXISTS TB_AUDITORIA;


CREATE TABLE `TB_AUDITORIA` (
  `co_auditoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_tabela` varchar(150) DEFAULT NULL,
  `dt_realizado` datetime DEFAULT NULL,
  `no_operacao` varchar(1) DEFAULT NULL,
  `ds_item_anterior` text,
  `ds_item_atual` text,
  `co_registro` int(10) DEFAULT NULL,
  `ds_perfil_usuario` text,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_auditoria`,`co_usuario`),
  KEY `fk_TB_AUDITORIA_TB_USUARIO1_idx` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=487 DEFAULT CHARSET=utf8;


INSERT INTO TB_AUDITORIA VALUES("1","TB_ACESSO","2017-12-04 11:13:57","I","","co_usuario==1;/ds_session_id==b9175174033b2ef919f990405420aa53;/dt_inicio_acesso==2017-12-04;/dt_fim_acesso==2017-12-04","1","Master","1");

INSERT INTO TB_AUDITORIA VALUES("2","TB_ENDERECO","2017-12-04 12:34:18","I","","ds_endereco==Shps 602 chac. 97-A;/ds_complemento==Setor P.Sul;/ds_bairro==P.Sul;/nu_cep==72236608;/no_cidade==Brasília ;/sg_uf==DF","2","","0");

INSERT INTO TB_AUDITORIA VALUES("3","TB_CONTATO","2017-12-04 12:34:18","I","","nu_tel1==61995022920;/nu_tel2==61982512602;/nu_tel3==;/ds_email==amandatominaginha@gmail.com","2","","0");

INSERT INTO TB_AUDITORIA VALUES("4","TB_PESSOA","2017-12-04 12:34:18","I","","nu_cpf==06820934165;/no_pessoa==AMANDA TOMINAGA ;/nu_rg==3856116;/dt_cadastro==2017-12-04 12:34:17;/dt_nascimento==2002-08-27;/st_sexo==F;/co_endereco==2;/co_contato==2","2","","0");

INSERT INTO TB_AUDITORIA VALUES("5","TB_IMAGEM","2017-12-04 12:34:18","I","","ds_caminho==amanda-tominaga-5a255cea199ad.jpg","2","","0");

INSERT INTO TB_AUDITORIA VALUES("6","TB_INSCRICAO","2017-12-04 12:34:18","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-04 12:34:17;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LEILA TOMINAGA;/nu_tel_responsavel==61982522602;/ds_descricao==Sou diabética.\nSou top\nSou Filha de Dom Bosco \nA neném dos tios Tominaga;/st_equipe_trabalho==N;/co_pessoa==2;/co_imagem==2","1","","0");

INSERT INTO TB_AUDITORIA VALUES("7","TB_PAGAMENTO","2017-12-04 12:34:30","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==1","1","","0");

INSERT INTO TB_AUDITORIA VALUES("8","TB_PARCELAMENTO","2017-12-04 12:34:30","I","","co_pagamento==1;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","1","","0");

INSERT INTO TB_AUDITORIA VALUES("9","TB_ENDERECO","2017-12-04 12:45:16","I","","ds_endereco==QR 210 Conjunto 21 Casa 19 Samambaia Norte;/ds_complemento==Casa;/ds_bairro==Samambaia Norte;/nu_cep==72316219;/no_cidade==Brasília;/sg_uf==DF","3","","0");

INSERT INTO TB_AUDITORIA VALUES("10","TB_CONTATO","2017-12-04 12:45:16","I","","nu_tel1==6134588070;/nu_tel2==6134588070;/nu_tel3==;/ds_email==igoor20boorges25@gmail.com","3","","0");

INSERT INTO TB_AUDITORIA VALUES("11","TB_PESSOA","2017-12-04 12:45:16","I","","nu_cpf==04267851182;/no_pessoa==IGOR BORGES LEITE;/nu_rg==3009052;/dt_cadastro==2017-12-04 12:45:16;/dt_nascimento==1996-02-25;/st_sexo==M;/co_endereco==3;/co_contato==3","3","","0");

INSERT INTO TB_AUDITORIA VALUES("12","TB_IMAGEM","2017-12-04 12:45:17","I","","ds_caminho==igor-borges-leite-5a255f7c41f75.jpg","3","","0");

INSERT INTO TB_AUDITORIA VALUES("13","TB_INSCRICAO","2017-12-04 12:45:17","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-04 12:45:16;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==8;/no_responsavel==MãE;/nu_tel_responsavel==6134588070;/ds_descricao==Sou o Igor! ","2","","0");

INSERT INTO TB_AUDITORIA VALUES("14","TB_PAGAMENTO","2017-12-04 12:45:37","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==2","2","","0");

INSERT INTO TB_AUDITORIA VALUES("15","TB_PARCELAMENTO","2017-12-04 12:45:37","I","","co_pagamento==2;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","2","","0");

INSERT INTO TB_AUDITORIA VALUES("16","TB_ENDERECO","2017-12-04 15:06:05","I","","ds_endereco==QR 208 Conjunto 05 Casa 01;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==;/no_cidade==Samambaia;/sg_uf==DF","4","","0");

INSERT INTO TB_AUDITORIA VALUES("17","TB_CONTATO","2017-12-04 15:06:05","I","","nu_tel1==61984800492;/nu_tel2==;/nu_tel3==;/ds_email==nayane.duda11@gmail.com","4","","0");

INSERT INTO TB_AUDITORIA VALUES("18","TB_PESSOA","2017-12-04 15:06:06","I","","nu_cpf==07332354179;/no_pessoa==BRENDA NAYANE DUDA MOREIRA;/nu_rg==;/dt_cadastro==2017-12-04 15:06:05;/dt_nascimento==2000-07-12;/st_sexo==F;/co_endereco==4;/co_contato==4","4","","0");

INSERT INTO TB_AUDITORIA VALUES("19","TB_IMAGEM","2017-12-04 15:06:07","I","","ds_caminho==brenda-nayane-duda-moreira-5a25807eb2270.jpg","4","","0");

INSERT INTO TB_AUDITORIA VALUES("20","TB_INSCRICAO","2017-12-04 15:06:08","I","","ds_pastoral==Grupo Jovem Arcanjos e EJNS;/ds_retiro==S;/dt_cadastro==2017-12-04 15:06:05;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==2;/no_responsavel==MINHA MãE LúCIA;/nu_tel_responsavel==61986280131;/ds_descricao==Não sei falar muito sobre mim não, mas tudo bem.. Tenho 17 anos, gosto de participar de retiros e eu amei participar do Santifique-se esse ano.. Gosto de dançar, ler, estudar e aprender coisas diferentes ou no mínimo novas, além de conversar e ouvir as pessoas.;/st_equipe_trabalho==N;/co_pessoa==4;/co_imagem==4","3","","0");

INSERT INTO TB_AUDITORIA VALUES("21","TB_PAGAMENTO","2017-12-04 15:06:39","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==3","3","","0");

INSERT INTO TB_AUDITORIA VALUES("22","TB_PARCELAMENTO","2017-12-04 15:06:39","I","","co_pagamento==3;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","3","","0");

INSERT INTO TB_AUDITORIA VALUES("23","TB_ENDERECO","2017-12-04 15:33:41","I","","ds_endereco==Qr. 204 Conjunto 12 Lote 16;/ds_complemento==Kit 01;/ds_bairro==Norte;/nu_cep==72316092;/no_cidade==Samambaia ;/sg_uf==DF","5","","0");

INSERT INTO TB_AUDITORIA VALUES("24","TB_CONTATO","2017-12-04 15:33:41","I","","nu_tel1==61984624670;/nu_tel2==61991774916;/nu_tel3==;/ds_email==amaury.ritchenzoo@gmail.com","5","","0");

INSERT INTO TB_AUDITORIA VALUES("25","TB_PESSOA","2017-12-04 15:33:41","I","","nu_cpf==05858600174;/no_pessoa==AMAURY COSTA SILVA RAMOS ;/nu_rg==3094934;/dt_cadastro==2017-12-04 15:33:41;/dt_nascimento==1996-12-17;/st_sexo==M;/co_endereco==5;/co_contato==5","5","","0");

INSERT INTO TB_AUDITORIA VALUES("26","TB_IMAGEM","2017-12-04 15:33:41","I","","ds_caminho==amaury-costa-silva-ramos-5a2586f59c0e0.jpg","5","","0");

INSERT INTO TB_AUDITORIA VALUES("27","TB_INSCRICAO","2017-12-04 15:33:41","I","","ds_pastoral==GEJ Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-04 15:33:41;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==8;/no_responsavel==MãE ;/nu_tel_responsavel==61991774916;/ds_descricao==Sou um rapaz muito ativo, participativo, alegre é muito sério também.\nNão sou muito fã de falar de mim, mas sou isto e um pouco mais !;/st_equipe_trabalho==N;/co_pessoa==5;/co_imagem==5","4","","0");

INSERT INTO TB_AUDITORIA VALUES("28","TB_PAGAMENTO","2017-12-04 15:34:16","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==4","4","","0");

INSERT INTO TB_AUDITORIA VALUES("29","TB_PARCELAMENTO","2017-12-04 15:34:16","I","","co_pagamento==4;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","4","","0");

INSERT INTO TB_AUDITORIA VALUES("30","TB_ENDERECO","2017-12-04 17:05:20","I","","ds_endereco==Qs 403 , conj. 10 casa 27;/ds_complemento==;/ds_bairro==Samambaia norte;/nu_cep==72319111;/no_cidade==Brasília;/sg_uf==DF","6","","0");

INSERT INTO TB_AUDITORIA VALUES("31","TB_CONTATO","2017-12-04 17:05:20","I","","nu_tel1==62982163027;/nu_tel2==;/nu_tel3==;/ds_email==henriquecarvalhohca@outlook.com","6","","0");

INSERT INTO TB_AUDITORIA VALUES("32","TB_PESSOA","2017-12-04 17:05:20","I","","nu_cpf==05418337157;/no_pessoa==HENRIQUE CARVALHO ASSUNçãO;/nu_rg==;/dt_cadastro==2017-12-04 17:05:20;/dt_nascimento==1996-02-12;/st_sexo==M;/co_endereco==6;/co_contato==6","6","","0");

INSERT INTO TB_AUDITORIA VALUES("33","TB_IMAGEM","2017-12-04 17:05:21","I","","ds_caminho==henrique-carvalho-assuncao-5a259c70e65a0.jpg","6","","0");

INSERT INTO TB_AUDITORIA VALUES("34","TB_INSCRICAO","2017-12-04 17:05:21","I","","ds_pastoral==Acólitos e coroinhas;/ds_retiro==N;/dt_cadastro==2017-12-04 17:05:20;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==MãE ;/nu_tel_responsavel==62999535024;/ds_descricao==Sou gente boa;/st_equipe_trabalho==N;/co_pessoa==6;/co_imagem==6","5","","0");

INSERT INTO TB_AUDITORIA VALUES("35","TB_PAGAMENTO","2017-12-04 17:06:01","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==5","5","","0");

INSERT INTO TB_AUDITORIA VALUES("36","TB_PARCELAMENTO","2017-12-04 17:06:01","I","","co_pagamento==5;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","5","","0");

INSERT INTO TB_AUDITORIA VALUES("37","TB_ENDERECO","2017-12-04 17:17:34","I","","ds_endereco==QR 405 Conj 10 Casa 04;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72319210;/no_cidade==Brasília;/sg_uf==DF","7","","0");

INSERT INTO TB_AUDITORIA VALUES("38","TB_CONTATO","2017-12-04 17:17:34","I","","nu_tel1==6198216342;/nu_tel2==61982610934;/nu_tel3==;/ds_email==amandasliima@hotmail.com","7","","0");

INSERT INTO TB_AUDITORIA VALUES("39","TB_PESSOA","2017-12-04 17:17:34","I","","nu_cpf==03667767110;/no_pessoa==AMANDA SILVA LIMA;/nu_rg==3325124;/dt_cadastro==2017-12-04 17:17:34;/dt_nascimento==1998-05-06;/st_sexo==F;/co_endereco==7;/co_contato==7","7","","0");

INSERT INTO TB_AUDITORIA VALUES("40","TB_IMAGEM","2017-12-04 17:17:34","I","","ds_caminho==amanda-silva-lima-5a259f4e532ad.jpg","7","","0");

INSERT INTO TB_AUDITORIA VALUES("41","TB_INSCRICAO","2017-12-04 17:17:34","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-04 17:17:34;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==KêNIA ;/nu_tel_responsavel==6130825870;/ds_descricao==Amanda\n19 anos;/st_equipe_trabalho==N;/co_pessoa==7;/co_imagem==7","6","","0");

INSERT INTO TB_AUDITORIA VALUES("42","TB_PAGAMENTO","2017-12-04 17:17:56","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==6","6","","0");

INSERT INTO TB_AUDITORIA VALUES("43","TB_PARCELAMENTO","2017-12-04 17:17:56","I","","co_pagamento==6;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","6","","0");

INSERT INTO TB_AUDITORIA VALUES("44","TB_ENDERECO","2017-12-04 17:42:47","I","","ds_endereco==QR 211 conj 03 casa 13;/ds_complemento==;/ds_bairro==;/nu_cep==72343000;/no_cidade==Samambaia Norte;/sg_uf==DF","8","","0");

INSERT INTO TB_AUDITORIA VALUES("45","TB_CONTATO","2017-12-04 17:42:47","I","","nu_tel1==61993898324;/nu_tel2==61994186538;/nu_tel3==;/ds_email==jerlanesilva06@gmail.com","8","","0");

INSERT INTO TB_AUDITORIA VALUES("46","TB_PESSOA","2017-12-04 17:42:47","I","","nu_cpf==07353224142;/no_pessoa==JERLANE SOARES MAGALHãES DA SILVA;/nu_rg==3739423;/dt_cadastro==2017-12-04 17:42:47;/dt_nascimento==2001-02-06;/st_sexo==F;/co_endereco==8;/co_contato==8","8","","0");

INSERT INTO TB_AUDITORIA VALUES("47","TB_IMAGEM","2017-12-04 17:42:48","I","","ds_caminho==jerlane-soares-magalhaes-da-silva-5a25a537f1d0c.jpg","8","","0");

INSERT INTO TB_AUDITORIA VALUES("48","TB_INSCRICAO","2017-12-04 17:42:48","I","","ds_pastoral==Gej;/ds_retiro==N;/dt_cadastro==2017-12-04 17:42:47;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==2;/no_responsavel==MINHA MãE ;/nu_tel_responsavel==61994186538;/ds_descricao==Eu me chamo Jerlane sou do gej tenho  16 anos sou extrovertida brincalhona meiga seria amuuh participar dos eventos do gej amuuh fazer amizade com as pessoas;/st_equipe_trabalho==N;/co_pessoa==8;/co_imagem==8","7","","0");

INSERT INTO TB_AUDITORIA VALUES("49","TB_PAGAMENTO","2017-12-04 17:43:12","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==7","7","","0");

INSERT INTO TB_AUDITORIA VALUES("50","TB_PARCELAMENTO","2017-12-04 17:43:12","I","","co_pagamento==7;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","7","","0");

INSERT INTO TB_AUDITORIA VALUES("51","TB_ENDERECO","2017-12-04 17:46:51","I","","ds_endereco==Qr 405 Conj 02 Casa 09;/ds_complemento==Casa 09;/ds_bairro==Samambaia;/nu_cep==72319202;/no_cidade==samambaia norte;/sg_uf==DF","9","","0");

INSERT INTO TB_AUDITORIA VALUES("52","TB_CONTATO","2017-12-04 17:46:51","I","","nu_tel1==6182361967;/nu_tel2==6193077479;/nu_tel3==;/ds_email==Joaopereira407@hotmail.com","9","","0");

INSERT INTO TB_AUDITORIA VALUES("53","TB_PESSOA","2017-12-04 17:46:51","I","","nu_cpf==07970134157;/no_pessoa==JOãO VICTOR PEREIRA FERNANDES ;/nu_rg==3947853;/dt_cadastro==2017-12-04 17:46:51;/dt_nascimento==2002-03-18;/st_sexo==M;/co_endereco==9;/co_contato==9","9","","0");

INSERT INTO TB_AUDITORIA VALUES("54","TB_IMAGEM","2017-12-04 17:46:51","I","","ds_caminho==joao-victor-pereira-fernandes-5a25a62b62be8.jpg","9","","0");

INSERT INTO TB_AUDITORIA VALUES("55","TB_INSCRICAO","2017-12-04 17:46:51","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-04 17:46:51;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==9;/no_responsavel==MARIA OZENITA PEREIRA;/nu_tel_responsavel==6182361967;/ds_descricao==Não tenho nenhum tipo de alergia;/st_equipe_trabalho==N;/co_pessoa==9;/co_imagem==9","8","","0");

INSERT INTO TB_AUDITORIA VALUES("56","TB_PAGAMENTO","2017-12-04 18:03:25","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==8","8","","0");

INSERT INTO TB_AUDITORIA VALUES("57","TB_PARCELAMENTO","2017-12-04 18:03:25","I","","co_pagamento==8;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","8","","0");

INSERT INTO TB_AUDITORIA VALUES("58","TB_ENDERECO","2017-12-04 18:49:53","I","","ds_endereco==Qr 423 Conjunto 03 Casa 24;/ds_complemento==24;/ds_bairro==Samambaia Norte;/nu_cep==72325203;/no_cidade==Brasília;/sg_uf==DF","10","","0");

INSERT INTO TB_AUDITORIA VALUES("59","TB_CONTATO","2017-12-04 18:49:53","I","","nu_tel1==61992850286;/nu_tel2==6195282513;/nu_tel3==;/ds_email==karenn.geovanna@gmail.com","10","","0");

INSERT INTO TB_AUDITORIA VALUES("60","TB_PESSOA","2017-12-04 18:49:53","I","","nu_cpf==06050858110;/no_pessoa==KAREN GEOVANNA FIGUEREDO DOS SANTOS;/nu_rg==;/dt_cadastro==2017-12-04 18:49:53;/dt_nascimento==1998-04-17;/st_sexo==F;/co_endereco==10;/co_contato==10","10","","0");

INSERT INTO TB_AUDITORIA VALUES("61","TB_IMAGEM","2017-12-04 18:49:53","I","","ds_caminho==karen-geovanna-figueredo-dos-santos-5a25b4f1383d9.jpg","10","","0");

INSERT INTO TB_AUDITORIA VALUES("62","TB_INSCRICAO","2017-12-04 18:49:53","I","","ds_pastoral==GEJ DOM BOSCO;/ds_retiro==S;/dt_cadastro==2017-12-04 18:49:53;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==DENISE;/nu_tel_responsavel==6134595330;/ds_descricao==Trago dentro de mim um pouco da alegria que vem de Deus! *-*;/st_equipe_trabalho==N;/co_pessoa==10;/co_imagem==10","9","","0");

INSERT INTO TB_AUDITORIA VALUES("63","TB_PAGAMENTO","2017-12-04 18:50:43","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==9","9","","0");

INSERT INTO TB_AUDITORIA VALUES("64","TB_PARCELAMENTO","2017-12-04 18:50:43","I","","co_pagamento==9;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","9","","0");

INSERT INTO TB_AUDITORIA VALUES("65","TB_ENDERECO","2017-12-04 19:22:18","I","","ds_endereco==cln 314 bloco d apt 210;/ds_complemento==210;/ds_bairro==asa norte;/nu_cep==70773060;/no_cidade==Brasília ;/sg_uf==DF","11","","0");

INSERT INTO TB_AUDITORIA VALUES("66","TB_CONTATO","2017-12-04 19:22:18","I","","nu_tel1==61996330428;/nu_tel2==;/nu_tel3==;/ds_email==lilirtais@gmail.com","11","","0");

INSERT INTO TB_AUDITORIA VALUES("67","TB_PESSOA","2017-12-04 19:22:18","I","","nu_cpf==00666264120;/no_pessoa==THAIS LIMA ROCHA ;/nu_rg==2582737;/dt_cadastro==2017-12-04 19:22:18;/dt_nascimento==1988-05-21;/st_sexo==F;/co_endereco==11;/co_contato==11","11","","0");

INSERT INTO TB_AUDITORIA VALUES("68","TB_IMAGEM","2017-12-04 19:22:18","I","","ds_caminho==thais-lima-rocha-5a25bc8aba273.jpg","11","","0");

INSERT INTO TB_AUDITORIA VALUES("69","TB_INSCRICAO","2017-12-04 19:22:18","I","","ds_pastoral==Renovaćao carismatica do Santuário Sao Francisco;/ds_retiro==S;/dt_cadastro==2017-12-04 19:22:18;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==1;/no_responsavel==ELIANE;/nu_tel_responsavel==61982257021;/ds_descricao==Trabalho como professora, catolica praticante e gostaria de participar para me fortalecer e fortalecer a fé.;/st_equipe_trabalho==N;/co_pessoa==11;/co_imagem==11","10","","0");

INSERT INTO TB_AUDITORIA VALUES("70","TB_PAGAMENTO","2017-12-04 19:23:04","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==10","10","","0");

INSERT INTO TB_AUDITORIA VALUES("71","TB_PARCELAMENTO","2017-12-04 19:23:04","I","","co_pagamento==10;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","10","","0");

INSERT INTO TB_AUDITORIA VALUES("72","TB_ENDERECO","2017-12-04 19:23:35","I","","ds_endereco==cln 314 bloco d apt 210;/ds_complemento==210;/ds_bairro==asa norte;/nu_cep==70773060;/no_cidade==Brasília ;/sg_uf==DF","12","","0");

INSERT INTO TB_AUDITORIA VALUES("73","TB_CONTATO","2017-12-04 19:23:35","I","","nu_tel1==61996330428;/nu_tel2==;/nu_tel3==;/ds_email==lilirtais@gmail.com","12","","0");

INSERT INTO TB_AUDITORIA VALUES("74","TB_PESSOA","2017-12-04 19:23:35","I","","nu_cpf==00666264120;/no_pessoa==THAIS LIMA ROCHA ;/nu_rg==2582737;/dt_cadastro==2017-12-04 19:23:35;/dt_nascimento==1988-05-21;/st_sexo==F;/co_endereco==12;/co_contato==12","12","","0");

INSERT INTO TB_AUDITORIA VALUES("75","TB_IMAGEM","2017-12-04 19:23:35","I","","ds_caminho==thais-lima-rocha-5a25bcd7719e2.jpg","12","","0");

INSERT INTO TB_AUDITORIA VALUES("76","TB_INSCRICAO","2017-12-04 19:23:35","I","","ds_pastoral==Renovaćao carismatica do Santuário Sao Francisco;/ds_retiro==S;/dt_cadastro==2017-12-04 19:23:35;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==1;/no_responsavel==ELIANE;/nu_tel_responsavel==61982257021;/ds_descricao==Trabalho como professora, catolica praticante e gostaria de participar para me fortalecer e fortalecer a fé.;/st_equipe_trabalho==N;/co_pessoa==12;/co_imagem==12","11","","0");

INSERT INTO TB_AUDITORIA VALUES("77","TB_ENDERECO","2017-12-04 22:16:26","I","","ds_endereco==Qr 421 conjunto 16 casa 03;/ds_complemento==Casa 03;/ds_bairro==Samambaia Norte;/nu_cep==72325119;/no_cidade==Samambaia;/sg_uf==DF","13","","0");

INSERT INTO TB_AUDITORIA VALUES("78","TB_CONTATO","2017-12-04 22:16:26","I","","nu_tel1==6192198414;/nu_tel2==6182701888;/nu_tel3==;/ds_email==frabriceras15@gmail.com","13","","0");

INSERT INTO TB_AUDITORIA VALUES("79","TB_PESSOA","2017-12-04 22:16:26","I","","nu_cpf==02858427143;/no_pessoa==FABRíCIO ALVES OLIVEIRA ;/nu_rg==3558631;/dt_cadastro==2017-12-04 22:16:26;/dt_nascimento==2001-07-05;/st_sexo==M;/co_endereco==13;/co_contato==13","13","","0");

INSERT INTO TB_AUDITORIA VALUES("80","TB_IMAGEM","2017-12-04 22:16:26","I","","ds_caminho==fabricio-alves-oliveira-5a25e55ada86d.jpeg","13","","0");

INSERT INTO TB_AUDITORIA VALUES("81","TB_INSCRICAO","2017-12-04 22:16:26","I","","ds_pastoral==GEJ Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-04 22:16:26;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==9;/no_responsavel==PAI ;/nu_tel_responsavel==6182701888;/ds_descricao==Carismático e desinibido.;/st_equipe_trabalho==N;/co_pessoa==13;/co_imagem==13","12","","0");

INSERT INTO TB_AUDITORIA VALUES("82","TB_PAGAMENTO","2017-12-04 22:18:42","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==12","11","","0");

INSERT INTO TB_AUDITORIA VALUES("83","TB_PARCELAMENTO","2017-12-04 22:18:42","I","","co_pagamento==11;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","11","","0");

INSERT INTO TB_AUDITORIA VALUES("84","TB_ENDERECO","2017-12-04 22:44:49","I","","ds_endereco==Qr 603 chácara 39 cadáveres 30 B;/ds_complemento==Rua 03 Condomínio Vida Nova;/ds_bairro==Samambaia Norte;/nu_cep==72331100;/no_cidade==Samambaia ;/sg_uf==DF","14","","0");

INSERT INTO TB_AUDITORIA VALUES("85","TB_CONTATO","2017-12-04 22:44:49","I","","nu_tel1==6182609125;/nu_tel2==6181214179;/nu_tel3==;/ds_email==sirlei_arq@hotmail.com","14","","0");

INSERT INTO TB_AUDITORIA VALUES("86","TB_PESSOA","2017-12-04 22:44:49","I","","nu_cpf==07128618155;/no_pessoa==ISABELA ARáUJO DOS SANTOS ;/nu_rg==3694686;/dt_cadastro==2017-12-04 22:44:49;/dt_nascimento==2001-07-14;/st_sexo==F;/co_endereco==14;/co_contato==14","14","","0");

INSERT INTO TB_AUDITORIA VALUES("87","TB_IMAGEM","2017-12-04 22:44:49","I","","ds_caminho==isabela-araujo-dos-santos-5a25ec017aab5.jpeg","14","","0");

INSERT INTO TB_AUDITORIA VALUES("88","TB_INSCRICAO","2017-12-04 22:44:49","I","","ds_pastoral==GEJ Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-04 22:44:49;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MãE ;/nu_tel_responsavel==6181214179;/ds_descricao==Desinibida.;/st_equipe_trabalho==N;/co_pessoa==14;/co_imagem==14","13","","0");

INSERT INTO TB_AUDITORIA VALUES("89","TB_PAGAMENTO","2017-12-04 22:45:10","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==13","12","","0");

INSERT INTO TB_AUDITORIA VALUES("90","TB_PARCELAMENTO","2017-12-04 22:45:10","I","","co_pagamento==12;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","12","","0");

INSERT INTO TB_AUDITORIA VALUES("91","TB_PAGAMENTO","2017-12-04 23:31:58","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==11","13","","0");

INSERT INTO TB_AUDITORIA VALUES("92","TB_PARCELAMENTO","2017-12-04 23:31:59","I","","co_pagamento==13;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","13","","0");

INSERT INTO TB_AUDITORIA VALUES("93","TB_ENDERECO","2017-12-04 23:48:55","I","","ds_endereco==Qr 421 conjunto 09 casa 11;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==72325110;/no_cidade==Samambaia Norte - DF- Brasília;/sg_uf==DF","15","","0");

INSERT INTO TB_AUDITORIA VALUES("94","TB_CONTATO","2017-12-04 23:48:55","I","","nu_tel1==61994129510;/nu_tel2==;/nu_tel3==;/ds_email==vicclima123@hotmail.com","15","","0");

INSERT INTO TB_AUDITORIA VALUES("95","TB_PESSOA","2017-12-04 23:48:55","I","","nu_cpf==05519198179;/no_pessoa==VITóRIA P LIMA;/nu_rg==3287537;/dt_cadastro==2017-12-04 23:48:55;/dt_nascimento==1998-06-21;/st_sexo==F;/co_endereco==15;/co_contato==15","15","","0");

INSERT INTO TB_AUDITORIA VALUES("96","TB_IMAGEM","2017-12-04 23:48:56","I","","ds_caminho==vitoria-p-lima-5a25fb07f2f3f.jpg","15","","0");

INSERT INTO TB_AUDITORIA VALUES("97","TB_INSCRICAO","2017-12-04 23:48:56","I","","ds_pastoral==GEJ DOM BOSCO;/ds_retiro==S;/dt_cadastro==2017-12-04 23:48:55;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==PAI;/nu_tel_responsavel==61992197688;/ds_descricao==Feliz;/st_equipe_trabalho==N;/co_pessoa==15;/co_imagem==15","14","","0");

INSERT INTO TB_AUDITORIA VALUES("98","TB_PAGAMENTO","2017-12-04 23:49:31","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==14","14","","0");

INSERT INTO TB_AUDITORIA VALUES("99","TB_PARCELAMENTO","2017-12-04 23:49:31","I","","co_pagamento==14;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-04","14","","0");

INSERT INTO TB_AUDITORIA VALUES("100","TB_ENDERECO","2017-12-05 08:13:36","I","","ds_endereco==Quadra: 425, Conjunto:26;/ds_complemento==Casa:14;/ds_bairro==Samambaia Norte;/nu_cep==72327027;/no_cidade==Brasília;/sg_uf==DF","16","","0");

INSERT INTO TB_AUDITORIA VALUES("101","TB_CONTATO","2017-12-05 08:13:36","I","","nu_tel1==61995637226;/nu_tel2==61993166755;/nu_tel3==;/ds_email==lucaslcr33@gmail.com","16","","0");

INSERT INTO TB_AUDITORIA VALUES("102","TB_PESSOA","2017-12-05 08:13:36","I","","nu_cpf==04705500156;/no_pessoa==LUCAS CUNHA RIBEIRO;/nu_rg==3089535;/dt_cadastro==2017-12-05 08:13:36;/dt_nascimento==1994-06-09;/st_sexo==M;/co_endereco==16;/co_contato==16","16","","0");

INSERT INTO TB_AUDITORIA VALUES("103","TB_IMAGEM","2017-12-05 08:13:36","I","","ds_caminho==lucas-cunha-ribeiro-5a2671509f2e6.jpg","16","","0");

INSERT INTO TB_AUDITORIA VALUES("104","TB_INSCRICAO","2017-12-05 08:13:36","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-05 08:13:36;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==MARIA JOSé;/nu_tel_responsavel==6133593245;/ds_descricao==Membro da equipe de música Gej Dom Bosco, ex-acólito e cerimoniário da Paróquia São José Operário.;/st_equipe_trabalho==N;/co_pessoa==16;/co_imagem==16","15","","0");

INSERT INTO TB_AUDITORIA VALUES("105","TB_PAGAMENTO","2017-12-05 08:18:34","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==15","15","","0");

INSERT INTO TB_AUDITORIA VALUES("106","TB_PARCELAMENTO","2017-12-05 08:18:34","I","","co_pagamento==15;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-05","15","","0");

INSERT INTO TB_AUDITORIA VALUES("107","TB_ENDERECO","2017-12-05 09:49:57","I","","ds_endereco==Qnp 32 conj C casa 19;/ds_complemento==;/ds_bairro==P sul;/nu_cep==72236203;/no_cidade==Ceilândia;/sg_uf==DF","17","","0");

INSERT INTO TB_AUDITORIA VALUES("108","TB_CONTATO","2017-12-05 09:49:57","I","","nu_tel1==61984390834;/nu_tel2==6132086444;/nu_tel3==;/ds_email==wallissonirvans@gmail.com","17","","0");

INSERT INTO TB_AUDITORIA VALUES("109","TB_PESSOA","2017-12-05 09:49:57","I","","nu_cpf==06565286132;/no_pessoa==WALLISSON MATíAS DE SOUSA ;/nu_rg==3563548;/dt_cadastro==2017-12-05 09:49:57;/dt_nascimento==1998-12-24;/st_sexo==M;/co_endereco==17;/co_contato==17","17","","0");

INSERT INTO TB_AUDITORIA VALUES("110","TB_IMAGEM","2017-12-05 09:49:58","I","","ds_caminho==wallisson-matias-de-sousa-5a2687e5d3b36.jpg","17","","0");

INSERT INTO TB_AUDITORIA VALUES("111","TB_INSCRICAO","2017-12-05 09:49:58","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-05 09:49:57;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==NEILDO;/nu_tel_responsavel==6132086444;/ds_descricao==Hellou sou wallisson tenho 18 anos, isso durante a inscrição, participo da igreja desde de muito novo mas só resolvi viver na fé católica á pouco tempo. Participo do grupo de cerimôniarios em minha paróquia e um outro grupo jovem, fillis Mater Dei .;/st_equipe_trabalho==N;/co_pessoa==17;/co_imagem==17","16","","0");

INSERT INTO TB_AUDITORIA VALUES("112","TB_PAGAMENTO","2017-12-05 09:52:04","I","","nu_total==160.00;/nu_parcelas==1;/co_inscricao==16","16","","0");

INSERT INTO TB_AUDITORIA VALUES("113","TB_PARCELAMENTO","2017-12-05 09:52:04","I","","co_pagamento==16;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-05","16","","0");

INSERT INTO TB_AUDITORIA VALUES("114","TB_PAGAMENTO","2017-12-05 09:53:12","U","co_pagamento==16;/nu_total==160.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==16","nu_total==160.00;/nu_parcelas==1","16","","0");

INSERT INTO TB_AUDITORIA VALUES("115","TB_PARCELAMENTO","2017-12-05 09:53:12","D","co_parcelamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-04;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==1;/co_tipo_pagamento==1","","1","","0");

INSERT INTO TB_AUDITORIA VALUES("116","TB_PARCELAMENTO","2017-12-05 09:53:12","I","","co_pagamento==1;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-05","17","","0");

INSERT INTO TB_AUDITORIA VALUES("117","TB_ENDERECO","2017-12-05 11:06:05","I","","ds_endereco==Rua 16 sul;/ds_complemento==Lote 06 apartamento 801;/ds_bairro==Águas Claras;/nu_cep==;/no_cidade==;/sg_uf==DF","18","","0");

INSERT INTO TB_AUDITORIA VALUES("118","TB_CONTATO","2017-12-05 11:06:05","I","","nu_tel1==61992775753;/nu_tel2==;/nu_tel3==;/ds_email==manuela@marangoni.adm.br","18","","0");

INSERT INTO TB_AUDITORIA VALUES("119","TB_PESSOA","2017-12-05 11:06:05","I","","nu_cpf==05418222171;/no_pessoa==MANUELA CORREA MARANGONI;/nu_rg==;/dt_cadastro==2017-12-05 11:06:05;/dt_nascimento==2000-02-25;/st_sexo==F;/co_endereco==18;/co_contato==18","18","","0");

INSERT INTO TB_AUDITORIA VALUES("120","TB_IMAGEM","2017-12-05 11:06:06","I","","ds_caminho==manuela-correa-marangoni-5a2699bda4bb7.JPG","18","","0");

INSERT INTO TB_AUDITORIA VALUES("121","TB_INSCRICAO","2017-12-05 11:06:06","I","","ds_pastoral==EJNS;/ds_retiro==S;/dt_cadastro==2017-12-05 11:06:05;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MINHA MãE CAROL;/nu_tel_responsavel==61992091401;/ds_descricao==Sou tímida, gosto de jogar futebol ou qualquer esporte.;/st_equipe_trabalho==N;/co_pessoa==18;/co_imagem==18","17","","0");

INSERT INTO TB_AUDITORIA VALUES("122","TB_PAGAMENTO","2017-12-05 11:07:44","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==17","17","","0");

INSERT INTO TB_AUDITORIA VALUES("123","TB_PARCELAMENTO","2017-12-05 11:07:44","I","","co_pagamento==17;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-05","18","","0");

INSERT INTO TB_AUDITORIA VALUES("124","TB_ENDERECO","2017-12-05 11:56:37","I","","ds_endereco==Qr 213 conjunto 05 casa 09;/ds_complemento==09;/ds_bairro==Samambaia;/nu_cep==72343105;/no_cidade==Brasilía;/sg_uf==DF","19","","0");

INSERT INTO TB_AUDITORIA VALUES("125","TB_CONTATO","2017-12-05 11:56:37","I","","nu_tel1==6133593574;/nu_tel2==6133593574;/nu_tel3==;/ds_email==priscilamartins213@gmail.com","19","","0");

INSERT INTO TB_AUDITORIA VALUES("126","TB_PESSOA","2017-12-05 11:56:37","I","","nu_cpf==06408735100;/no_pessoa==PRISCILA MARTINS MATIAS;/nu_rg==3480987;/dt_cadastro==2017-12-05 11:56:37;/dt_nascimento==1999-02-03;/st_sexo==F;/co_endereco==19;/co_contato==19","19","","0");

INSERT INTO TB_AUDITORIA VALUES("127","TB_IMAGEM","2017-12-05 11:56:37","I","","ds_caminho==priscila-martins-matias-5a26a59585921.jpg","19","","0");

INSERT INTO TB_AUDITORIA VALUES("128","TB_INSCRICAO","2017-12-05 11:56:37","I","","ds_pastoral==GEJ-Dom bosco;/ds_retiro==S;/dt_cadastro==2017-12-05 11:56:37;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==2;/no_responsavel==RITA MARIA ;/nu_tel_responsavel==6133593574;/ds_descricao==Otima pessoa para se conviver.;/st_equipe_trabalho==N;/co_pessoa==19;/co_imagem==19","18","","0");

INSERT INTO TB_AUDITORIA VALUES("129","TB_PAGAMENTO","2017-12-05 11:56:51","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==18","18","","0");

INSERT INTO TB_AUDITORIA VALUES("130","TB_PARCELAMENTO","2017-12-05 11:56:51","I","","co_pagamento==18;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-05","19","","0");

INSERT INTO TB_AUDITORIA VALUES("131","TB_ENDERECO","2017-12-05 13:38:18","I","","ds_endereco==Qr 310 conjunto 16 casa 18;/ds_complemento==samambaia sul;/ds_bairro==samambaia df;/nu_cep==72306817;/no_cidade==Brasilia ;/sg_uf==DF","20","","0");

INSERT INTO TB_AUDITORIA VALUES("132","TB_CONTATO","2017-12-05 13:38:18","I","","nu_tel1==61995753532;/nu_tel2==61991157538;/nu_tel3==;/ds_email==mercia.batista@hotmail.com","20","","0");

INSERT INTO TB_AUDITORIA VALUES("133","TB_PESSOA","2017-12-05 13:38:18","I","","nu_cpf==03509067185;/no_pessoa==MéRCIA BATISTA MIRANDA ;/nu_rg==3042300;/dt_cadastro==2017-12-05 13:38:18;/dt_nascimento==1994-09-17;/st_sexo==F;/co_endereco==20;/co_contato==20","20","","0");

INSERT INTO TB_AUDITORIA VALUES("134","TB_IMAGEM","2017-12-05 13:38:18","I","","ds_caminho==mercia-batista-miranda-5a26bd6a8321f.html","20","","0");

INSERT INTO TB_AUDITORIA VALUES("135","TB_INSCRICAO","2017-12-05 13:38:18","I","","ds_pastoral==grupo jovem luz e fogo;/ds_retiro==S;/dt_cadastro==2017-12-05 13:38:18;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==5;/no_responsavel==MARISA ;/nu_tel_responsavel==61991157598;/ds_descricao==bom falar de mim e um pouco difícil pois eu sou  uma pessoa muito descontraída que  amo Deus .;/st_equipe_trabalho==N;/co_pessoa==20;/co_imagem==20","19","","0");

INSERT INTO TB_AUDITORIA VALUES("136","TB_ENDERECO","2017-12-06 00:39:45","I","","ds_endereco==Qne 2 casa 27;/ds_complemento==;/ds_bairro==Taguatinga;/nu_cep==72125020;/no_cidade==Taguatinga Norte;/sg_uf==DF","21","","0");

INSERT INTO TB_AUDITORIA VALUES("137","TB_CONTATO","2017-12-06 00:39:45","I","","nu_tel1==61984269119;/nu_tel2==;/nu_tel3==;/ds_email==v.cristinabsb.vc@gmail.com","21","","0");

INSERT INTO TB_AUDITORIA VALUES("138","TB_PESSOA","2017-12-06 00:39:45","I","","nu_cpf==07728521110;/no_pessoa==VERôNICA CRISTINA DE LIMA RIBEIRO;/nu_rg==3714612;/dt_cadastro==2017-12-06 00:39:45;/dt_nascimento==2000-09-13;/st_sexo==F;/co_endereco==21;/co_contato==21","21","","0");

INSERT INTO TB_AUDITORIA VALUES("139","TB_IMAGEM","2017-12-06 00:39:45","I","","ds_caminho==veronica-cristina-de-lima-ribeiro-5a275871ad572.JPG","21","","0");

INSERT INTO TB_AUDITORIA VALUES("140","TB_INSCRICAO","2017-12-06 00:39:45","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-06 00:39:45;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==2;/no_responsavel==MARIO ROBERTO;/nu_tel_responsavel==61983261868;/ds_descricao==Meu nome é Verônica, tenho 17 anos, não participo de nenhuma pastoral, mas todo domingo vou a missa. Sou uma pessoa muito feliz e que ama a igreja católica.;/st_equipe_trabalho==N;/co_pessoa==21;/co_imagem==21","20","","0");

INSERT INTO TB_AUDITORIA VALUES("141","TB_ENDERECO","2017-12-06 02:16:10","I","","ds_endereco==Qr 405 conjunto 25, casa 05;/ds_complemento==;/ds_bairro==samambaia;/nu_cep==72319225;/no_cidade==Brasilia;/sg_uf==DF","22","","0");

INSERT INTO TB_AUDITORIA VALUES("142","TB_CONTATO","2017-12-06 02:16:10","I","","nu_tel1==61985539668;/nu_tel2==;/nu_tel3==;/ds_email==kamilaf.silva@hotmail.com","22","","0");

INSERT INTO TB_AUDITORIA VALUES("143","TB_PESSOA","2017-12-06 02:16:10","I","","nu_cpf==06244035135;/no_pessoa==KAMILA SILVA ;/nu_rg==3433231;/dt_cadastro==2017-12-06 02:16:10;/dt_nascimento==1999-01-17;/st_sexo==F;/co_endereco==22;/co_contato==22","22","","0");

INSERT INTO TB_AUDITORIA VALUES("144","TB_IMAGEM","2017-12-06 02:16:11","I","","ds_caminho==kamila-silva-5a276f0ae6653.JPG","22","","0");

INSERT INTO TB_AUDITORIA VALUES("145","TB_INSCRICAO","2017-12-06 02:16:11","I","","ds_pastoral==GEJ DOM BOSCO;/ds_retiro==S;/dt_cadastro==2017-12-06 02:16:10;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==6;/no_responsavel==MãE ;/nu_tel_responsavel==61986130447;/ds_descricao==oie, sou tolerante a lactose e sensível à glúten então plmrdds lembrem-se disso quando forem montar o cardápio, grata. \nP.S.: ficou faltando um lugarzinho para colocar restrições alimentares e se tem alguma doença/se precisa de medicação.;/st_equipe_trabalho==N;/co_pessoa==22;/co_imagem==22","21","","0");

INSERT INTO TB_AUDITORIA VALUES("146","TB_ENDERECO","2017-12-06 23:15:25","I","","ds_endereco==Quadra 315 conjunto 13;/ds_complemento==casa 12;/ds_bairro==Samambaia;/nu_cep==72307613;/no_cidade==Brasília;/sg_uf==DF","23","","0");

INSERT INTO TB_AUDITORIA VALUES("147","TB_CONTATO","2017-12-06 23:15:25","I","","nu_tel1==6191869697;/nu_tel2==;/nu_tel3==;/ds_email==alunodiogoetb@gmail.com","23","","0");

INSERT INTO TB_AUDITORIA VALUES("148","TB_PESSOA","2017-12-06 23:15:25","I","","nu_cpf==05870295106;/no_pessoa==DIOGO DA SILVA CARDOSO;/nu_rg==;/dt_cadastro==2017-12-06 23:15:25;/dt_nascimento==1996-12-17;/st_sexo==M;/co_endereco==23;/co_contato==23","23","","0");

INSERT INTO TB_AUDITORIA VALUES("149","TB_IMAGEM","2017-12-06 23:15:26","I","","ds_caminho==diogo-da-silva-cardoso-5a28962de2ab7.jpg","23","","0");

INSERT INTO TB_AUDITORIA VALUES("150","TB_INSCRICAO","2017-12-06 23:15:26","I","","ds_pastoral==Catequese, Cerimoniários e Música;/ds_retiro==N;/dt_cadastro==2017-12-06 23:15:25;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==6;/no_responsavel==MARIA DAS GRAçAS;/nu_tel_responsavel==6134593014;/ds_descricao==Há um tempo que já estou na caminhada, além disso, sou consagrado à Santíssima Virgem e participo da Paróquia Santo Inácio de Loyola.;/st_equipe_trabalho==N;/co_pessoa==23;/co_imagem==23","22","","0");

INSERT INTO TB_AUDITORIA VALUES("151","TB_ENDERECO","2017-12-07 00:26:21","I","","ds_endereco==Qnp 32 conj S casa;/ds_complemento==01;/ds_bairro==Psul;/nu_cep==72236219;/no_cidade==Ceilândia;/sg_uf==DF","24","","0");

INSERT INTO TB_AUDITORIA VALUES("152","TB_CONTATO","2017-12-07 00:26:21","I","","nu_tel1==61992458959;/nu_tel2==6133778341;/nu_tel3==;/ds_email==cassiorodriguescastro08@gmail.com","24","","0");

INSERT INTO TB_AUDITORIA VALUES("153","TB_PESSOA","2017-12-07 00:26:21","I","","nu_cpf==06411059160;/no_pessoa==CáSSIO RODRIGUES CASTRO;/nu_rg==;/dt_cadastro==2017-12-07 00:26:21;/dt_nascimento==1997-03-16;/st_sexo==M;/co_endereco==24;/co_contato==24","24","","0");

INSERT INTO TB_AUDITORIA VALUES("154","TB_IMAGEM","2017-12-07 00:26:21","I","","ds_caminho==cassio-rodrigues-castro-5a28a6cd3d36c.jpg","24","","0");

INSERT INTO TB_AUDITORIA VALUES("155","TB_INSCRICAO","2017-12-07 00:26:21","I","","ds_pastoral==Assunção;/ds_retiro==S;/dt_cadastro==2017-12-07 00:26:21;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==6;/no_responsavel==BEATRIZ;/nu_tel_responsavel==61993116666;/ds_descricao==Sou bastante amigo e faço amizade rápido;/st_equipe_trabalho==N;/co_pessoa==24;/co_imagem==24","23","","0");

INSERT INTO TB_AUDITORIA VALUES("156","TB_PAGAMENTO","2017-12-07 00:27:32","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==23","19","","0");

INSERT INTO TB_AUDITORIA VALUES("157","TB_PARCELAMENTO","2017-12-07 00:27:32","I","","co_pagamento==19;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-07","20","","0");

INSERT INTO TB_AUDITORIA VALUES("158","TB_PAGAMENTO","2017-12-07 03:59:41","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==19","20","","0");

INSERT INTO TB_AUDITORIA VALUES("159","TB_PARCELAMENTO","2017-12-07 03:59:41","I","","co_pagamento==20;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-07","21","","0");

INSERT INTO TB_AUDITORIA VALUES("160","TB_PAGAMENTO","2017-12-07 03:59:41","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==20","21","","0");

INSERT INTO TB_AUDITORIA VALUES("161","TB_PARCELAMENTO","2017-12-07 03:59:41","I","","co_pagamento==21;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-07","22","","0");

INSERT INTO TB_AUDITORIA VALUES("162","TB_PAGAMENTO","2017-12-07 03:59:41","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==21","22","","0");

INSERT INTO TB_AUDITORIA VALUES("163","TB_PARCELAMENTO","2017-12-07 03:59:41","I","","co_pagamento==22;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-07","23","","0");

INSERT INTO TB_AUDITORIA VALUES("164","TB_PAGAMENTO","2017-12-07 03:59:41","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==22","23","","0");

INSERT INTO TB_AUDITORIA VALUES("165","TB_PARCELAMENTO","2017-12-07 03:59:41","I","","co_pagamento==23;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-07","24","","0");

INSERT INTO TB_AUDITORIA VALUES("166","TB_ENDERECO","2017-12-07 17:42:40","I","","ds_endereco==QR 407 conj 11 casa 20;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","25","","0");

INSERT INTO TB_AUDITORIA VALUES("167","TB_CONTATO","2017-12-07 17:42:40","I","","nu_tel1==61986725701;/nu_tel2==61986521612;/nu_tel3==;/ds_email==mendescatherine44@gmail.com","25","","0");

INSERT INTO TB_AUDITORIA VALUES("168","TB_PESSOA","2017-12-07 17:42:40","I","","nu_cpf==07025713180;/no_pessoa==CATHERINE MENDES DE JESUS;/nu_rg==3876679;/dt_cadastro==2017-12-07 17:42:39;/dt_nascimento==2003-12-02;/st_sexo==F;/co_endereco==25;/co_contato==25","25","","0");

INSERT INTO TB_AUDITORIA VALUES("169","TB_IMAGEM","2017-12-07 17:42:40","I","","ds_caminho==catherine-mendes-de-jesus-5a2999b0286fe.jpg","25","","0");

INSERT INTO TB_AUDITORIA VALUES("170","TB_INSCRICAO","2017-12-07 17:42:40","I","","ds_pastoral==Ministério de Coroinhas e Acólitos de São Tarcísio, Ministério Jovem (RCC);/ds_retiro==S;/dt_cadastro==2017-12-07 17:42:39;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==EDI ;/nu_tel_responsavel==61986521612;/ds_descricao==Sou uma garota que não faz muito tempo q se converteu por inteiro, mais ou menos 1 ano.\nFui pro meu 1° retiro faz pouco tempo, e foi uma graça, estou querendo ir para esse para começar o ano com o pé direito mas graça de Deus;/st_equipe_trabalho==N;/co_pessoa==25;/co_imagem==25","24","","0");

INSERT INTO TB_AUDITORIA VALUES("171","TB_ENDERECO","2017-12-07 20:21:09","I","","ds_endereco==QNP 36 Conjunto H;/ds_complemento==Casa 39;/ds_bairro==Setor P.Sul;/nu_cep==72236608;/no_cidade==Ceilândia-DF;/sg_uf==DF","26","","0");

INSERT INTO TB_AUDITORIA VALUES("172","TB_CONTATO","2017-12-07 20:21:09","I","","nu_tel1==61995021840;/nu_tel2==;/nu_tel3==;/ds_email==tominagaiv@gmail.com","26","","0");

INSERT INTO TB_AUDITORIA VALUES("173","TB_PESSOA","2017-12-07 20:21:09","I","","nu_cpf==06820939124;/no_pessoa==EDUARDO PIRES TOMINAGA;/nu_rg==3734569;/dt_cadastro==2017-12-07 20:21:09;/dt_nascimento==2000-10-17;/st_sexo==M;/co_endereco==26;/co_contato==26","26","","0");

INSERT INTO TB_AUDITORIA VALUES("174","TB_IMAGEM","2017-12-07 20:21:09","I","","ds_caminho==eduardo-pires-tominaga-5a29bed5a0225.jpg","26","","0");

INSERT INTO TB_AUDITORIA VALUES("175","TB_INSCRICAO","2017-12-07 20:21:09","I","","ds_pastoral==Grupo de Coroinhas, Grupo Jovem Adonai;/ds_retiro==S;/dt_cadastro==2017-12-07 20:21:09;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==LEILA TOMINAGA;/nu_tel_responsavel==61982512602;/ds_descricao==Filho dos Tios Tominaga, Irmão da Tominaga. \n##########  Saúde ###########\n- Alergia a temperos industriais(Sazon, Ajinomoto, Knorr, Maggi e etc).\n- Sangue tipo B+;/st_equipe_trabalho==N;/co_pessoa==26;/co_imagem==26","25","","0");

INSERT INTO TB_AUDITORIA VALUES("176","TB_PAGAMENTO","2017-12-07 20:22:07","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==25","24","","0");

INSERT INTO TB_AUDITORIA VALUES("177","TB_PARCELAMENTO","2017-12-07 20:22:07","I","","co_pagamento==24;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-07","25","","0");

INSERT INTO TB_AUDITORIA VALUES("178","TB_PAGAMENTO","2017-12-07 20:24:35","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==24","25","","0");

INSERT INTO TB_AUDITORIA VALUES("179","TB_PARCELAMENTO","2017-12-07 20:24:35","I","","co_pagamento==25;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-07","26","","0");

INSERT INTO TB_AUDITORIA VALUES("180","TB_ENDERECO","2017-12-08 09:28:35","I","","ds_endereco==qr 210;/ds_complemento==24 cs 17;/ds_bairro==;/nu_cep==72316225;/no_cidade==Brasilia;/sg_uf==DF","27","","0");

INSERT INTO TB_AUDITORIA VALUES("181","TB_CONTATO","2017-12-08 09:28:35","I","","nu_tel1==6199567013;/nu_tel2==6199567013;/nu_tel3==;/ds_email==thaynaratonhaz@gmail.com","27","","0");

INSERT INTO TB_AUDITORIA VALUES("182","TB_PESSOA","2017-12-08 09:28:35","I","","nu_cpf==05241966137;/no_pessoa==THAINATA TONHA DE SANTANA;/nu_rg==3211173;/dt_cadastro==2017-12-08 09:28:35;/dt_nascimento==1999-03-22;/st_sexo==F;/co_endereco==27;/co_contato==27","27","","0");

INSERT INTO TB_AUDITORIA VALUES("183","TB_IMAGEM","2017-12-08 09:28:36","I","","ds_caminho==thainata-tonha-de-santana-5a2a7763a5979.jpg","27","","0");

INSERT INTO TB_AUDITORIA VALUES("184","TB_INSCRICAO","2017-12-08 09:28:36","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-08 09:28:35;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==ANDERSON JOAQUIM DE SANTANA;/nu_tel_responsavel==6132018084;/ds_descricao==Sou uma pessoa pouco comunicativa com quem não conheço. Odeio falsidade. Estou tá igreja tem um tempinho mas dei uma afastada e estou querendo voltar.;/st_equipe_trabalho==N;/co_pessoa==27;/co_imagem==27","26","","0");

INSERT INTO TB_AUDITORIA VALUES("185","TB_PAGAMENTO","2017-12-08 09:29:45","I","","nu_total==160.00;/nu_parcelas==1;/co_inscricao==26","26","","0");

INSERT INTO TB_AUDITORIA VALUES("186","TB_PARCELAMENTO","2017-12-08 09:29:45","I","","co_pagamento==26;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-08","27","","0");

INSERT INTO TB_AUDITORIA VALUES("187","TB_ACESSO","2017-12-08 18:37:47","I","","ds_session_id==8a5273b5c36a57b29834599f7a1da6c1;/co_usuario==1;/dt_inicio_acesso==2017-12-08;/dt_fim_acesso==2017-12-08","2","","0");

INSERT INTO TB_AUDITORIA VALUES("188","TB_ACESSO","2017-12-08 22:52:46","I","","ds_session_id==8e70ce5accfa2ea4bb503b4b29e410be;/co_usuario==1;/dt_inicio_acesso==2017-12-08;/dt_fim_acesso==2017-12-08","3","","0");

INSERT INTO TB_AUDITORIA VALUES("189","TB_ENDERECO","2017-12-08 23:06:26","I","","ds_endereco==Qn 211 conjunto 01 casa 35;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==;/no_cidade==Brasilia;/sg_uf==DF","28","","0");

INSERT INTO TB_AUDITORIA VALUES("190","TB_CONTATO","2017-12-08 23:06:26","I","","nu_tel1==61995121814;/nu_tel2==;/nu_tel3==;/ds_email==Raulmiran@hotmail.com","28","","0");

INSERT INTO TB_AUDITORIA VALUES("191","TB_PESSOA","2017-12-08 23:06:26","I","","nu_cpf==06597113110;/no_pessoa==RAUL DIA MIRANDA CARDOSO;/nu_rg==3374856;/dt_cadastro==2017-12-08 23:06:26;/dt_nascimento==2001-04-27;/st_sexo==M;/co_endereco==28;/co_contato==28","28","","0");

INSERT INTO TB_AUDITORIA VALUES("192","TB_IMAGEM","2017-12-08 23:06:27","I","","ds_caminho==raul-dia-miranda-cardoso-5a2b37130d776.jpg","28","","0");

INSERT INTO TB_AUDITORIA VALUES("193","TB_INSCRICAO","2017-12-08 23:06:27","I","","ds_pastoral==Gej;/ds_retiro==S;/dt_cadastro==2017-12-08 23:06:26;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==MãE ;/nu_tel_responsavel==6133598257;/ds_descricao==Mmmmm;/st_equipe_trabalho==N;/co_pessoa==28;/co_imagem==28","27","","0");

INSERT INTO TB_AUDITORIA VALUES("194","TB_PAGAMENTO","2017-12-08 23:06:36","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==27","27","","0");

INSERT INTO TB_AUDITORIA VALUES("195","TB_PARCELAMENTO","2017-12-08 23:06:36","I","","co_pagamento==27;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-08","28","","0");

INSERT INTO TB_AUDITORIA VALUES("196","TB_FUNCIONALIDADE","2017-12-08 23:07:14","I","","no_funcionalidade==Listar Inscrição;/ds_rota==admin/Inscricao/ListarInscricao","12","Master","1");

INSERT INTO TB_AUDITORIA VALUES("197","TB_PERFIL_FUNCIONALIDADE","2017-12-08 23:07:34","D","co_perfil_funcionalidade==2;/co_perfil==2;/co_funcionalidade==5","","2","Master","1");

INSERT INTO TB_AUDITORIA VALUES("198","TB_PERFIL_FUNCIONALIDADE","2017-12-08 23:07:34","I","","co_perfil==2;/co_funcionalidade==5","5","Master","1");

INSERT INTO TB_AUDITORIA VALUES("199","TB_PERFIL_FUNCIONALIDADE","2017-12-08 23:07:34","I","","co_perfil==2;/co_funcionalidade==6","6","Master","1");

INSERT INTO TB_AUDITORIA VALUES("200","TB_PERFIL_FUNCIONALIDADE","2017-12-08 23:07:34","I","","co_perfil==2;/co_funcionalidade==12","7","Master","1");

INSERT INTO TB_AUDITORIA VALUES("201","TB_PERFIL_FUNCIONALIDADE","2017-12-08 23:08:08","D","","","","Master","1");

INSERT INTO TB_AUDITORIA VALUES("202","TB_PERFIL_FUNCIONALIDADE","2017-12-08 23:08:08","I","","co_perfil==4;/co_funcionalidade==6","8","Master","1");

INSERT INTO TB_AUDITORIA VALUES("203","TB_PERFIL_FUNCIONALIDADE","2017-12-08 23:08:08","I","","co_perfil==4;/co_funcionalidade==12","9","Master","1");

INSERT INTO TB_AUDITORIA VALUES("204","TB_ENDERECO","2017-12-08 23:24:28","I","","ds_endereco==Qr205 conjunto 2 casa 18;/ds_complemento==Próximo ao batalhão;/ds_bairro==Norte;/nu_cep==72341202;/no_cidade==Samambaia;/sg_uf==DF","29","","0");

INSERT INTO TB_AUDITORIA VALUES("205","TB_CONTATO","2017-12-08 23:24:28","I","","nu_tel1==61984640608;/nu_tel2==61992953159;/nu_tel3==;/ds_email==Ericastephanie2015@gmail.com","29","","0");

INSERT INTO TB_AUDITORIA VALUES("206","TB_PESSOA","2017-12-08 23:24:28","I","","nu_cpf==05257971143;/no_pessoa==ÉRICA STEPHANIE DE SOUSA CARVALHO;/nu_rg==3737683;/dt_cadastro==2017-12-08 23:24:28;/dt_nascimento==2000-12-02;/st_sexo==F;/co_endereco==29;/co_contato==29","29","","0");

INSERT INTO TB_AUDITORIA VALUES("207","TB_IMAGEM","2017-12-08 23:24:29","I","","ds_caminho==erica-stephanie-de-sousa-carvalho-5a2b3b4ca719f.jpg","29","","0");

INSERT INTO TB_AUDITORIA VALUES("208","TB_INSCRICAO","2017-12-08 23:24:29","I","","ds_pastoral==Gej dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-08 23:24:28;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MãE;/nu_tel_responsavel==6133571919;/ds_descricao==Sou tranquila,eu gosto de fazer as minhas coisas na hora certa;/st_equipe_trabalho==N;/co_pessoa==29;/co_imagem==29","28","","0");

INSERT INTO TB_AUDITORIA VALUES("209","TB_PAGAMENTO","2017-12-08 23:24:38","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==28","28","","0");

INSERT INTO TB_AUDITORIA VALUES("210","TB_PARCELAMENTO","2017-12-08 23:24:38","I","","co_pagamento==28;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-08","29","","0");

INSERT INTO TB_AUDITORIA VALUES("211","TB_ACESSO","2017-12-08 23:24:42","I","","ds_session_id==4b280095ed8dae2678d8283ad1a59fbf;/co_usuario==1;/dt_inicio_acesso==2017-12-08;/dt_fim_acesso==2017-12-08","4","","0");

INSERT INTO TB_AUDITORIA VALUES("212","TB_PAGAMENTO","2017-12-08 23:25:52","U","co_pagamento==28;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==28","nu_total==150.00;/nu_parcelas==1","28","","0");

INSERT INTO TB_AUDITORIA VALUES("213","TB_PARCELAMENTO","2017-12-08 23:25:52","D","co_parcelamento==17;/nu_parcela==1;/nu_valor_parcela==160.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-05;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==1;/co_tipo_pagamento==2","","17","","0");

INSERT INTO TB_AUDITORIA VALUES("214","TB_PARCELAMENTO","2017-12-08 23:25:52","I","","co_pagamento==1;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-08","30","","0");

INSERT INTO TB_AUDITORIA VALUES("215","TB_ACESSO","2017-12-09 00:01:12","I","","ds_session_id==d3ec0796d6df257731caf5622077d735;/co_usuario==1;/dt_inicio_acesso==2017-12-09;/dt_fim_acesso==2017-12-09","5","","0");

INSERT INTO TB_AUDITORIA VALUES("216","TB_ACESSO","2017-12-09 07:19:53","I","","ds_session_id==3c955d424dd9bc34bb257c603abedd24;/co_usuario==1;/dt_inicio_acesso==2017-12-09;/dt_fim_acesso==2017-12-09","6","","0");

INSERT INTO TB_AUDITORIA VALUES("217","TB_ACESSO","2017-12-09 07:39:10","I","","ds_session_id==ae9d63f7e27d92f72b5d011e531b2665;/co_usuario==1;/dt_inicio_acesso==2017-12-09;/dt_fim_acesso==2017-12-09","7","","0");

INSERT INTO TB_AUDITORIA VALUES("218","TB_ENDERECO","2017-12-09 09:33:32","I","","ds_endereco==Qr 403 conjunto 16;/ds_complemento==Casa 17;/ds_bairro==Samambaia Norte;/nu_cep==72319117;/no_cidade==Samambaia Norte;/sg_uf==DF","30","","0");

INSERT INTO TB_AUDITORIA VALUES("219","TB_CONTATO","2017-12-09 09:33:32","I","","nu_tel1==61993151297;/nu_tel2==;/nu_tel3==;/ds_email==lucrece.neri@hotmail.com","30","","0");

INSERT INTO TB_AUDITORIA VALUES("220","TB_PESSOA","2017-12-09 09:33:32","I","","nu_cpf==04898784151;/no_pessoa==LUCRECE NERI PORTELA;/nu_rg==3239132;/dt_cadastro==2017-12-09 09:33:32;/dt_nascimento==1996-11-06;/st_sexo==F;/co_endereco==30;/co_contato==30","30","","0");

INSERT INTO TB_AUDITORIA VALUES("221","TB_IMAGEM","2017-12-09 09:33:32","I","","ds_caminho==lucrece-neri-portela-5a2bca0cec4f3.png","30","","0");

INSERT INTO TB_AUDITORIA VALUES("222","TB_INSCRICAO","2017-12-09 09:33:32","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-09 09:33:32;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LUCILENE AGUIAR;/nu_tel_responsavel==6195990533;/ds_descricao==Feliz...;/st_equipe_trabalho==N;/co_pessoa==30;/co_imagem==30","29","","0");

INSERT INTO TB_AUDITORIA VALUES("223","TB_PAGAMENTO","2017-12-09 09:36:34","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==29","29","","0");

INSERT INTO TB_AUDITORIA VALUES("224","TB_PARCELAMENTO","2017-12-09 09:36:34","I","","co_pagamento==29;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-09","31","","0");

INSERT INTO TB_AUDITORIA VALUES("225","TB_ACESSO","2017-12-09 12:37:13","I","","ds_session_id==96547df9386851ad5cce78f3b0d9dea0;/co_usuario==1;/dt_inicio_acesso==2017-12-09;/dt_fim_acesso==2017-12-09","8","","0");

INSERT INTO TB_AUDITORIA VALUES("226","TB_ENDERECO","2017-12-09 13:12:19","I","","ds_endereco==Qr 403 conjunto 16;/ds_complemento==Casa 17;/ds_bairro==Samambaia Norte;/nu_cep==72319911;/no_cidade==Samambaia Norte;/sg_uf==DF","31","","0");

INSERT INTO TB_AUDITORIA VALUES("227","TB_CONTATO","2017-12-09 13:12:19","I","","nu_tel1==61993151297;/nu_tel2==;/nu_tel3==;/ds_email==lucrece.neri@hotmail.com","31","","0");

INSERT INTO TB_AUDITORIA VALUES("228","TB_IMAGEM","2017-12-09 13:12:19","I","","ds_caminho==","31","","0");

INSERT INTO TB_AUDITORIA VALUES("229","TB_PESSOA","2017-12-09 13:12:19","I","","nu_cpf==04898784151;/no_pessoa==LUCRECE NERI PORTELA;/nu_rg==3239132;/dt_cadastro==2017-12-09;/dt_nascimento==1996-11-06;/st_sexo==F;/co_endereco==31;/co_contato==31","31","","0");

INSERT INTO TB_AUDITORIA VALUES("230","TB_USUARIO","2017-12-09 13:12:19","I","","ds_code==VEhWamNtVmpaVEEyTVRFPQ==;/ds_senha==Lucrece0611;/dt_cadastro==2017-12-09;/co_imagem==31;/co_pessoa==31","2","","0");

INSERT INTO TB_AUDITORIA VALUES("231","TB_USUARIO_PERFIL","2017-12-09 13:12:19","I","","co_usuario==2;/co_perfil==3","2","","0");

INSERT INTO TB_AUDITORIA VALUES("232","TB_ACESSO","2017-12-09 13:13:07","I","","ds_session_id==18be51f348d156405cff895cd682ea40;/co_usuario==1;/dt_inicio_acesso==2017-12-09;/dt_fim_acesso==2017-12-09","9","","0");

INSERT INTO TB_AUDITORIA VALUES("233","TB_CONTATO","2017-12-09 13:13:42","U","co_contato==31;/nu_tel1==61993151297;/nu_tel2==;/nu_tel3==;/ds_email==lucrece.neri@hotmail.com","nu_tel1==61993151297;/nu_tel2==;/nu_tel3==;/ds_email==lucrece.neri@hotmail.com","31","Master","1");

INSERT INTO TB_AUDITORIA VALUES("234","TB_ENDERECO","2017-12-09 13:13:42","U","co_endereco==31;/ds_endereco==Qr 403 conjunto 16;/ds_complemento==Casa 17;/ds_bairro==Samambaia Norte;/nu_cep==72319911;/no_cidade==Samambaia Norte;/sg_uf==DF","ds_endereco==Qr 403 conjunto 16;/ds_complemento==Casa 17;/ds_bairro==Samambaia Norte;/nu_cep==72319911;/no_cidade==Samambaia Norte;/sg_uf==DF","31","Master","1");

INSERT INTO TB_AUDITORIA VALUES("235","TB_PESSOA","2017-12-09 13:13:42","U","co_pessoa==31;/nu_cpf==04898784151;/no_pessoa==LUCRECE NERI PORTELA;/nu_rg==3239132;/dt_cadastro==2017-12-09 00:00:00;/dt_nascimento==1996-11-06;/st_sexo==F;/co_contato==31;/co_endereco==31","nu_cpf==04898784151;/no_pessoa==LUCRECE NERI PORTELA;/nu_rg==3239132;/dt_cadastro==2017-12-09 13:13:40;/dt_nascimento==1996-11-06;/st_sexo==F","31","Master","1");

INSERT INTO TB_AUDITORIA VALUES("236","TB_USUARIO","2017-12-09 13:13:42","U","co_usuario==2;/ds_senha==Lucrece0611;/ds_code==VEhWamNtVmpaVEEyTVRFPQ==;/st_status==I;/dt_cadastro==2017-12-09 00:00:00;/co_imagem==31;/co_pessoa==31","ds_code==VEhWamNtVmpaVEEyTVRFPQ==;/ds_senha==Lucrece0611;/st_status==A","2","Master","1");

INSERT INTO TB_AUDITORIA VALUES("237","TB_USUARIO_PERFIL","2017-12-09 13:13:42","D","co_usuario_perfil==2;/co_usuario==2;/co_perfil==3","","2","Master","1");

INSERT INTO TB_AUDITORIA VALUES("238","TB_USUARIO_PERFIL","2017-12-09 13:13:42","I","","co_usuario==2;/co_perfil==3","3","Master","1");

INSERT INTO TB_AUDITORIA VALUES("239","TB_USUARIO_PERFIL","2017-12-09 13:13:42","I","","co_usuario==2;/co_perfil==4","4","Master","1");

INSERT INTO TB_AUDITORIA VALUES("240","TB_USUARIO_PERFIL","2017-12-09 13:13:42","I","","co_usuario==2;/co_perfil==3","5","Master","1");

INSERT INTO TB_AUDITORIA VALUES("241","TB_ACESSO","2017-12-09 13:15:04","I","","ds_session_id==c21487907376c9fbbdbf708ac5ac4f31;/co_usuario==2;/dt_inicio_acesso==2017-12-09;/dt_fim_acesso==2017-12-09","10","","0");

INSERT INTO TB_AUDITORIA VALUES("242","TB_ENDERECO","2017-12-09 15:40:18","I","","ds_endereco==QUADRA QNP 15 CONJUNTO S;/ds_complemento==33;/ds_bairro==P.norte;/nu_cep==72241619;/no_cidade==BRASÍLIA;/sg_uf==DF","32","","0");

INSERT INTO TB_AUDITORIA VALUES("243","TB_CONTATO","2017-12-09 15:40:18","I","","nu_tel1==61985667861;/nu_tel2==61999043516;/nu_tel3==;/ds_email==pedroaugustopacheco12@gmail.com","32","","0");

INSERT INTO TB_AUDITORIA VALUES("244","TB_PESSOA","2017-12-09 15:40:18","I","","nu_cpf==05063803199;/no_pessoa==PEDRO AUGUSTO PACHECO;/nu_rg==3167740;/dt_cadastro==2017-12-09 15:40:18;/dt_nascimento==2000-08-25;/st_sexo==M;/co_endereco==32;/co_contato==32","32","","0");

INSERT INTO TB_AUDITORIA VALUES("245","TB_IMAGEM","2017-12-09 15:40:19","I","","ds_caminho==pedro-augusto-pacheco-5a2c20026bda4.png","32","","0");

INSERT INTO TB_AUDITORIA VALUES("246","TB_INSCRICAO","2017-12-09 15:40:19","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-09 15:40:18;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==GESLâNIA ;/nu_tel_responsavel==6199043516;/ds_descricao==Fui convidado por um membro do grupo e  decidi participar para ouvir sobre a palavra do senhor  e conhecer o pessoal da igreja com o intuito de complemento ao grupo;/st_equipe_trabalho==N;/co_pessoa==32;/co_imagem==32","30","","0");

INSERT INTO TB_AUDITORIA VALUES("247","TB_PAGAMENTO","2017-12-09 15:40:35","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==30","30","","0");

INSERT INTO TB_AUDITORIA VALUES("248","TB_PARCELAMENTO","2017-12-09 15:40:35","I","","co_pagamento==30;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-09","32","","0");

INSERT INTO TB_AUDITORIA VALUES("249","TB_ENDERECO","2017-12-09 16:52:51","I","","ds_endereco==Rua 4c chácara 2 lote 23A;/ds_complemento==;/ds_bairro==Vicente pires;/nu_cep==72001605;/no_cidade==Brasilia;/sg_uf==DF","33","","0");

INSERT INTO TB_AUDITORIA VALUES("250","TB_CONTATO","2017-12-09 16:52:51","I","","nu_tel1==61996979071;/nu_tel2==6135972532;/nu_tel3==;/ds_email==Gsouzat28@gmail.com","33","","0");

INSERT INTO TB_AUDITORIA VALUES("251","TB_PESSOA","2017-12-09 16:52:51","I","","nu_cpf==07981379164;/no_pessoa==GABRIELLA LIMA TONHA;/nu_rg==536533829;/dt_cadastro==2017-12-09 16:52:51;/dt_nascimento==2002-05-25;/st_sexo==F;/co_endereco==33;/co_contato==33","33","","0");

INSERT INTO TB_AUDITORIA VALUES("252","TB_IMAGEM","2017-12-09 16:52:51","I","","ds_caminho==gabriella-lima-tonha-5a2c31037a294.jpg","33","","0");

INSERT INTO TB_AUDITORIA VALUES("253","TB_INSCRICAO","2017-12-09 16:52:51","I","","ds_pastoral==Guardiãs;/ds_retiro==S;/dt_cadastro==2017-12-09 16:52:51;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==5;/no_responsavel==LUCIENE ;/nu_tel_responsavel==61996979071;/ds_descricao==Sou uma pessoa tranquila,amo as coisas de igreja, gosto de fazer novas amizades;/st_equipe_trabalho==N;/co_pessoa==33;/co_imagem==33","31","","0");

INSERT INTO TB_AUDITORIA VALUES("254","TB_PAGAMENTO","2017-12-10 00:55:38","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==31","31","","0");

INSERT INTO TB_AUDITORIA VALUES("255","TB_PARCELAMENTO","2017-12-10 00:55:38","I","","co_pagamento==31;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-10","33","","0");

INSERT INTO TB_AUDITORIA VALUES("256","TB_ACESSO","2017-12-10 21:22:27","I","","ds_session_id==896a80fd1522e479d2e0fd4d592a6188;/co_usuario==2;/dt_inicio_acesso==2017-12-10;/dt_fim_acesso==2017-12-10","11","","0");

INSERT INTO TB_AUDITORIA VALUES("257","TB_ENDERECO","2017-12-10 21:28:08","I","","ds_endereco==Qn 211 conjunto 01 casa 35;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==72343051;/no_cidade==Brasilia;/sg_uf==DF","34","","0");

INSERT INTO TB_AUDITORIA VALUES("258","TB_CONTATO","2017-12-10 21:28:08","I","","nu_tel1==6195121814;/nu_tel2==;/nu_tel3==;/ds_email==Rauldmc52@gmail.com","34","","0");

INSERT INTO TB_AUDITORIA VALUES("259","TB_IMAGEM","2017-12-10 21:28:08","I","","ds_caminho==raul-dias-miranda-cardoso-5a2dc30837843.jpg","34","","0");

INSERT INTO TB_AUDITORIA VALUES("260","TB_PESSOA","2017-12-10 21:28:08","I","","nu_cpf==06597113110;/no_pessoa==RAUL DIAS MIRANDA CARDOSO;/nu_rg==3374856;/dt_cadastro==2017-12-10;/dt_nascimento==2001-04-27;/st_sexo==M;/co_endereco==34;/co_contato==34","34","","0");

INSERT INTO TB_AUDITORIA VALUES("261","TB_USUARIO","2017-12-10 21:28:08","I","","ds_code==Y21GMWJDb3FNVEl6;/ds_senha==raul**123;/dt_cadastro==2017-12-10;/co_imagem==34;/co_pessoa==34","3","","0");

INSERT INTO TB_AUDITORIA VALUES("262","TB_USUARIO_PERFIL","2017-12-10 21:28:08","I","","co_usuario==3;/co_perfil==3","6","","0");

INSERT INTO TB_AUDITORIA VALUES("263","TB_ACESSO","2017-12-10 22:03:07","I","","ds_session_id==cb7301464af28e55f1636c990fc4bf08;/co_usuario==1;/dt_inicio_acesso==2017-12-10;/dt_fim_acesso==2017-12-10","12","","0");

INSERT INTO TB_AUDITORIA VALUES("264","TB_CONTATO","2017-12-10 22:04:08","U","co_contato==34;/nu_tel1==6195121814;/nu_tel2==;/nu_tel3==;/ds_email==Rauldmc52@gmail.com","nu_tel1==6195121814;/nu_tel2==;/nu_tel3==;/ds_email==Rauldmc52@gmail.com","34","Master","1");

INSERT INTO TB_AUDITORIA VALUES("265","TB_ENDERECO","2017-12-10 22:04:08","U","co_endereco==34;/ds_endereco==Qn 211 conjunto 01 casa 35;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==72343051;/no_cidade==Brasilia;/sg_uf==DF","ds_endereco==Qn 211 conjunto 01 casa 35;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==72343051;/no_cidade==Brasilia;/sg_uf==DF","34","Master","1");

INSERT INTO TB_AUDITORIA VALUES("266","TB_PESSOA","2017-12-10 22:04:09","U","co_pessoa==34;/nu_cpf==06597113110;/no_pessoa==RAUL DIAS MIRANDA CARDOSO;/nu_rg==3374856;/dt_cadastro==2017-12-10 00:00:00;/dt_nascimento==2001-04-27;/st_sexo==M;/co_contato==34;/co_endereco==34","nu_cpf==06597113110;/no_pessoa==RAUL DIAS MIRANDA CARDOSO;/nu_rg==3374856;/dt_cadastro==2017-12-10 22:04:08;/dt_nascimento==2001-04-27;/st_sexo==M","34","Master","1");

INSERT INTO TB_AUDITORIA VALUES("267","TB_USUARIO","2017-12-10 22:04:09","U","co_usuario==3;/ds_senha==raul**123;/ds_code==Y21GMWJDb3FNVEl6;/st_status==I;/dt_cadastro==2017-12-10 00:00:00;/co_imagem==34;/co_pessoa==34","ds_code==Y21GMWJDb3FNVEl6;/ds_senha==raul**123;/st_status==A","3","Master","1");

INSERT INTO TB_AUDITORIA VALUES("268","TB_USUARIO_PERFIL","2017-12-10 22:04:09","D","co_usuario_perfil==6;/co_usuario==3;/co_perfil==3","","6","Master","1");

INSERT INTO TB_AUDITORIA VALUES("269","TB_USUARIO_PERFIL","2017-12-10 22:04:09","I","","co_usuario==3;/co_perfil==3","7","Master","1");

INSERT INTO TB_AUDITORIA VALUES("270","TB_USUARIO_PERFIL","2017-12-10 22:04:09","I","","co_usuario==3;/co_perfil==4","8","Master","1");

INSERT INTO TB_AUDITORIA VALUES("271","TB_USUARIO_PERFIL","2017-12-10 22:04:09","I","","co_usuario==3;/co_perfil==3","9","Master","1");

INSERT INTO TB_AUDITORIA VALUES("272","TB_ACESSO","2017-12-10 22:05:37","I","","ds_session_id==734f42e08668cdf92c7267cac77f6f32;/co_usuario==3;/dt_inicio_acesso==2017-12-10;/dt_fim_acesso==2017-12-10","13","","0");

INSERT INTO TB_AUDITORIA VALUES("273","TB_ENDERECO","2017-12-10 22:49:28","I","","ds_endereco==QR 405 Conjunto 21 Casa 26;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72319221;/no_cidade==Brasília;/sg_uf==DF","35","","0");

INSERT INTO TB_AUDITORIA VALUES("274","TB_CONTATO","2017-12-10 22:49:28","I","","nu_tel1==61991984370;/nu_tel2==;/nu_tel3==;/ds_email==lukka_bessa@hotmail.com","35","","0");

INSERT INTO TB_AUDITORIA VALUES("275","TB_PESSOA","2017-12-10 22:49:28","I","","nu_cpf==03874430103;/no_pessoa==LUANA RIBEIRO BESSA;/nu_rg==2944508;/dt_cadastro==2017-12-10 22:49:28;/dt_nascimento==1993-08-17;/st_sexo==F;/co_endereco==35;/co_contato==35","35","","0");

INSERT INTO TB_AUDITORIA VALUES("276","TB_IMAGEM","2017-12-10 22:49:29","I","","ds_caminho==luana-ribeiro-bessa-5a2dd618a02ec.jpg","35","","0");

INSERT INTO TB_AUDITORIA VALUES("277","TB_INSCRICAO","2017-12-10 22:49:29","I","","ds_pastoral==GEJ Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-10 22:49:28;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LEDA;/nu_tel_responsavel==61992724933;/ds_descricao==Ser aquilo que Deus quer fazer de mim!;/st_equipe_trabalho==N;/co_pessoa==35;/co_imagem==35","32","","0");

INSERT INTO TB_AUDITORIA VALUES("278","TB_PAGAMENTO","2017-12-10 22:50:00","I","","nu_total==160.00;/nu_parcelas==1;/co_inscricao==32","32","","0");

INSERT INTO TB_AUDITORIA VALUES("279","TB_PARCELAMENTO","2017-12-10 22:50:01","I","","co_pagamento==32;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-10","34","","0");

INSERT INTO TB_AUDITORIA VALUES("280","TB_ENDERECO","2017-12-10 22:54:22","I","","ds_endereco==QR 405 Conjunto 21 Casa 26;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72319221;/no_cidade==Brasília;/sg_uf==DF","36","","0");

INSERT INTO TB_AUDITORIA VALUES("281","TB_CONTATO","2017-12-10 22:54:22","I","","nu_tel1==61991984370;/nu_tel2==;/nu_tel3==;/ds_email==lukka_bessa@hotmail.com","36","","0");

INSERT INTO TB_AUDITORIA VALUES("282","TB_IMAGEM","2017-12-10 22:54:22","I","","ds_caminho==luana-ribeiro-bessa-5a2dd73e1d6dd.jpg","36","","0");

INSERT INTO TB_AUDITORIA VALUES("283","TB_PESSOA","2017-12-10 22:54:22","I","","nu_cpf==03874430103;/no_pessoa==LUANA RIBEIRO BESSA;/nu_rg==2944508;/dt_cadastro==2017-12-10;/dt_nascimento==1993-08-17;/st_sexo==F;/co_endereco==36;/co_contato==36","36","","0");

INSERT INTO TB_AUDITORIA VALUES("284","TB_USUARIO","2017-12-10 22:54:22","I","","ds_code==YzJGdWRHOXpaR1ZqWVd4allXcGxZVzV6YW5CSlNURXlNdz09;/ds_senha==santosdecalcajeansjpII123;/dt_cadastro==2017-12-10;/co_imagem==36;/co_pessoa==36","4","","0");

INSERT INTO TB_AUDITORIA VALUES("285","TB_USUARIO_PERFIL","2017-12-10 22:54:22","I","","co_usuario==4;/co_perfil==3","10","","0");

INSERT INTO TB_AUDITORIA VALUES("286","TB_ACESSO","2017-12-11 10:19:59","I","","ds_session_id==9021fe3a0ea58ad28fb52a94bb74459d;/co_usuario==1;/dt_inicio_acesso==2017-12-11;/dt_fim_acesso==2017-12-11","14","","0");

INSERT INTO TB_AUDITORIA VALUES("287","TB_CONTATO","2017-12-11 10:20:32","U","co_contato==36;/nu_tel1==61991984370;/nu_tel2==;/nu_tel3==;/ds_email==lukka_bessa@hotmail.com","nu_tel1==61991984370;/nu_tel2==;/nu_tel3==;/ds_email==lukka_bessa@hotmail.com","36","Master","1");

INSERT INTO TB_AUDITORIA VALUES("288","TB_ENDERECO","2017-12-11 10:20:33","U","co_endereco==36;/ds_endereco==QR 405 Conjunto 21 Casa 26;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72319221;/no_cidade==Brasília;/sg_uf==DF","ds_endereco==QR 405 Conjunto 21 Casa 26;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72319221;/no_cidade==Brasília;/sg_uf==DF","36","Master","1");

INSERT INTO TB_AUDITORIA VALUES("289","TB_PESSOA","2017-12-11 10:20:33","U","co_pessoa==36;/nu_cpf==03874430103;/no_pessoa==LUANA RIBEIRO BESSA;/nu_rg==2944508;/dt_cadastro==2017-12-10 00:00:00;/dt_nascimento==1993-08-17;/st_sexo==F;/co_contato==36;/co_endereco==36","nu_cpf==03874430103;/no_pessoa==LUANA RIBEIRO BESSA;/nu_rg==2944508;/dt_cadastro==2017-12-11 10:20:32;/dt_nascimento==1993-08-17;/st_sexo==F","36","Master","1");

INSERT INTO TB_AUDITORIA VALUES("290","TB_USUARIO","2017-12-11 10:20:33","U","co_usuario==4;/ds_senha==santosdecalcajeansjpII123;/ds_code==YzJGdWRHOXpaR1ZqWVd4allXcGxZVzV6YW5CSlNURXlNdz09;/st_status==I;/dt_cadastro==2017-12-10 00:00:00;/co_imagem==36;/co_pessoa==36","ds_code==YzJGdWRHOXpaR1ZqWVd4allXcGxZVzV6YW5CSlNURXlNdz09;/ds_senha==santosdecalcajeansjpII123;/st_status==A","4","Master","1");

INSERT INTO TB_AUDITORIA VALUES("291","TB_USUARIO_PERFIL","2017-12-11 10:20:33","D","co_usuario_perfil==10;/co_usuario==4;/co_perfil==3","","10","Master","1");

INSERT INTO TB_AUDITORIA VALUES("292","TB_USUARIO_PERFIL","2017-12-11 10:20:33","I","","co_usuario==4;/co_perfil==2","11","Master","1");

INSERT INTO TB_AUDITORIA VALUES("293","TB_USUARIO_PERFIL","2017-12-11 10:20:33","I","","co_usuario==4;/co_perfil==3","12","Master","1");

INSERT INTO TB_AUDITORIA VALUES("294","TB_USUARIO_PERFIL","2017-12-11 10:20:33","I","","co_usuario==4;/co_perfil==3","13","Master","1");

INSERT INTO TB_AUDITORIA VALUES("295","TB_ACESSO","2017-12-11 13:40:23","I","","ds_session_id==12008ee05271b3caa8862753f63261dd;/co_usuario==4;/dt_inicio_acesso==2017-12-11;/dt_fim_acesso==2017-12-11","15","","0");

INSERT INTO TB_AUDITORIA VALUES("296","TB_ACESSO","2017-12-11 16:42:59","I","","ds_session_id==b77052a6c705ce576fe47a36bd01f0ef;/co_usuario==1;/dt_inicio_acesso==2017-12-11;/dt_fim_acesso==2017-12-11","16","","0");

INSERT INTO TB_AUDITORIA VALUES("297","TB_ENDERECO","2017-12-11 17:09:33","I","","ds_endereco==QR 403 conj 10 casa 28;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72319111;/no_cidade==Brasília;/sg_uf==DF","37","","0");

INSERT INTO TB_AUDITORIA VALUES("298","TB_CONTATO","2017-12-11 17:09:33","I","","nu_tel1==61991058681;/nu_tel2==;/nu_tel3==;/ds_email==lele.403@hotmail.com","37","","0");

INSERT INTO TB_AUDITORIA VALUES("299","TB_IMAGEM","2017-12-11 17:09:33","I","","ds_caminho==leticia-machado-carvalho-bessa-5a2ed7ed5b120.jpg","37","","0");

INSERT INTO TB_AUDITORIA VALUES("300","TB_PESSOA","2017-12-11 17:09:33","I","","nu_cpf==03904086111;/no_pessoa==LETíCIA MACHADO CARVALHO BESSA;/nu_rg==2807680;/dt_cadastro==2017-12-11;/dt_nascimento==1992-08-27;/st_sexo==F;/co_endereco==37;/co_contato==37","37","","0");

INSERT INTO TB_AUDITORIA VALUES("301","TB_USUARIO","2017-12-11 17:09:33","I","","ds_code==Y0dVdWNHbHZNak13T1E9PQ==;/ds_senha==pe.pio2309;/dt_cadastro==2017-12-11;/co_imagem==37;/co_pessoa==37","5","","0");

INSERT INTO TB_AUDITORIA VALUES("302","TB_USUARIO_PERFIL","2017-12-11 17:09:33","I","","co_usuario==5;/co_perfil==3","14","","0");

INSERT INTO TB_AUDITORIA VALUES("303","TB_ENDERECO","2017-12-11 17:41:49","I","","ds_endereco==Shps 103 conjunto A casa 31;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","38","","0");

INSERT INTO TB_AUDITORIA VALUES("304","TB_CONTATO","2017-12-11 17:41:49","I","","nu_tel1==6182057541;/nu_tel2==;/nu_tel3==;/ds_email==Evelynk039@gmail.com","38","","0");

INSERT INTO TB_AUDITORIA VALUES("305","TB_PESSOA","2017-12-11 17:41:49","I","","nu_cpf==07323321174;/no_pessoa==EVELYN RIBEIRO DA SILVA;/nu_rg==3577258;/dt_cadastro==2017-12-11 17:41:48;/dt_nascimento==1999-08-13;/st_sexo==F;/co_endereco==38;/co_contato==38","38","","0");

INSERT INTO TB_AUDITORIA VALUES("306","TB_IMAGEM","2017-12-11 17:41:50","I","","ds_caminho==evelyn-ribeiro-da-silva-5a2edf7d99956.jpg","38","","0");

INSERT INTO TB_AUDITORIA VALUES("307","TB_INSCRICAO","2017-12-11 17:41:50","I","","ds_pastoral==Grupo jovem Fillis Mater Dei;/ds_retiro==S;/dt_cadastro==2017-12-11 17:41:48;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LUCIANA RIBEIRO;/nu_tel_responsavel==6184651243;/ds_descricao==Coordenadora de Grupo Jovem, consagrada há 1 ano e 6 meses, participo da Paróquia Nossa Senhora da Assunção, tendo como pároco Padre Moacyr Gondim.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==38;/co_imagem==38","","","0");

INSERT INTO TB_AUDITORIA VALUES("308","TB_PAGAMENTO","2017-12-11 17:42:05","I","","nu_total==150.00;/nu_parcelas==1","","","0");

INSERT INTO TB_AUDITORIA VALUES("309","TB_PARCELAMENTO","2017-12-11 17:42:05","D","co_parcelamento==2;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-04;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==2;/co_tipo_pagamento==1","","2","","0");

INSERT INTO TB_AUDITORIA VALUES("310","TB_PARCELAMENTO","2017-12-11 17:42:05","I","","co_pagamento==;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-11","","","0");

INSERT INTO TB_AUDITORIA VALUES("311","TB_ACESSO","2017-12-11 17:47:21","I","","ds_session_id==decf75595bf52c0e0400cd679ad7002d;/co_usuario==3;/dt_inicio_acesso==2017-12-11;/dt_fim_acesso==2017-12-11","17","","0");

INSERT INTO TB_AUDITORIA VALUES("312","TB_ENDERECO","2017-12-11 17:51:35","I","","ds_endereco==Qr 421 conjunto 09;/ds_complemento==casa 11;/ds_bairro==Samambaia Norte;/nu_cep==72325110;/no_cidade==Samambaia;/sg_uf==DF","39","","0");

INSERT INTO TB_AUDITORIA VALUES("313","TB_CONTATO","2017-12-11 17:51:35","I","","nu_tel1==61994129510;/nu_tel2==;/nu_tel3==;/ds_email==vicclima123@hotmail.com","39","","0");

INSERT INTO TB_AUDITORIA VALUES("314","TB_IMAGEM","2017-12-11 17:51:35","I","","ds_caminho==vitoria-prudencio-lima-5a2ee1c7795ee.jpg","39","","0");

INSERT INTO TB_AUDITORIA VALUES("315","TB_PESSOA","2017-12-11 17:51:35","I","","nu_cpf==05519198179;/no_pessoa==VITóRIA PRUDêNCIO LIMA;/nu_rg==3287537;/dt_cadastro==2017-12-11;/dt_nascimento==1998-06-21;/st_sexo==F;/co_endereco==39;/co_contato==39","39","","0");

INSERT INTO TB_AUDITORIA VALUES("316","TB_USUARIO","2017-12-11 17:51:35","I","","ds_code==VDFCQlEwOWljblZpY3pFeU13PT0=;/ds_senha==OPACObrubs123;/dt_cadastro==2017-12-11;/co_imagem==39;/co_pessoa==39","6","","0");

INSERT INTO TB_AUDITORIA VALUES("317","TB_USUARIO_PERFIL","2017-12-11 17:51:35","I","","co_usuario==6;/co_perfil==3","15","","0");

INSERT INTO TB_AUDITORIA VALUES("318","TB_ENDERECO","2017-12-11 18:30:53","I","","ds_endereco==SHSN - CHACARA 36 CONJUNTO 09 CASA 06;/ds_complemento==CASA;/ds_bairro==P.Sul;/nu_cep==72236800;/no_cidade==CEILANDIA SUL;/sg_uf==DF","40","","0");

INSERT INTO TB_AUDITORIA VALUES("319","TB_CONTATO","2017-12-11 18:30:53","I","","nu_tel1==61996289579;/nu_tel2==61995941255;/nu_tel3==;/ds_email==laradesousaalmeida@gmail.com","40","","0");

INSERT INTO TB_AUDITORIA VALUES("320","TB_PESSOA","2017-12-11 18:30:53","I","","nu_cpf==03109823594;/no_pessoa==LARA DE SOUSA ALMEIDA;/nu_rg==3708412;/dt_cadastro==2017-12-11 18:30:53;/dt_nascimento==2001-04-22;/st_sexo==F;/co_endereco==40;/co_contato==40","40","","0");

INSERT INTO TB_AUDITORIA VALUES("321","TB_IMAGEM","2017-12-11 18:30:53","I","","ds_caminho==lara-de-sousa-almeida-5a2eeafd99646.jpg","40","","0");

INSERT INTO TB_AUDITORIA VALUES("322","TB_INSCRICAO","2017-12-11 18:30:53","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-11 18:30:53;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MARIA APARECIDA FERREIRA DE SOUSA;/nu_tel_responsavel==61992003034;/ds_descricao==Desejo adquirir mais intimidade com Jesus através do retiro;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==40;/co_imagem==40","","","0");

INSERT INTO TB_AUDITORIA VALUES("323","TB_ENDERECO","2017-12-11 19:17:47","I","","ds_endereco==Qr 118 conjunto 06 lote 09;/ds_complemento==;/ds_bairro==Samambaia Sul;/nu_cep==72302807;/no_cidade==Samambaia ;/sg_uf==DF","41","","0");

INSERT INTO TB_AUDITORIA VALUES("324","TB_CONTATO","2017-12-11 19:17:47","I","","nu_tel1==61985548484;/nu_tel2==6134586918;/nu_tel3==;/ds_email==gabimsouza_@hotmail.com","41","","0");

INSERT INTO TB_AUDITORIA VALUES("325","TB_PESSOA","2017-12-11 19:17:47","I","","nu_cpf==06968592118;/no_pessoa==GABRIELA MENDES SOUZA;/nu_rg==3616392;/dt_cadastro==2017-12-11 19:17:46;/dt_nascimento==1999-08-19;/st_sexo==F;/co_endereco==41;/co_contato==41","41","","0");

INSERT INTO TB_AUDITORIA VALUES("326","TB_IMAGEM","2017-12-11 19:17:47","I","","ds_caminho==gabriela-mendes-souza-5a2ef5fb55046.JPG","41","","0");

INSERT INTO TB_AUDITORIA VALUES("327","TB_INSCRICAO","2017-12-11 19:17:47","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-11 19:17:46;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==ROSANGELA ALVES MENDES ;/nu_tel_responsavel==61985548484;/ds_descricao==Sou uma universitária e frenquento a igreja Católica.;/ds_alimentacao==Não;/ds_medicacao==Não;/st_equipe_trabalho==N;/co_pessoa==41;/co_imagem==41","33","","0");

INSERT INTO TB_AUDITORIA VALUES("328","TB_PAGAMENTO","2017-12-11 19:17:55","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==33","34","","0");

INSERT INTO TB_AUDITORIA VALUES("329","TB_PARCELAMENTO","2017-12-11 19:17:55","I","","co_pagamento==34;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-11","35","","0");

INSERT INTO TB_AUDITORIA VALUES("330","TB_ENDERECO","2017-12-11 19:23:37","I","","ds_endereco==Qr 118 conjunto 6 lote 9;/ds_complemento==;/ds_bairro==Samambaia Sul;/nu_cep==72302807;/no_cidade==Samambaia ;/sg_uf==DF","42","","0");

INSERT INTO TB_AUDITORIA VALUES("331","TB_CONTATO","2017-12-11 19:23:37","I","","nu_tel1==61985548484;/nu_tel2==61986090912;/nu_tel3==;/ds_email==gabimsouza_@hotmail.con","42","","0");

INSERT INTO TB_AUDITORIA VALUES("332","TB_PESSOA","2017-12-11 19:23:37","I","","nu_cpf==07909568100;/no_pessoa==DANIELA MENDES DE SOUZA;/nu_rg==3850639;/dt_cadastro==2017-12-11 19:23:37;/dt_nascimento==2001-05-27;/st_sexo==F;/co_endereco==42;/co_contato==42","42","","0");

INSERT INTO TB_AUDITORIA VALUES("333","TB_IMAGEM","2017-12-11 19:23:37","I","","ds_caminho==daniela-mendes-de-souza-5a2ef759696ef.JPG","42","","0");

INSERT INTO TB_AUDITORIA VALUES("334","TB_INSCRICAO","2017-12-11 19:23:37","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-11 19:23:37;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==ROSANGELA ALVES MENDES ;/nu_tel_responsavel==61985548484;/ds_descricao==Sou estudante e frenquento a igreja Católica.;/ds_alimentacao==Não;/ds_medicacao==Não;/st_equipe_trabalho==N;/co_pessoa==42;/co_imagem==42","34","","0");

INSERT INTO TB_AUDITORIA VALUES("335","TB_PAGAMENTO","2017-12-11 19:23:46","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==34","35","","0");

INSERT INTO TB_AUDITORIA VALUES("336","TB_PARCELAMENTO","2017-12-11 19:23:46","I","","co_pagamento==35;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-11","36","","0");

INSERT INTO TB_AUDITORIA VALUES("337","TB_ACESSO","2017-12-11 19:33:16","I","","ds_session_id==038c17c5534ff1384edefb8c6b452490;/co_usuario==1;/dt_inicio_acesso==2017-12-11;/dt_fim_acesso==2017-12-11","18","","0");

INSERT INTO TB_AUDITORIA VALUES("338","TB_CONTATO","2017-12-11 19:34:26","U","co_contato==39;/nu_tel1==61994129510;/nu_tel2==;/nu_tel3==;/ds_email==vicclima123@hotmail.com","nu_tel1==61994129510;/nu_tel2==;/nu_tel3==;/ds_email==vicclima123@hotmail.com","39","Master","1");

INSERT INTO TB_AUDITORIA VALUES("339","TB_ENDERECO","2017-12-11 19:34:26","U","co_endereco==39;/ds_endereco==Qr 421 conjunto 09;/ds_complemento==casa 11;/ds_bairro==Samambaia Norte;/nu_cep==72325110;/no_cidade==Samambaia;/sg_uf==DF","ds_endereco==Qr 421 conjunto 09;/ds_complemento==casa 11;/ds_bairro==Samambaia Norte;/nu_cep==72325110;/no_cidade==Samambaia;/sg_uf==DF","39","Master","1");

INSERT INTO TB_AUDITORIA VALUES("340","TB_PESSOA","2017-12-11 19:34:27","U","co_pessoa==39;/nu_cpf==05519198179;/no_pessoa==VITóRIA PRUDêNCIO LIMA;/nu_rg==3287537;/dt_cadastro==2017-12-11 00:00:00;/dt_nascimento==1998-06-21;/st_sexo==F;/co_contato==39;/co_endereco==39","nu_cpf==05519198179;/no_pessoa==VITóRIA PRUDêNCIO LIMA;/nu_rg==3287537;/dt_cadastro==2017-12-11 19:34:26;/dt_nascimento==1998-06-21;/st_sexo==F","39","Master","1");

INSERT INTO TB_AUDITORIA VALUES("341","TB_USUARIO","2017-12-11 19:34:27","U","co_usuario==6;/ds_senha==OPACObrubs123;/ds_code==VDFCQlEwOWljblZpY3pFeU13PT0=;/st_status==I;/dt_cadastro==2017-12-11 00:00:00;/co_imagem==39;/co_pessoa==39","ds_code==VDFCQlEwOWljblZpY3pFeU13PT0=;/ds_senha==OPACObrubs123;/st_status==A","6","Master","1");

INSERT INTO TB_AUDITORIA VALUES("342","TB_USUARIO_PERFIL","2017-12-11 19:34:27","D","co_usuario_perfil==15;/co_usuario==6;/co_perfil==3","","15","Master","1");

INSERT INTO TB_AUDITORIA VALUES("343","TB_USUARIO_PERFIL","2017-12-11 19:34:27","I","","co_usuario==6;/co_perfil==3","16","Master","1");

INSERT INTO TB_AUDITORIA VALUES("344","TB_USUARIO_PERFIL","2017-12-11 19:34:27","I","","co_usuario==6;/co_perfil==4","17","Master","1");

INSERT INTO TB_AUDITORIA VALUES("345","TB_USUARIO_PERFIL","2017-12-11 19:34:27","I","","co_usuario==6;/co_perfil==3","18","Master","1");

INSERT INTO TB_AUDITORIA VALUES("346","TB_CONTATO","2017-12-11 19:34:49","U","co_contato==37;/nu_tel1==61991058681;/nu_tel2==;/nu_tel3==;/ds_email==lele.403@hotmail.com","nu_tel1==61991058681;/nu_tel2==;/nu_tel3==;/ds_email==lele.403@hotmail.com","37","Master","1");

INSERT INTO TB_AUDITORIA VALUES("347","TB_ENDERECO","2017-12-11 19:34:49","U","co_endereco==37;/ds_endereco==QR 403 conj 10 casa 28;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72319111;/no_cidade==Brasília;/sg_uf==DF","ds_endereco==QR 403 conj 10 casa 28;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72319111;/no_cidade==Brasília;/sg_uf==DF","37","Master","1");

INSERT INTO TB_AUDITORIA VALUES("348","TB_PESSOA","2017-12-11 19:34:49","U","co_pessoa==37;/nu_cpf==03904086111;/no_pessoa==LETíCIA MACHADO CARVALHO BESSA;/nu_rg==2807680;/dt_cadastro==2017-12-11 00:00:00;/dt_nascimento==1992-08-27;/st_sexo==F;/co_contato==37;/co_endereco==37","nu_cpf==03904086111;/no_pessoa==LETíCIA MACHADO CARVALHO BESSA;/nu_rg==2807680;/dt_cadastro==2017-12-11 19:34:49;/dt_nascimento==1992-08-27;/st_sexo==F","37","Master","1");

INSERT INTO TB_AUDITORIA VALUES("349","TB_USUARIO","2017-12-11 19:34:50","U","co_usuario==5;/ds_senha==pe.pio2309;/ds_code==Y0dVdWNHbHZNak13T1E9PQ==;/st_status==I;/dt_cadastro==2017-12-11 00:00:00;/co_imagem==37;/co_pessoa==37","ds_code==Y0dVdWNHbHZNak13T1E9PQ==;/ds_senha==pe.pio2309;/st_status==A","5","Master","1");

INSERT INTO TB_AUDITORIA VALUES("350","TB_USUARIO_PERFIL","2017-12-11 19:34:50","D","co_usuario_perfil==14;/co_usuario==5;/co_perfil==3","","14","Master","1");

INSERT INTO TB_AUDITORIA VALUES("351","TB_USUARIO_PERFIL","2017-12-11 19:34:50","I","","co_usuario==5;/co_perfil==2","19","Master","1");

INSERT INTO TB_AUDITORIA VALUES("352","TB_USUARIO_PERFIL","2017-12-11 19:34:50","I","","co_usuario==5;/co_perfil==3","20","Master","1");

INSERT INTO TB_AUDITORIA VALUES("353","TB_USUARIO_PERFIL","2017-12-11 19:34:50","I","","co_usuario==5;/co_perfil==3","21","Master","1");

INSERT INTO TB_AUDITORIA VALUES("354","TB_ACESSO","2017-12-11 19:52:29","I","","ds_session_id==a57444126414e8c44c4897b36be8628d;/co_usuario==6;/dt_inicio_acesso==2017-12-11;/dt_fim_acesso==2017-12-11","19","","0");

INSERT INTO TB_AUDITORIA VALUES("355","TB_ACESSO","2017-12-11 22:38:15","I","","ds_session_id==d132e20170302cc21e327d210897e656;/co_usuario==6;/dt_inicio_acesso==2017-12-11;/dt_fim_acesso==2017-12-11","20","","0");

INSERT INTO TB_AUDITORIA VALUES("356","TB_ACESSO","2017-12-12 10:37:44","I","","ds_session_id==71c9484e048758790863567d1cca6c85;/co_usuario==1;/dt_inicio_acesso==2017-12-12;/dt_fim_acesso==2017-12-12","21","","0");

INSERT INTO TB_AUDITORIA VALUES("357","TB_ENDERECO","2017-12-12 12:41:11","I","","ds_endereco==Qr 118 cj 06 Lt09 cs 01;/ds_complemento==;/ds_bairro==;/nu_cep==72302807;/no_cidade==Samambaia Df;/sg_uf==DF","43","","0");

INSERT INTO TB_AUDITORIA VALUES("358","TB_CONTATO","2017-12-12 12:41:11","I","","nu_tel1==62998583534;/nu_tel2==61984548484;/nu_tel3==;/ds_email==garciamendesisabella@gmail.com","43","","0");

INSERT INTO TB_AUDITORIA VALUES("359","TB_PESSOA","2017-12-12 12:41:11","I","","nu_cpf==70602523125;/no_pessoa==ISABELLA GARCIA MENDES;/nu_rg==6539903;/dt_cadastro==2017-12-12 12:41:10;/dt_nascimento==1999-07-20;/st_sexo==F;/co_endereco==43;/co_contato==43","43","","0");

INSERT INTO TB_AUDITORIA VALUES("360","TB_IMAGEM","2017-12-12 12:41:12","I","","ds_caminho==isabella-garcia-mendes-5a2fea875ed9d.jpeg","43","","0");

INSERT INTO TB_AUDITORIA VALUES("361","TB_INSCRICAO","2017-12-12 12:41:12","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-12 12:41:10;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==ROSA ;/nu_tel_responsavel==61984548484;/ds_descricao==Isabella, 18 anos, estudante, católica ","","","0");

INSERT INTO TB_AUDITORIA VALUES("362","TB_PAGAMENTO","2017-12-12 12:42:10","I","","nu_total==150.00;/nu_parcelas==1","","","0");

INSERT INTO TB_AUDITORIA VALUES("363","TB_PARCELAMENTO","2017-12-12 12:42:11","D","co_parcelamento==35;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-11;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==34;/co_tipo_pagamento==1","","35","","0");

INSERT INTO TB_AUDITORIA VALUES("364","TB_PARCELAMENTO","2017-12-12 12:42:11","I","","co_pagamento==;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","","","0");

INSERT INTO TB_AUDITORIA VALUES("365","TB_ENDERECO","2017-12-12 13:46:24","I","","ds_endereco==QR 403 conjunto 09;/ds_complemento==Casa 18;/ds_bairro==Samambaia norte;/nu_cep==72319110;/no_cidade==Samambaia ;/sg_uf==DF","44","","0");

INSERT INTO TB_AUDITORIA VALUES("366","TB_CONTATO","2017-12-12 13:46:24","I","","nu_tel1==61993872602;/nu_tel2==61930814590;/nu_tel3==;/ds_email==vitorhbarroso@hotmail.com","44","","0");

INSERT INTO TB_AUDITORIA VALUES("367","TB_PESSOA","2017-12-12 13:46:24","I","","nu_cpf==05704088147;/no_pessoa==VITOR HUGO BARROSO;/nu_rg==3362969;/dt_cadastro==2017-12-12 13:46:24;/dt_nascimento==1999-08-25;/st_sexo==M;/co_endereco==44;/co_contato==44","44","","0");

INSERT INTO TB_AUDITORIA VALUES("368","TB_IMAGEM","2017-12-12 13:46:24","I","","ds_caminho==vitor-hugo-barroso-5a2ff9d0975a9.jpg","44","","0");

INSERT INTO TB_AUDITORIA VALUES("369","TB_INSCRICAO","2017-12-12 13:46:24","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-12 13:46:24;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==ELIETE;/nu_tel_responsavel==61986325346;/ds_descricao==Não;/ds_alimentacao==Não;/ds_medicacao==Não;/st_equipe_trabalho==N;/co_pessoa==44;/co_imagem==44","35","","0");

INSERT INTO TB_AUDITORIA VALUES("370","TB_PAGAMENTO","2017-12-12 13:50:03","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==35","37","","0");

INSERT INTO TB_AUDITORIA VALUES("371","TB_PARCELAMENTO","2017-12-12 13:50:03","I","","co_pagamento==37;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","37","","0");

INSERT INTO TB_AUDITORIA VALUES("372","TB_ENDERECO","2017-12-12 14:48:43","I","","ds_endereco==SHSN CHÁCARA 36 CONJUNTO 09 CASA 06;/ds_complemento==Casa;/ds_bairro==P.Sul;/nu_cep==72236800;/no_cidade==Ceilândia;/sg_uf==DF","45","","0");

INSERT INTO TB_AUDITORIA VALUES("373","TB_CONTATO","2017-12-12 14:48:43","I","","nu_tel1==61996289579;/nu_tel2==61995941255;/nu_tel3==;/ds_email==laradesousaalmeida@gmail.com","45","","0");

INSERT INTO TB_AUDITORIA VALUES("374","TB_PESSOA","2017-12-12 14:48:43","I","","nu_cpf==03109823594;/no_pessoa==LARA DE SOUSA ALMEIDA;/nu_rg==;/dt_cadastro==2017-12-12 14:48:43;/dt_nascimento==2001-04-22;/st_sexo==F;/co_endereco==45;/co_contato==45","45","","0");

INSERT INTO TB_AUDITORIA VALUES("375","TB_IMAGEM","2017-12-12 14:48:45","I","","ds_caminho==lara-de-sousa-almeida-5a30086bea207.jpg","45","","0");

INSERT INTO TB_AUDITORIA VALUES("376","TB_INSCRICAO","2017-12-12 14:48:45","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-12 14:48:43;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MARIA APARECIDA FERREIRA DE SOUSA ;/nu_tel_responsavel==61992003034;/ds_descricao==Desejo ter mais intimidade com Cristo;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==45;/co_imagem==45","","","0");

INSERT INTO TB_AUDITORIA VALUES("377","TB_PAGAMENTO","2017-12-12 14:51:42","I","","nu_total==160.00;/nu_parcelas==1","","","0");

INSERT INTO TB_AUDITORIA VALUES("378","TB_PARCELAMENTO","2017-12-12 14:51:42","D","co_parcelamento==37;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-12;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==37;/co_tipo_pagamento==1","","37","","0");

INSERT INTO TB_AUDITORIA VALUES("379","TB_PARCELAMENTO","2017-12-12 14:51:42","I","","co_pagamento==;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-12","","","0");

INSERT INTO TB_AUDITORIA VALUES("380","TB_PAGAMENTO","2017-12-12 14:52:06","I","","nu_total==160.00;/nu_parcelas==1","","","0");

INSERT INTO TB_AUDITORIA VALUES("381","TB_PARCELAMENTO","2017-12-12 14:52:07","D","","","","","0");

INSERT INTO TB_AUDITORIA VALUES("382","TB_PARCELAMENTO","2017-12-12 14:52:07","I","","co_pagamento==;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-12","","","0");

INSERT INTO TB_AUDITORIA VALUES("383","TB_PAGAMENTO","2017-12-12 14:52:32","I","","nu_total==160.00;/nu_parcelas==1","","","0");

INSERT INTO TB_AUDITORIA VALUES("384","TB_PARCELAMENTO","2017-12-12 14:52:32","D","","","","","0");

INSERT INTO TB_AUDITORIA VALUES("385","TB_PARCELAMENTO","2017-12-12 14:52:32","I","","co_pagamento==;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-12","","","0");

INSERT INTO TB_AUDITORIA VALUES("386","TB_PARCELAMENTO","2017-12-12 18:46:35","I","","co_pagamento==1;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","38","","0");

INSERT INTO TB_AUDITORIA VALUES("387","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==2;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","39","","0");

INSERT INTO TB_AUDITORIA VALUES("388","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==3;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","40","","0");

INSERT INTO TB_AUDITORIA VALUES("389","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==4;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","41","","0");

INSERT INTO TB_AUDITORIA VALUES("390","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==5;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","42","","0");

INSERT INTO TB_AUDITORIA VALUES("391","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==6;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","43","","0");

INSERT INTO TB_AUDITORIA VALUES("392","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==7;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","44","","0");

INSERT INTO TB_AUDITORIA VALUES("393","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==8;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","45","","0");

INSERT INTO TB_AUDITORIA VALUES("394","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==9;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","46","","0");

INSERT INTO TB_AUDITORIA VALUES("395","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==10;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","47","","0");

INSERT INTO TB_AUDITORIA VALUES("396","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==11;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","48","","0");

INSERT INTO TB_AUDITORIA VALUES("397","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==12;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","49","","0");

INSERT INTO TB_AUDITORIA VALUES("398","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==14;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","50","","0");

INSERT INTO TB_AUDITORIA VALUES("399","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==15;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","51","","0");

INSERT INTO TB_AUDITORIA VALUES("400","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==16;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-12","52","","0");

INSERT INTO TB_AUDITORIA VALUES("401","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==17;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","53","","0");

INSERT INTO TB_AUDITORIA VALUES("402","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==18;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","54","","0");

INSERT INTO TB_AUDITORIA VALUES("403","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==20;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","55","","0");

INSERT INTO TB_AUDITORIA VALUES("404","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==21;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","56","","0");

INSERT INTO TB_AUDITORIA VALUES("405","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==22;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","57","","0");

INSERT INTO TB_AUDITORIA VALUES("406","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==23;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","58","","0");

INSERT INTO TB_AUDITORIA VALUES("407","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==19;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","59","","0");

INSERT INTO TB_AUDITORIA VALUES("408","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==25;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","60","","0");

INSERT INTO TB_AUDITORIA VALUES("409","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==24;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","61","","0");

INSERT INTO TB_AUDITORIA VALUES("410","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==26;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-12","62","","0");

INSERT INTO TB_AUDITORIA VALUES("411","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==27;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","63","","0");

INSERT INTO TB_AUDITORIA VALUES("412","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==28;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","64","","0");

INSERT INTO TB_AUDITORIA VALUES("413","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==29;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","65","","0");

INSERT INTO TB_AUDITORIA VALUES("414","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==30;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","66","","0");

INSERT INTO TB_AUDITORIA VALUES("415","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==31;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","67","","0");

INSERT INTO TB_AUDITORIA VALUES("416","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==32;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-12","68","","0");

INSERT INTO TB_AUDITORIA VALUES("417","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==34;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","69","","0");

INSERT INTO TB_AUDITORIA VALUES("418","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==35;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","70","","0");

INSERT INTO TB_AUDITORIA VALUES("419","TB_PARCELAMENTO","2017-12-12 18:46:36","I","","co_pagamento==37;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-12","71","","0");

INSERT INTO TB_AUDITORIA VALUES("420","TB_ACESSO","2017-12-12 18:48:27","I","","ds_session_id==0c3ff0ab58106f5b3ffc0877c16c4476;/co_usuario==1;/dt_inicio_acesso==2017-12-12;/dt_fim_acesso==2017-12-12","22","","0");

INSERT INTO TB_AUDITORIA VALUES("421","TB_ACESSO","2017-12-12 20:13:41","I","","ds_session_id==648d51fc548e8caca1bb705a1a390da0;/co_usuario==6;/dt_inicio_acesso==2017-12-12;/dt_fim_acesso==2017-12-12","23","","0");

INSERT INTO TB_AUDITORIA VALUES("422","TB_ACESSO","2017-12-13 10:22:21","I","","ds_session_id==03f0f15ac5640cbde83e01bc25fdabca;/co_usuario==1;/dt_inicio_acesso==2017-12-13;/dt_fim_acesso==2017-12-13","24","","0");

INSERT INTO TB_AUDITORIA VALUES("423","TB_ACESSO","2017-12-13 19:56:40","I","","ds_session_id==576a23a58d786f4935c934629dc4026c;/co_usuario==4;/dt_inicio_acesso==2017-12-13;/dt_fim_acesso==2017-12-13","25","","0");

INSERT INTO TB_AUDITORIA VALUES("424","TB_ENDERECO","2017-12-14 11:51:02","I","","ds_endereco==Q46  l 14 jardim santa lucia águas lindas de Goiás;/ds_complemento==;/ds_bairro==Santa lucia;/nu_cep==72927535;/no_cidade==Águas lindas ;/sg_uf==GO","46","","0");

INSERT INTO TB_AUDITORIA VALUES("425","TB_CONTATO","2017-12-14 11:51:02","I","","nu_tel1==61992563934;/nu_tel2==61993896214;/nu_tel3==;/ds_email==carlos.lima.18@hotmail.com","46","","0");

INSERT INTO TB_AUDITORIA VALUES("426","TB_PESSOA","2017-12-14 11:51:02","I","","nu_cpf==03601286106;/no_pessoa==ANTONIO CARLOS RAMOS LIMA;/nu_rg==2652417;/dt_cadastro==2017-12-14 11:51:02;/dt_nascimento==1989-10-26;/st_sexo==M;/co_endereco==46;/co_contato==46","46","","0");

INSERT INTO TB_AUDITORIA VALUES("427","TB_IMAGEM","2017-12-14 11:51:03","I","","ds_caminho==antonio-carlos-ramos-lima-5a3281c7028bd.jpg","46","","0");

INSERT INTO TB_AUDITORIA VALUES("428","TB_INSCRICAO","2017-12-14 11:51:03","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-14 11:51:02;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==BRENA;/nu_tel_responsavel==61992563934;/ds_descricao==Sou tranquilo procurando amizades no meio da igreja que possamos partilha de bons convívio na paz do senhor para buscar o caminho  Deus por que estou precisando muito  de Deus na minha vida para seguir no caminho de Cristo.;/ds_alimentacao==;/ds_medicacao==Não;/st_equipe_trabalho==N;/co_pessoa==46;/co_imagem==46","","","0");

INSERT INTO TB_AUDITORIA VALUES("429","TB_PAGAMENTO","2017-12-14 11:54:22","I","","nu_total==160.00;/nu_parcelas==1","","","0");

INSERT INTO TB_AUDITORIA VALUES("430","TB_PARCELAMENTO","2017-12-14 11:54:22","D","co_parcelamento==38;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-12;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==1;/co_tipo_pagamento==1","","38","","0");

INSERT INTO TB_AUDITORIA VALUES("431","TB_PARCELAMENTO","2017-12-14 11:54:23","I","","co_pagamento==;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-14","","","0");

INSERT INTO TB_AUDITORIA VALUES("432","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==1;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","72","","0");

INSERT INTO TB_AUDITORIA VALUES("433","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==2;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","73","","0");

INSERT INTO TB_AUDITORIA VALUES("434","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==3;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","74","","0");

INSERT INTO TB_AUDITORIA VALUES("435","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==4;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","75","","0");

INSERT INTO TB_AUDITORIA VALUES("436","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==5;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","76","","0");

INSERT INTO TB_AUDITORIA VALUES("437","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==6;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","77","","0");

INSERT INTO TB_AUDITORIA VALUES("438","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==7;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","78","","0");

INSERT INTO TB_AUDITORIA VALUES("439","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==8;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","79","","0");

INSERT INTO TB_AUDITORIA VALUES("440","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==9;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","80","","0");

INSERT INTO TB_AUDITORIA VALUES("441","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==10;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","81","","0");

INSERT INTO TB_AUDITORIA VALUES("442","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==11;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","82","","0");

INSERT INTO TB_AUDITORIA VALUES("443","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==12;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","83","","0");

INSERT INTO TB_AUDITORIA VALUES("444","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==14;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","84","","0");

INSERT INTO TB_AUDITORIA VALUES("445","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==15;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","85","","0");

INSERT INTO TB_AUDITORIA VALUES("446","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==16;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-14","86","","0");

INSERT INTO TB_AUDITORIA VALUES("447","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==17;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","87","","0");

INSERT INTO TB_AUDITORIA VALUES("448","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==18;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","88","","0");

INSERT INTO TB_AUDITORIA VALUES("449","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==20;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","89","","0");

INSERT INTO TB_AUDITORIA VALUES("450","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==21;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","90","","0");

INSERT INTO TB_AUDITORIA VALUES("451","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==22;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","91","","0");

INSERT INTO TB_AUDITORIA VALUES("452","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==23;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","92","","0");

INSERT INTO TB_AUDITORIA VALUES("453","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==19;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","93","","0");

INSERT INTO TB_AUDITORIA VALUES("454","TB_PARCELAMENTO","2017-12-14 11:55:13","I","","co_pagamento==25;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","94","","0");

INSERT INTO TB_AUDITORIA VALUES("455","TB_PARCELAMENTO","2017-12-14 11:55:14","I","","co_pagamento==24;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","95","","0");

INSERT INTO TB_AUDITORIA VALUES("456","TB_PARCELAMENTO","2017-12-14 11:55:14","I","","co_pagamento==26;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-14","96","","0");

INSERT INTO TB_AUDITORIA VALUES("457","TB_PARCELAMENTO","2017-12-14 11:55:14","I","","co_pagamento==27;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","97","","0");

INSERT INTO TB_AUDITORIA VALUES("458","TB_PARCELAMENTO","2017-12-14 11:55:14","I","","co_pagamento==28;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","98","","0");

INSERT INTO TB_AUDITORIA VALUES("459","TB_PARCELAMENTO","2017-12-14 11:55:14","I","","co_pagamento==29;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","99","","0");

INSERT INTO TB_AUDITORIA VALUES("460","TB_PARCELAMENTO","2017-12-14 11:55:14","I","","co_pagamento==30;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","100","","0");

INSERT INTO TB_AUDITORIA VALUES("461","TB_PARCELAMENTO","2017-12-14 11:55:14","I","","co_pagamento==31;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","101","","0");

INSERT INTO TB_AUDITORIA VALUES("462","TB_PARCELAMENTO","2017-12-14 11:55:14","I","","co_pagamento==32;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-14","102","","0");

INSERT INTO TB_AUDITORIA VALUES("463","TB_PARCELAMENTO","2017-12-14 11:55:14","I","","co_pagamento==34;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","103","","0");

INSERT INTO TB_AUDITORIA VALUES("464","TB_PARCELAMENTO","2017-12-14 11:55:14","I","","co_pagamento==35;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","104","","0");

INSERT INTO TB_AUDITORIA VALUES("465","TB_PARCELAMENTO","2017-12-14 11:55:14","I","","co_pagamento==37;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-14","105","","0");

INSERT INTO TB_AUDITORIA VALUES("466","TB_ACESSO","2017-12-14 11:55:54","I","","ds_session_id==b563b21c1d283572dd448c1529b67048;/co_usuario==1;/dt_inicio_acesso==2017-12-14;/dt_fim_acesso==2017-12-14","26","","0");

INSERT INTO TB_AUDITORIA VALUES("467","TB_ENDERECO","2017-12-14 12:21:53","I","","ds_endereco==Quadra 46 lote 14 santa lucia;/ds_complemento==Águas lindas 2;/ds_bairro==Santa lucia;/nu_cep==72927535;/no_cidade==Águas lindas ;/sg_uf==GO","47","","0");

INSERT INTO TB_AUDITORIA VALUES("468","TB_CONTATO","2017-12-14 12:21:53","I","","nu_tel1==61992563934;/nu_tel2==61992563934;/nu_tel3==;/ds_email==carlos.lima.18@hotmai.com","47","","0");

INSERT INTO TB_AUDITORIA VALUES("469","TB_PESSOA","2017-12-14 12:21:53","I","","nu_cpf==03601286106;/no_pessoa==ANTONIO CARLOS RAMOS LIMA;/nu_rg==2652417;/dt_cadastro==2017-12-14 12:21:53;/dt_nascimento==1989-10-26;/st_sexo==M;/co_endereco==47;/co_contato==47","47","","0");

INSERT INTO TB_AUDITORIA VALUES("470","TB_IMAGEM","2017-12-14 12:21:54","I","","ds_caminho==antonio-carlos-ramos-lima-5a328901f34d8.jpg","47","","0");

INSERT INTO TB_AUDITORIA VALUES("471","TB_INSCRICAO","2017-12-14 12:21:54","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-14 12:21:53;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==BRENA KESSIA;/nu_tel_responsavel==61992563934;/ds_descricao==Olá sou carlos sou tranquilo trabalho de pedreiro estou a procura da igreja entender mais de Deus me sentir na presença dele estou precisando por isso estou animado ir para esse retiro. .;/ds_alimentacao==Nao;/ds_medicacao==Nao;/st_equipe_trabalho==N;/co_pessoa==47;/co_imagem==47","36","","0");

INSERT INTO TB_AUDITORIA VALUES("472","TB_PAGAMENTO","2017-12-14 12:22:25","I","","nu_total==160.00;/nu_parcelas==1;/co_inscricao==36","42","","0");

INSERT INTO TB_AUDITORIA VALUES("473","TB_PARCELAMENTO","2017-12-14 12:22:25","I","","co_pagamento==42;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-14","106","","0");

INSERT INTO TB_AUDITORIA VALUES("474","TB_ACESSO","2017-12-14 14:18:49","I","","ds_session_id==abb7b36a15356d949b21d845262339c8;/co_usuario==1;/dt_inicio_acesso==2017-12-14;/dt_fim_acesso==2017-12-14","27","","0");

INSERT INTO TB_AUDITORIA VALUES("475","TB_ACESSO","2017-12-14 15:44:58","I","","ds_session_id==81ecbfa28ce39a10e2404b12709e8734;/co_usuario==1;/dt_inicio_acesso==2017-12-14;/dt_fim_acesso==2017-12-14","28","","0");

INSERT INTO TB_AUDITORIA VALUES("476","TB_ACESSO","2017-12-14 16:50:12","I","","ds_session_id==8b0f20fe2eccfd8dc05f341ba5644c92;/co_usuario==1;/dt_inicio_acesso==2017-12-14;/dt_fim_acesso==2017-12-14","29","","0");

INSERT INTO TB_AUDITORIA VALUES("477","TB_ACESSO","2017-12-14 17:39:00","I","","ds_session_id==fb74af1a16d204d7eac336b6238aea1a;/co_usuario==1;/dt_inicio_acesso==2017-12-14;/dt_fim_acesso==2017-12-14","30","","0");

INSERT INTO TB_AUDITORIA VALUES("478","TB_ACESSO","2017-12-15 17:38:42","I","","ds_session_id==dc84353e5bf87f127eaa160b802b2c64;/co_usuario==1;/dt_inicio_acesso==2017-12-15;/dt_fim_acesso==2017-12-15","31","","0");

INSERT INTO TB_AUDITORIA VALUES("479","TB_ACESSO","2017-12-15 19:17:08","I","","ds_session_id==bde9e1723ad94c9ac5264189bd6af72b;/co_usuario==1;/dt_inicio_acesso==2017-12-15;/dt_fim_acesso==2017-12-15","32","","0");

INSERT INTO TB_AUDITORIA VALUES("480","TB_ENDERECO","2017-12-16 14:24:06","I","","ds_endereco==QI 03 Lote 23;/ds_complemento==;/ds_bairro==Setor de Industrias;/nu_cep==72265030;/no_cidade==Ceilândia ;/sg_uf==DF","48","","0");

INSERT INTO TB_AUDITORIA VALUES("481","TB_CONTATO","2017-12-16 14:24:06","I","","nu_tel1==61991893526;/nu_tel2==;/nu_tel3==;/ds_email==larissamesquita98@gmail.com","48","","0");

INSERT INTO TB_AUDITORIA VALUES("482","TB_PESSOA","2017-12-16 14:24:06","I","","nu_cpf==06828355105;/no_pessoa==LARISSA MESQUITA;/nu_rg==;/dt_cadastro==2017-12-16 14:24:06;/dt_nascimento==1998-10-02;/st_sexo==F;/co_endereco==48;/co_contato==48","48","","0");

INSERT INTO TB_AUDITORIA VALUES("483","TB_IMAGEM","2017-12-16 14:24:06","I","","ds_caminho==larissa-mesquita-5a3548a6d260a.jpeg","48","","0");

INSERT INTO TB_AUDITORIA VALUES("484","TB_INSCRICAO","2017-12-16 14:24:06","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-16 14:24:06;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==JOSé EVARISTO;/nu_tel_responsavel==61981019362;/ds_descricao==Faço parte da Equipe Jovem AJUC, sempre fui católica, sou pouco tímida;/ds_alimentacao==Não;/ds_medicacao==Não;/st_equipe_trabalho==N;/co_pessoa==48;/co_imagem==48","37","","0");

INSERT INTO TB_AUDITORIA VALUES("485","TB_PAGAMENTO","2017-12-16 14:25:07","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==37","43","","0");

INSERT INTO TB_AUDITORIA VALUES("486","TB_PARCELAMENTO","2017-12-16 14:25:07","I","","co_pagamento==43;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-16","107","","0");




DROP TABLE IF EXISTS TB_CONTATO;


CREATE TABLE `TB_CONTATO` (
  `co_contato` int(11) NOT NULL AUTO_INCREMENT,
  `nu_tel1` varchar(15) NOT NULL,
  `nu_tel2` varchar(15) DEFAULT NULL,
  `nu_tel3` varchar(15) DEFAULT NULL,
  `ds_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`co_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTATO VALUES("1","61993274991","6130826060","","leonardomcbessa@gmail.com");

INSERT INTO TB_CONTATO VALUES("2","61995022920","61982512602","","amandatominaginha@gmail.com");

INSERT INTO TB_CONTATO VALUES("3","6134588070","6134588070","","igoor20boorges25@gmail.com");

INSERT INTO TB_CONTATO VALUES("4","61984800492","","","nayane.duda11@gmail.com");

INSERT INTO TB_CONTATO VALUES("5","61984624670","61991774916","","amaury.ritchenzoo@gmail.com");

INSERT INTO TB_CONTATO VALUES("6","62982163027","","","henriquecarvalhohca@outlook.com");

INSERT INTO TB_CONTATO VALUES("7","6198216342","61982610934","","amandasliima@hotmail.com");

INSERT INTO TB_CONTATO VALUES("8","61993898324","61994186538","","jerlanesilva06@gmail.com");

INSERT INTO TB_CONTATO VALUES("9","6182361967","6193077479","","Joaopereira407@hotmail.com");

INSERT INTO TB_CONTATO VALUES("10","61992850286","6195282513","","karenn.geovanna@gmail.com");

INSERT INTO TB_CONTATO VALUES("11","61996330428","","","lilirtais@gmail.com");

INSERT INTO TB_CONTATO VALUES("13","6192198414","6182701888","","frabriceras15@gmail.com");

INSERT INTO TB_CONTATO VALUES("14","6182609125","6181214179","","sirlei_arq@hotmail.com");

INSERT INTO TB_CONTATO VALUES("15","61994129510","","","vicclima123@hotmail.com");

INSERT INTO TB_CONTATO VALUES("16","61995637226","61993166755","","lucaslcr33@gmail.com");

INSERT INTO TB_CONTATO VALUES("17","61984390834","6132086444","","wallissonirvans@gmail.com");

INSERT INTO TB_CONTATO VALUES("18","61992775753","","","manuela@marangoni.adm.br");

INSERT INTO TB_CONTATO VALUES("19","6133593574","6133593574","","priscilamartins213@gmail.com");

INSERT INTO TB_CONTATO VALUES("20","61995753532","61991157538","","mercia.batista@hotmail.com");

INSERT INTO TB_CONTATO VALUES("21","61984269119","","","v.cristinabsb.vc@gmail.com");

INSERT INTO TB_CONTATO VALUES("22","61985539668","","","kamilaf.silva@hotmail.com");

INSERT INTO TB_CONTATO VALUES("23","6191869697","","","alunodiogoetb@gmail.com");

INSERT INTO TB_CONTATO VALUES("24","61992458959","6133778341","","cassiorodriguescastro08@gmail.com");

INSERT INTO TB_CONTATO VALUES("25","61986725701","61986521612","","mendescatherine44@gmail.com");

INSERT INTO TB_CONTATO VALUES("26","61995021840","","","tominagaiv@gmail.com");

INSERT INTO TB_CONTATO VALUES("27","6199567013","6199567013","","thaynaratonhaz@gmail.com");

INSERT INTO TB_CONTATO VALUES("28","61995121814","","","Raulmiran@hotmail.com");

INSERT INTO TB_CONTATO VALUES("29","61984640608","61992953159","","Ericastephanie2015@gmail.com");

INSERT INTO TB_CONTATO VALUES("30","61993151297","","","lucrece.neri@hotmail.com");

INSERT INTO TB_CONTATO VALUES("31","61993151297","","","lucrece.neri@hotmail.com");

INSERT INTO TB_CONTATO VALUES("32","61985667861","61999043516","","pedroaugustopacheco12@gmail.com");

INSERT INTO TB_CONTATO VALUES("33","61996979071","6135972532","","Gsouzat28@gmail.com");

INSERT INTO TB_CONTATO VALUES("34","6195121814","","","Rauldmc52@gmail.com");

INSERT INTO TB_CONTATO VALUES("35","61991984370","","","lukka_bessa@hotmail.com");

INSERT INTO TB_CONTATO VALUES("36","61991984370","","","lukka_bessa@hotmail.com");

INSERT INTO TB_CONTATO VALUES("37","61991058681","","","lele.403@hotmail.com");

INSERT INTO TB_CONTATO VALUES("39","61994129510","","","vicclima123@hotmail.com");

INSERT INTO TB_CONTATO VALUES("40","61996289579","61995941255","","laradesousaalmeida@gmail.com");

INSERT INTO TB_CONTATO VALUES("41","61985548484","6134586918","","gabimsouza_@hotmail.com");

INSERT INTO TB_CONTATO VALUES("42","61985548484","61986090912","","gabimsouza_@hotmail.con");

INSERT INTO TB_CONTATO VALUES("43","62998583534","61984548484","","garciamendesisabella@gmail.com");

INSERT INTO TB_CONTATO VALUES("44","61993872602","61930814590","","vitorhbarroso@hotmail.com");

INSERT INTO TB_CONTATO VALUES("47","61992563934","61992563934","","carlos.lima.18@hotmai.com");

INSERT INTO TB_CONTATO VALUES("48","61991893526","","","larissamesquita98@gmail.com");




DROP TABLE IF EXISTS TB_ENDERECO;


CREATE TABLE `TB_ENDERECO` (
  `co_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `ds_endereco` varchar(150) NOT NULL,
  `ds_complemento` varchar(100) DEFAULT NULL,
  `ds_bairro` varchar(80) DEFAULT NULL,
  `nu_cep` varchar(15) DEFAULT NULL,
  `no_cidade` varchar(80) DEFAULT NULL,
  `sg_uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;


INSERT INTO TB_ENDERECO VALUES("1","qr 403 conjunto 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("2","Shps 602 chac. 97-A","Setor P.Sul","P.Sul","72236608","Brasília ","DF");

INSERT INTO TB_ENDERECO VALUES("3","QR 210 Conjunto 21 Casa 19 Samambaia Norte","Casa","Samambaia Norte","72316219","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("4","QR 208 Conjunto 05 Casa 01","","Samambaia Norte","","Samambaia","DF");

INSERT INTO TB_ENDERECO VALUES("5","Qr. 204 Conjunto 12 Lote 16","Kit 01","Norte","72316092","Samambaia ","DF");

INSERT INTO TB_ENDERECO VALUES("6","Qs 403 , conj. 10 casa 27","","Samambaia norte","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("7","QR 405 Conj 10 Casa 04","","Samambaia Norte","72319210","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("8","QR 211 conj 03 casa 13","","","72343000","Samambaia Norte","DF");

INSERT INTO TB_ENDERECO VALUES("9","Qr 405 Conj 02 Casa 09","Casa 09","Samambaia","72319202","samambaia norte","DF");

INSERT INTO TB_ENDERECO VALUES("10","Qr 423 Conjunto 03 Casa 24","24","Samambaia Norte","72325203","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("11","cln 314 bloco d apt 210","210","asa norte","70773060","Brasília ","DF");

INSERT INTO TB_ENDERECO VALUES("13","Qr 421 conjunto 16 casa 03","Casa 03","Samambaia Norte","72325119","Samambaia","DF");

INSERT INTO TB_ENDERECO VALUES("14","Qr 603 chácara 39 cadáveres 30 B","Rua 03 Condomínio Vida Nova","Samambaia Norte","72331100","Samambaia ","DF");

INSERT INTO TB_ENDERECO VALUES("15","Qr 421 conjunto 09 casa 11","","Samambaia","72325110","Samambaia Norte - DF- Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("16","Quadra: 425, Conjunto:26","Casa:14","Samambaia Norte","72327027","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("17","Qnp 32 conj C casa 19","","P sul","72236203","Ceilândia","DF");

INSERT INTO TB_ENDERECO VALUES("18","Rua 16 sul","Lote 06 apartamento 801","Águas Claras","","","DF");

INSERT INTO TB_ENDERECO VALUES("19","Qr 213 conjunto 05 casa 09","09","Samambaia","72343105","Brasilía","DF");

INSERT INTO TB_ENDERECO VALUES("20","Qr 310 conjunto 16 casa 18","samambaia sul","samambaia df","72306817","Brasilia ","DF");

INSERT INTO TB_ENDERECO VALUES("21","Qne 2 casa 27","","Taguatinga","72125020","Taguatinga Norte","DF");

INSERT INTO TB_ENDERECO VALUES("22","Qr 405 conjunto 25, casa 05","","samambaia","72319225","Brasilia","DF");

INSERT INTO TB_ENDERECO VALUES("23","Quadra 315 conjunto 13","casa 12","Samambaia","72307613","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("24","Qnp 32 conj S casa","01","Psul","72236219","Ceilândia","DF");

INSERT INTO TB_ENDERECO VALUES("25","QR 407 conj 11 casa 20","","","","","DF");

INSERT INTO TB_ENDERECO VALUES("26","QNP 36 Conjunto H","Casa 39","Setor P.Sul","72236608","Ceilândia-DF","DF");

INSERT INTO TB_ENDERECO VALUES("27","qr 210","24 cs 17","","72316225","Brasilia","DF");

INSERT INTO TB_ENDERECO VALUES("28","Qn 211 conjunto 01 casa 35","","Samambaia","","Brasilia","DF");

INSERT INTO TB_ENDERECO VALUES("29","Qr205 conjunto 2 casa 18","Próximo ao batalhão","Norte","72341202","Samambaia","DF");

INSERT INTO TB_ENDERECO VALUES("30","Qr 403 conjunto 16","Casa 17","Samambaia Norte","72319117","Samambaia Norte","DF");

INSERT INTO TB_ENDERECO VALUES("31","Qr 403 conjunto 16","Casa 17","Samambaia Norte","72319911","Samambaia Norte","DF");

INSERT INTO TB_ENDERECO VALUES("32","QUADRA QNP 15 CONJUNTO S","33","P.norte","72241619","BRASÍLIA","DF");

INSERT INTO TB_ENDERECO VALUES("33","Rua 4c chácara 2 lote 23A","","Vicente pires","72001605","Brasilia","DF");

INSERT INTO TB_ENDERECO VALUES("34","Qn 211 conjunto 01 casa 35","","Samambaia","72343051","Brasilia","DF");

INSERT INTO TB_ENDERECO VALUES("35","QR 405 Conjunto 21 Casa 26","","Samambaia Norte","72319221","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("36","QR 405 Conjunto 21 Casa 26","","Samambaia Norte","72319221","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("37","QR 403 conj 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("39","Qr 421 conjunto 09","casa 11","Samambaia Norte","72325110","Samambaia","DF");

INSERT INTO TB_ENDERECO VALUES("40","SHSN - CHACARA 36 CONJUNTO 09 CASA 06","CASA","P.Sul","72236800","CEILANDIA SUL","DF");

INSERT INTO TB_ENDERECO VALUES("41","Qr 118 conjunto 06 lote 09","","Samambaia Sul","72302807","Samambaia ","DF");

INSERT INTO TB_ENDERECO VALUES("42","Qr 118 conjunto 6 lote 9","","Samambaia Sul","72302807","Samambaia ","DF");

INSERT INTO TB_ENDERECO VALUES("43","Qr 118 cj 06 Lt09 cs 01","","","72302807","Samambaia Df","DF");

INSERT INTO TB_ENDERECO VALUES("44","QR 403 conjunto 09","Casa 18","Samambaia norte","72319110","Samambaia ","DF");

INSERT INTO TB_ENDERECO VALUES("47","Quadra 46 lote 14 santa lucia","Águas lindas 2","Santa lucia","72927535","Águas lindas ","GO");

INSERT INTO TB_ENDERECO VALUES("48","QI 03 Lote 23","","Setor de Industrias","72265030","Ceilândia ","DF");




DROP TABLE IF EXISTS TB_EVENTO;


CREATE TABLE `TB_EVENTO` (
  `co_evento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_evento` varchar(250) DEFAULT NULL,
  `ds_conteudo` text,
  `ds_palavras_chaves` varchar(100) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_realizado` date DEFAULT NULL,
  `ds_local` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`co_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_FUNCIONALIDADE;


CREATE TABLE `TB_FUNCIONALIDADE` (
  `co_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `no_funcionalidade` varchar(150) NOT NULL,
  `ds_rota` varchar(250) NOT NULL,
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT 'A - Ativo / I - Inativo',
  PRIMARY KEY (`co_funcionalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


INSERT INTO TB_FUNCIONALIDADE VALUES("1","Perfil Master","Admin/Index/SuperPerfil","A");

INSERT INTO TB_FUNCIONALIDADE VALUES("2","Auditoria Listar","Admin/Auditoria/ListarAuditoria","A");

INSERT INTO TB_FUNCIONALIDADE VALUES("3","Auditoria Detalhar","Admin/Auditoria/DetalharAuditoria","A");

INSERT INTO TB_FUNCIONALIDADE VALUES("4","Usuario Cadastrar","Admin/Usuario/CadastroUsuario","A");

INSERT INTO TB_FUNCIONALIDADE VALUES("5","Usuario Listar","Admin/Usuario/ListarUsuario","A");

INSERT INTO TB_FUNCIONALIDADE VALUES("6","Meu Usuario","Admin/Usuario/MeuPerfilUsuario","A");

INSERT INTO TB_FUNCIONALIDADE VALUES("7","Perfil Listar","Admin/Perfil/ListarPerfil","A");

INSERT INTO TB_FUNCIONALIDADE VALUES("8","Perfil Cadastrar","Admin/Perfil/CadastroPerfil","A");

INSERT INTO TB_FUNCIONALIDADE VALUES("9","Funcionalidade Listar","Admin/Funcionalidade/ListarFuncionalidade","A");

INSERT INTO TB_FUNCIONALIDADE VALUES("10","Funcionalidade Cadastrar","Admin/Funcionalidade/CadastroFuncionalidade","A");

INSERT INTO TB_FUNCIONALIDADE VALUES("11","Funcionalidades Perfil","Admin/Funcionalidade/FuncionalidadesPerfil","A");

INSERT INTO TB_FUNCIONALIDADE VALUES("12","Listar Inscrição","admin/Inscricao/ListarInscricao","I");




DROP TABLE IF EXISTS TB_IMAGEM;


CREATE TABLE `TB_IMAGEM` (
  `co_imagem` int(10) NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;


INSERT INTO TB_IMAGEM VALUES("1","leonardo-m-c-bessa-56e8920c23ab6.jpg");

INSERT INTO TB_IMAGEM VALUES("2","amanda-tominaga-5a255cea199ad.jpg");

INSERT INTO TB_IMAGEM VALUES("3","igor-borges-leite-5a255f7c41f75.jpg");

INSERT INTO TB_IMAGEM VALUES("4","brenda-nayane-duda-moreira-5a25807eb2270.jpg");

INSERT INTO TB_IMAGEM VALUES("5","amaury-costa-silva-ramos-5a2586f59c0e0.jpg");

INSERT INTO TB_IMAGEM VALUES("6","henrique-carvalho-assuncao-5a259c70e65a0.jpg");

INSERT INTO TB_IMAGEM VALUES("7","amanda-silva-lima-5a259f4e532ad.jpg");

INSERT INTO TB_IMAGEM VALUES("8","jerlane-soares-magalhaes-da-silva-5a25a537f1d0c.jpg");

INSERT INTO TB_IMAGEM VALUES("9","joao-victor-pereira-fernandes-5a25a62b62be8.jpg");

INSERT INTO TB_IMAGEM VALUES("10","karen-geovanna-figueredo-dos-santos-5a25b4f1383d9.jpg");

INSERT INTO TB_IMAGEM VALUES("11","thais-lima-rocha-5a25bc8aba273.jpg");

INSERT INTO TB_IMAGEM VALUES("12","thais-lima-rocha-5a25bcd7719e2.jpg");

INSERT INTO TB_IMAGEM VALUES("13","fabricio-alves-oliveira-5a25e55ada86d.jpeg");

INSERT INTO TB_IMAGEM VALUES("14","isabela-araujo-dos-santos-5a25ec017aab5.jpeg");

INSERT INTO TB_IMAGEM VALUES("15","vitoria-p-lima-5a25fb07f2f3f.jpg");

INSERT INTO TB_IMAGEM VALUES("16","lucas-cunha-ribeiro-5a2671509f2e6.jpg");

INSERT INTO TB_IMAGEM VALUES("17","wallisson-matias-de-sousa-5a2687e5d3b36.jpg");

INSERT INTO TB_IMAGEM VALUES("18","manuela-correa-marangoni-5a2699bda4bb7.JPG");

INSERT INTO TB_IMAGEM VALUES("19","priscila-martins-matias-5a26a59585921.jpg");

INSERT INTO TB_IMAGEM VALUES("20","mercia-batista-miranda-5a26bd6a8321f.html");

INSERT INTO TB_IMAGEM VALUES("21","veronica-cristina-de-lima-ribeiro-5a275871ad572.JPG");

INSERT INTO TB_IMAGEM VALUES("22","kamila-silva-5a276f0ae6653.JPG");

INSERT INTO TB_IMAGEM VALUES("23","diogo-da-silva-cardoso-5a28962de2ab7.jpg");

INSERT INTO TB_IMAGEM VALUES("24","cassio-rodrigues-castro-5a28a6cd3d36c.jpg");

INSERT INTO TB_IMAGEM VALUES("25","catherine-mendes-de-jesus-5a2999b0286fe.jpg");

INSERT INTO TB_IMAGEM VALUES("26","eduardo-pires-tominaga-5a29bed5a0225.jpg");

INSERT INTO TB_IMAGEM VALUES("27","thainata-tonha-de-santana-5a2a7763a5979.jpg");

INSERT INTO TB_IMAGEM VALUES("28","raul-dia-miranda-cardoso-5a2b37130d776.jpg");

INSERT INTO TB_IMAGEM VALUES("29","erica-stephanie-de-sousa-carvalho-5a2b3b4ca719f.jpg");

INSERT INTO TB_IMAGEM VALUES("30","lucrece-neri-portela-5a2bca0cec4f3.png");

INSERT INTO TB_IMAGEM VALUES("31","");

INSERT INTO TB_IMAGEM VALUES("32","pedro-augusto-pacheco-5a2c20026bda4.png");

INSERT INTO TB_IMAGEM VALUES("33","gabriella-lima-tonha-5a2c31037a294.jpg");

INSERT INTO TB_IMAGEM VALUES("34","raul-dias-miranda-cardoso-5a2dc30837843.jpg");

INSERT INTO TB_IMAGEM VALUES("35","luana-ribeiro-bessa-5a2dd618a02ec.jpg");

INSERT INTO TB_IMAGEM VALUES("36","luana-ribeiro-bessa-5a2dd73e1d6dd.jpg");

INSERT INTO TB_IMAGEM VALUES("37","leticia-machado-carvalho-bessa-5a2ed7ed5b120.jpg");

INSERT INTO TB_IMAGEM VALUES("38","evelyn-ribeiro-da-silva-5a2edf7d99956.jpg");

INSERT INTO TB_IMAGEM VALUES("39","vitoria-prudencio-lima-5a2ee1c7795ee.jpg");

INSERT INTO TB_IMAGEM VALUES("40","lara-de-sousa-almeida-5a2eeafd99646.jpg");

INSERT INTO TB_IMAGEM VALUES("41","gabriela-mendes-souza-5a2ef5fb55046.JPG");

INSERT INTO TB_IMAGEM VALUES("42","daniela-mendes-de-souza-5a2ef759696ef.JPG");

INSERT INTO TB_IMAGEM VALUES("43","isabella-garcia-mendes-5a2fea875ed9d.jpeg");

INSERT INTO TB_IMAGEM VALUES("44","vitor-hugo-barroso-5a2ff9d0975a9.jpg");

INSERT INTO TB_IMAGEM VALUES("45","lara-de-sousa-almeida-5a30086bea207.jpg");

INSERT INTO TB_IMAGEM VALUES("46","antonio-carlos-ramos-lima-5a3281c7028bd.jpg");

INSERT INTO TB_IMAGEM VALUES("47","antonio-carlos-ramos-lima-5a328901f34d8.jpg");

INSERT INTO TB_IMAGEM VALUES("48","larissa-mesquita-5a3548a6d260a.jpeg");




DROP TABLE IF EXISTS TB_INSCRICAO;


CREATE TABLE `TB_INSCRICAO` (
  `co_inscricao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_pastoral` text,
  `ds_retiro` varchar(1) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_membro_ativo` varchar(1) DEFAULT 'N',
  `st_equipe_trabalho` varchar(1) DEFAULT 'N',
  `ds_situacao_atual_grupo` int(1) DEFAULT NULL,
  `nu_camisa` int(1) NOT NULL,
  `no_responsavel` varchar(50) NOT NULL,
  `nu_tel_responsavel` varchar(15) NOT NULL,
  `ds_descricao` text,
  `ds_medicacao` text,
  `ds_alimentacao` text,
  `co_pessoa` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  PRIMARY KEY (`co_inscricao`,`co_pessoa`,`co_imagem`),
  KEY `fk_TB_INSCRICAO_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_INSCRICAO_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;


INSERT INTO TB_INSCRICAO VALUES("1","","N","2017-12-04 12:34:17","N","N","","4","LEILA TOMINAGA","61982522602","Sou diabética.\nSou top\nSou Filha de Dom Bosco \nA neném dos tios Tominaga","","","2","2");

INSERT INTO TB_INSCRICAO VALUES("2","","S","2017-12-04 12:45:16","N","N","","8","MãE","6134588070","Sou o Igor! ","","","3","3");

INSERT INTO TB_INSCRICAO VALUES("3","Grupo Jovem Arcanjos e EJNS","S","2017-12-04 15:06:05","N","N","","2","MINHA MãE LúCIA","61986280131","Não sei falar muito sobre mim não, mas tudo bem.. Tenho 17 anos, gosto de participar de retiros e eu amei participar do Santifique-se esse ano.. Gosto de dançar, ler, estudar e aprender coisas diferentes ou no mínimo novas, além de conversar e ouvir as pessoas.","","","4","4");

INSERT INTO TB_INSCRICAO VALUES("4","GEJ Dom Bosco","S","2017-12-04 15:33:41","S","N","","8","MãE ","61991774916","Sou um rapaz muito ativo, participativo, alegre é muito sério também.\nNão sou muito fã de falar de mim, mas sou isto e um pouco mais !","","","5","5");

INSERT INTO TB_INSCRICAO VALUES("5","Acólitos e coroinhas","N","2017-12-04 17:05:20","S","N","","7","MãE ","62999535024","Sou gente boa","","","6","6");

INSERT INTO TB_INSCRICAO VALUES("6","","N","2017-12-04 17:17:34","S","N","","3","KêNIA ","6130825870","Amanda\n19 anos","","","7","7");

INSERT INTO TB_INSCRICAO VALUES("7","Gej","N","2017-12-04 17:42:47","S","N","","2","MINHA MãE ","61994186538","Eu me chamo Jerlane sou do gej tenho  16 anos sou extrovertida brincalhona meiga seria amuuh participar dos eventos do gej amuuh fazer amizade com as pessoas","","","8","8");

INSERT INTO TB_INSCRICAO VALUES("8","","S","2017-12-04 17:46:51","N","N","","9","MARIA OZENITA PEREIRA","6182361967","Não tenho nenhum tipo de alergia","","","9","9");

INSERT INTO TB_INSCRICAO VALUES("9","GEJ DOM BOSCO","S","2017-12-04 18:49:53","S","N","","3","DENISE","6134595330","Trago dentro de mim um pouco da alegria que vem de Deus! *-*","","","10","10");

INSERT INTO TB_INSCRICAO VALUES("10","Renovaćao carismatica do Santuário Sao Francisco","S","2017-12-04 19:22:18","N","N","","1","ELIANE","61982257021","Trabalho como professora, catolica praticante e gostaria de participar para me fortalecer e fortalecer a fé.","","","11","11");

INSERT INTO TB_INSCRICAO VALUES("12","GEJ Dom Bosco","S","2017-12-04 22:16:26","S","N","","9","PAI ","6182701888","Carismático e desinibido.","","","13","13");

INSERT INTO TB_INSCRICAO VALUES("13","GEJ Dom Bosco","S","2017-12-04 22:44:49","S","N","","3","MãE ","6181214179","Desinibida.","","","14","14");

INSERT INTO TB_INSCRICAO VALUES("14","GEJ DOM BOSCO","S","2017-12-04 23:48:55","S","N","","4","PAI","61992197688","Feliz","","","15","15");

INSERT INTO TB_INSCRICAO VALUES("15","","N","2017-12-05 08:13:36","S","N","","7","MARIA JOSé","6133593245","Membro da equipe de música Gej Dom Bosco, ex-acólito e cerimoniário da Paróquia São José Operário.","","","16","16");

INSERT INTO TB_INSCRICAO VALUES("16","","S","2017-12-05 09:49:57","N","N","","3","NEILDO","6132086444","Hellou sou wallisson tenho 18 anos, isso durante a inscrição, participo da igreja desde de muito novo mas só resolvi viver na fé católica á pouco tempo. Participo do grupo de cerimôniarios em minha paróquia e um outro grupo jovem, fillis Mater Dei .","","","17","17");

INSERT INTO TB_INSCRICAO VALUES("17","EJNS","S","2017-12-05 11:06:05","N","N","","3","MINHA MãE CAROL","61992091401","Sou tímida, gosto de jogar futebol ou qualquer esporte.","","","18","18");

INSERT INTO TB_INSCRICAO VALUES("18","GEJ-Dom bosco","S","2017-12-05 11:56:37","S","N","","2","RITA MARIA ","6133593574","Otima pessoa para se conviver.","","","19","19");

INSERT INTO TB_INSCRICAO VALUES("19","grupo jovem luz e fogo","S","2017-12-05 13:38:18","N","N","","5","MARISA ","61991157598","bom falar de mim e um pouco difícil pois eu sou  uma pessoa muito descontraída que  amo Deus .","","","20","20");

INSERT INTO TB_INSCRICAO VALUES("20","","N","2017-12-06 00:39:45","N","N","","2","MARIO ROBERTO","61983261868","Meu nome é Verônica, tenho 17 anos, não participo de nenhuma pastoral, mas todo domingo vou a missa. Sou uma pessoa muito feliz e que ama a igreja católica.","","","21","21");

INSERT INTO TB_INSCRICAO VALUES("21","GEJ DOM BOSCO","S","2017-12-06 02:16:10","S","N","","6","MãE ","61986130447","oie, sou tolerante a lactose e sensível à glúten então plmrdds lembrem-se disso quando forem montar o cardápio, grata. \nP.S.: ficou faltando um lugarzinho para colocar restrições alimentares e se tem alguma doença/se precisa de medicação.","","","22","22");

INSERT INTO TB_INSCRICAO VALUES("22","Catequese, Cerimoniários e Música","N","2017-12-06 23:15:25","N","N","","6","MARIA DAS GRAçAS","6134593014","Há um tempo que já estou na caminhada, além disso, sou consagrado à Santíssima Virgem e participo da Paróquia Santo Inácio de Loyola.","","","23","23");

INSERT INTO TB_INSCRICAO VALUES("23","Assunção","S","2017-12-07 00:26:21","N","N","","6","BEATRIZ","61993116666","Sou bastante amigo e faço amizade rápido","","","24","24");

INSERT INTO TB_INSCRICAO VALUES("24","Ministério de Coroinhas e Acólitos de São Tarcísio, Ministério Jovem (RCC)","S","2017-12-07 17:42:39","N","N","","4","EDI ","61986521612","Sou uma garota que não faz muito tempo q se converteu por inteiro, mais ou menos 1 ano.\nFui pro meu 1° retiro faz pouco tempo, e foi uma graça, estou querendo ir para esse para começar o ano com o pé direito mas graça de Deus","","","25","25");

INSERT INTO TB_INSCRICAO VALUES("25","Grupo de Coroinhas, Grupo Jovem Adonai","S","2017-12-07 20:21:09","N","N","","7","LEILA TOMINAGA","61982512602","Filho dos Tios Tominaga, Irmão da Tominaga. \n##########  Saúde ###########\n- Alergia a temperos industriais(Sazon, Ajinomoto, Knorr, Maggi e etc).\n- Sangue tipo B+","","","26","26");

INSERT INTO TB_INSCRICAO VALUES("26","","N","2017-12-08 09:28:35","N","N","","7","ANDERSON JOAQUIM DE SANTANA","6132018084","Sou uma pessoa pouco comunicativa com quem não conheço. Odeio falsidade. Estou tá igreja tem um tempinho mas dei uma afastada e estou querendo voltar.","","","27","27");

INSERT INTO TB_INSCRICAO VALUES("27","Gej","S","2017-12-08 23:06:26","S","N","","7","MãE ","6133598257","Mmmmm","","","28","28");

INSERT INTO TB_INSCRICAO VALUES("28","Gej dom Bosco","S","2017-12-08 23:24:28","S","N","","3","MãE","6133571919","Sou tranquila,eu gosto de fazer as minhas coisas na hora certa","","","29","29");

INSERT INTO TB_INSCRICAO VALUES("29","","N","2017-12-09 09:33:32","N","N","","4","LUCILENE AGUIAR","6195990533","Feliz...","","","30","30");

INSERT INTO TB_INSCRICAO VALUES("30","","N","2017-12-09 15:40:18","N","N","","4","GESLâNIA ","6199043516","Fui convidado por um membro do grupo e  decidi participar para ouvir sobre a palavra do senhor  e conhecer o pessoal da igreja com o intuito de complemento ao grupo","","","32","32");

INSERT INTO TB_INSCRICAO VALUES("31","Guardiãs","S","2017-12-09 16:52:51","N","N","","5","LUCIENE ","61996979071","Sou uma pessoa tranquila,amo as coisas de igreja, gosto de fazer novas amizades","","","33","33");

INSERT INTO TB_INSCRICAO VALUES("32","GEJ Dom Bosco","S","2017-12-10 22:49:28","S","N","","4","LEDA","61992724933","Ser aquilo que Deus quer fazer de mim!","","","35","35");

INSERT INTO TB_INSCRICAO VALUES("33","","S","2017-12-11 19:17:46","N","N","","3","ROSANGELA ALVES MENDES ","61985548484","Sou uma universitária e frenquento a igreja Católica.","Não","Não","41","41");

INSERT INTO TB_INSCRICAO VALUES("34","","S","2017-12-11 19:23:37","N","N","","4","ROSANGELA ALVES MENDES ","61985548484","Sou estudante e frenquento a igreja Católica.","Não","Não","42","42");

INSERT INTO TB_INSCRICAO VALUES("35","","S","2017-12-12 13:46:24","N","N","","7","ELIETE","61986325346","Não","Não","Não","44","44");

INSERT INTO TB_INSCRICAO VALUES("36","","S","2017-12-14 12:21:53","N","N","","7","BRENA KESSIA","61992563934","Olá sou carlos sou tranquilo trabalho de pedreiro estou a procura da igreja entender mais de Deus me sentir na presença dele estou precisando por isso estou animado ir para esse retiro. .","Nao","Nao","47","47");

INSERT INTO TB_INSCRICAO VALUES("37","","S","2017-12-16 14:24:06","N","N","","3","JOSé EVARISTO","61981019362","Faço parte da Equipe Jovem AJUC, sempre fui católica, sou pouco tímida","Não","Não","48","48");




DROP TABLE IF EXISTS TB_MEMBRO;


CREATE TABLE `TB_MEMBRO` (
  `co_membro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_responsavel` varchar(100) DEFAULT NULL,
  `st_estuda` varchar(1) DEFAULT NULL,
  `st_trabalha` varchar(1) DEFAULT NULL,
  `ds_conhecimento` text,
  `st_status` varchar(1) DEFAULT NULL,
  `st_batizado` varchar(1) NOT NULL,
  `st_eucaristia` varchar(1) NOT NULL,
  `st_crisma` varchar(1) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`co_membro`,`co_pessoa`),
  KEY `fk_TB_MEMBRO_TB_PESSOA1_idx` (`co_pessoa`),
  CONSTRAINT `fk_TB_MEMBRO_TB_PESSOA1` FOREIGN KEY (`co_pessoa`) REFERENCES `TB_PESSOA` (`co_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PAGAMENTO;


CREATE TABLE `TB_PAGAMENTO` (
  `co_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_total` decimal(10,2) DEFAULT NULL,
  `nu_valor_pago` decimal(10,2) DEFAULT NULL,
  `nu_parcelas` int(11) DEFAULT NULL,
  `tp_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciado / I - Iniciado / C - Concluido',
  `ds_observacao` text,
  `co_inscricao` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_pagamento`,`co_inscricao`),
  KEY `fk_TB_PAGAMENTO_TB_INSCRICAO1_idx` (`co_inscricao`),
  CONSTRAINT `fk_TB_PAGAMENTO_TB_INSCRICAO1` FOREIGN KEY (`co_inscricao`) REFERENCES `TB_INSCRICAO` (`co_inscricao`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;


INSERT INTO TB_PAGAMENTO VALUES("1","150.00","","1","N","","1");

INSERT INTO TB_PAGAMENTO VALUES("2","150.00","","1","N","","2");

INSERT INTO TB_PAGAMENTO VALUES("3","150.00","","1","N","","3");

INSERT INTO TB_PAGAMENTO VALUES("4","150.00","","1","N","","4");

INSERT INTO TB_PAGAMENTO VALUES("5","150.00","","1","N","","5");

INSERT INTO TB_PAGAMENTO VALUES("6","150.00","","1","N","","6");

INSERT INTO TB_PAGAMENTO VALUES("7","150.00","","1","N","","7");

INSERT INTO TB_PAGAMENTO VALUES("8","150.00","","1","N","","8");

INSERT INTO TB_PAGAMENTO VALUES("9","150.00","","1","N","","9");

INSERT INTO TB_PAGAMENTO VALUES("10","150.00","","1","N","","10");

INSERT INTO TB_PAGAMENTO VALUES("11","150.00","","1","N","","12");

INSERT INTO TB_PAGAMENTO VALUES("12","150.00","","1","N","","13");

INSERT INTO TB_PAGAMENTO VALUES("14","150.00","","1","N","","14");

INSERT INTO TB_PAGAMENTO VALUES("15","150.00","","1","N","","15");

INSERT INTO TB_PAGAMENTO VALUES("16","160.00","","1","N","","16");

INSERT INTO TB_PAGAMENTO VALUES("17","150.00","","1","N","","17");

INSERT INTO TB_PAGAMENTO VALUES("18","150.00","","1","N","","18");

INSERT INTO TB_PAGAMENTO VALUES("19","150.00","","1","N","","23");

INSERT INTO TB_PAGAMENTO VALUES("20","150.00","","1","N","","19");

INSERT INTO TB_PAGAMENTO VALUES("21","150.00","","1","N","","20");

INSERT INTO TB_PAGAMENTO VALUES("22","150.00","","1","N","","21");

INSERT INTO TB_PAGAMENTO VALUES("23","150.00","","1","N","","22");

INSERT INTO TB_PAGAMENTO VALUES("24","150.00","","1","N","","25");

INSERT INTO TB_PAGAMENTO VALUES("25","150.00","","1","N","","24");

INSERT INTO TB_PAGAMENTO VALUES("26","160.00","","1","N","","26");

INSERT INTO TB_PAGAMENTO VALUES("27","150.00","","1","N","","27");

INSERT INTO TB_PAGAMENTO VALUES("28","150.00","","1","N","","28");

INSERT INTO TB_PAGAMENTO VALUES("29","150.00","","1","N","","29");

INSERT INTO TB_PAGAMENTO VALUES("30","150.00","","1","N","","30");

INSERT INTO TB_PAGAMENTO VALUES("31","150.00","","1","N","","31");

INSERT INTO TB_PAGAMENTO VALUES("32","160.00","","1","N","","32");

INSERT INTO TB_PAGAMENTO VALUES("34","150.00","","1","N","","33");

INSERT INTO TB_PAGAMENTO VALUES("35","150.00","","1","N","","34");

INSERT INTO TB_PAGAMENTO VALUES("37","150.00","","1","N","","35");

INSERT INTO TB_PAGAMENTO VALUES("42","160.00","","1","N","","36");

INSERT INTO TB_PAGAMENTO VALUES("43","150.00","","1","N","","37");




DROP TABLE IF EXISTS TB_PARCELAMENTO;


CREATE TABLE `TB_PARCELAMENTO` (
  `co_parcelamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_parcela` int(11) DEFAULT NULL,
  `nu_valor_parcela` decimal(10,2) DEFAULT NULL,
  `nu_valor_parcela_pago` decimal(10,2) DEFAULT NULL,
  `dt_vencimento` date DEFAULT NULL,
  `dt_vencimento_pago` date DEFAULT NULL,
  `ds_observacao` text,
  `co_pagamento` int(11) NOT NULL,
  `co_tipo_pagamento` int(11) NOT NULL,
  PRIMARY KEY (`co_parcelamento`,`co_pagamento`,`co_tipo_pagamento`),
  KEY `fk_TB_PARCELAMENTO_TB_PAGAMENTO1_idx` (`co_pagamento`),
  KEY `fk_TB_PARCELAMENTO_TB_TIPO_PAGAMENTO1_idx` (`co_tipo_pagamento`),
  CONSTRAINT `fk_TB_PARCELAMENTO_TB_PAGAMENTO1` FOREIGN KEY (`co_pagamento`) REFERENCES `TB_PAGAMENTO` (`co_pagamento`),
  CONSTRAINT `fk_TB_PARCELAMENTO_TB_TIPO_PAGAMENTO1` FOREIGN KEY (`co_tipo_pagamento`) REFERENCES `TB_TIPO_PAGAMENTO` (`co_tipo_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;


INSERT INTO TB_PARCELAMENTO VALUES("72","1","150.00","","2017-12-14","","","1","1");

INSERT INTO TB_PARCELAMENTO VALUES("73","1","150.00","","2017-12-14","","","2","1");

INSERT INTO TB_PARCELAMENTO VALUES("74","1","150.00","","2017-12-14","","","3","1");

INSERT INTO TB_PARCELAMENTO VALUES("75","1","150.00","","2017-12-14","","","4","1");

INSERT INTO TB_PARCELAMENTO VALUES("76","1","150.00","","2017-12-14","","","5","1");

INSERT INTO TB_PARCELAMENTO VALUES("77","1","150.00","","2017-12-14","","","6","1");

INSERT INTO TB_PARCELAMENTO VALUES("78","1","150.00","","2017-12-14","","","7","1");

INSERT INTO TB_PARCELAMENTO VALUES("79","1","150.00","","2017-12-14","","","8","1");

INSERT INTO TB_PARCELAMENTO VALUES("80","1","150.00","","2017-12-14","","","9","1");

INSERT INTO TB_PARCELAMENTO VALUES("81","1","150.00","","2017-12-14","","","10","1");

INSERT INTO TB_PARCELAMENTO VALUES("82","1","150.00","","2017-12-14","","","11","1");

INSERT INTO TB_PARCELAMENTO VALUES("83","1","150.00","","2017-12-14","","","12","1");

INSERT INTO TB_PARCELAMENTO VALUES("84","1","150.00","","2017-12-14","","","14","1");

INSERT INTO TB_PARCELAMENTO VALUES("85","1","150.00","","2017-12-14","","","15","1");

INSERT INTO TB_PARCELAMENTO VALUES("86","1","160.00","","2017-12-14","","","16","1");

INSERT INTO TB_PARCELAMENTO VALUES("87","1","150.00","","2017-12-14","","","17","1");

INSERT INTO TB_PARCELAMENTO VALUES("88","1","150.00","","2017-12-14","","","18","1");

INSERT INTO TB_PARCELAMENTO VALUES("89","1","150.00","","2017-12-14","","","20","1");

INSERT INTO TB_PARCELAMENTO VALUES("90","1","150.00","","2017-12-14","","","21","1");

INSERT INTO TB_PARCELAMENTO VALUES("91","1","150.00","","2017-12-14","","","22","1");

INSERT INTO TB_PARCELAMENTO VALUES("92","1","150.00","","2017-12-14","","","23","1");

INSERT INTO TB_PARCELAMENTO VALUES("93","1","150.00","","2017-12-14","","","19","1");

INSERT INTO TB_PARCELAMENTO VALUES("94","1","150.00","","2017-12-14","","","25","1");

INSERT INTO TB_PARCELAMENTO VALUES("95","1","150.00","","2017-12-14","","","24","1");

INSERT INTO TB_PARCELAMENTO VALUES("96","1","160.00","","2017-12-14","","","26","1");

INSERT INTO TB_PARCELAMENTO VALUES("97","1","150.00","","2017-12-14","","","27","1");

INSERT INTO TB_PARCELAMENTO VALUES("98","1","150.00","","2017-12-14","","","28","1");

INSERT INTO TB_PARCELAMENTO VALUES("99","1","150.00","","2017-12-14","","","29","1");

INSERT INTO TB_PARCELAMENTO VALUES("100","1","150.00","","2017-12-14","","","30","1");

INSERT INTO TB_PARCELAMENTO VALUES("101","1","150.00","","2017-12-14","","","31","1");

INSERT INTO TB_PARCELAMENTO VALUES("102","1","160.00","","2017-12-14","","","32","1");

INSERT INTO TB_PARCELAMENTO VALUES("103","1","150.00","","2017-12-14","","","34","1");

INSERT INTO TB_PARCELAMENTO VALUES("104","1","150.00","","2017-12-14","","","35","1");

INSERT INTO TB_PARCELAMENTO VALUES("105","1","150.00","","2017-12-14","","","37","1");

INSERT INTO TB_PARCELAMENTO VALUES("106","1","160.00","","2017-12-14","","","42","2");

INSERT INTO TB_PARCELAMENTO VALUES("107","1","150.00","","2017-12-16","","","43","1");




DROP TABLE IF EXISTS TB_PERFIL;


CREATE TABLE `TB_PERFIL` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL,
  `st_status` varchar(1) DEFAULT 'I',
  PRIMARY KEY (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


INSERT INTO TB_PERFIL VALUES("1","Master","A");

INSERT INTO TB_PERFIL VALUES("2","Coordenador","A");

INSERT INTO TB_PERFIL VALUES("3","Membro","A");

INSERT INTO TB_PERFIL VALUES("4","Comissão","A");




DROP TABLE IF EXISTS TB_PERFIL_FUNCIONALIDADE;


CREATE TABLE `TB_PERFIL_FUNCIONALIDADE` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_perfil` int(11) NOT NULL,
  `co_funcionalidade` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_perfil`,`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil`),
  CONSTRAINT `fk_tb_perfil_tb_funcionalidade_tb_perfil1` FOREIGN KEY (`co_perfil`) REFERENCES `TB_PERFIL` (`co_perfil`),
  CONSTRAINT `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1` FOREIGN KEY (`co_funcionalidade`) REFERENCES `TB_FUNCIONALIDADE` (`co_funcionalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("1","1","1");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("5","2","5");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("4","3","6");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("6","2","6");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("8","4","6");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("7","2","12");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("9","4","12");




DROP TABLE IF EXISTS TB_PESSOA;


CREATE TABLE `TB_PESSOA` (
  `co_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nu_cpf` varchar(15) DEFAULT NULL,
  `no_pessoa` varchar(100) NOT NULL,
  `nu_rg` varchar(15) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `st_sexo` varchar(1) DEFAULT NULL,
  `co_contato` int(11) NOT NULL,
  `co_endereco` int(11) NOT NULL,
  PRIMARY KEY (`co_pessoa`,`co_contato`,`co_endereco`),
  KEY `fk_TB_PESSOA_TB_CONTATO1_idx` (`co_contato`),
  KEY `fk_TB_PESSOA_TB_ENDERECO1_idx` (`co_endereco`),
  CONSTRAINT `fk_TB_PESSOA_TB_CONTATO1` FOREIGN KEY (`co_contato`) REFERENCES `TB_CONTATO` (`co_contato`),
  CONSTRAINT `fk_TB_PESSOA_TB_ENDERECO1` FOREIGN KEY (`co_endereco`) REFERENCES `TB_ENDERECO` (`co_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;


INSERT INTO TB_PESSOA VALUES("1","72681438187","Leonardo Machado Carvalho Bessa","2077811","2016-10-31 00:00:00","1984-07-06","M","1","1");

INSERT INTO TB_PESSOA VALUES("2","06820934165","AMANDA TOMINAGA ","3856116","2017-12-04 12:34:17","2002-08-27","F","2","2");

INSERT INTO TB_PESSOA VALUES("3","04267851182","IGOR BORGES LEITE","3009052","2017-12-04 12:45:16","1996-02-25","M","3","3");

INSERT INTO TB_PESSOA VALUES("4","07332354179","BRENDA NAYANE DUDA MOREIRA","","2017-12-04 15:06:05","2000-07-12","F","4","4");

INSERT INTO TB_PESSOA VALUES("5","05858600174","AMAURY COSTA SILVA RAMOS ","3094934","2017-12-04 15:33:41","1996-12-17","M","5","5");

INSERT INTO TB_PESSOA VALUES("6","05418337157","HENRIQUE CARVALHO ASSUNçãO","","2017-12-04 17:05:20","1996-02-12","M","6","6");

INSERT INTO TB_PESSOA VALUES("7","03667767110","AMANDA SILVA LIMA","3325124","2017-12-04 17:17:34","1998-05-06","F","7","7");

INSERT INTO TB_PESSOA VALUES("8","07353224142","JERLANE SOARES MAGALHãES DA SILVA","3739423","2017-12-04 17:42:47","2001-02-06","F","8","8");

INSERT INTO TB_PESSOA VALUES("9","07970134157","JOãO VICTOR PEREIRA FERNANDES ","3947853","2017-12-04 17:46:51","2002-03-18","M","9","9");

INSERT INTO TB_PESSOA VALUES("10","06050858110","KAREN GEOVANNA FIGUEREDO DOS SANTOS","","2017-12-04 18:49:53","1998-04-17","F","10","10");

INSERT INTO TB_PESSOA VALUES("11","00666264120","THAIS LIMA ROCHA ","2582737","2017-12-04 19:22:18","1988-05-21","F","11","11");

INSERT INTO TB_PESSOA VALUES("13","02858427143","FABRíCIO ALVES OLIVEIRA ","3558631","2017-12-04 22:16:26","2001-07-05","M","13","13");

INSERT INTO TB_PESSOA VALUES("14","07128618155","ISABELA ARáUJO DOS SANTOS ","3694686","2017-12-04 22:44:49","2001-07-14","F","14","14");

INSERT INTO TB_PESSOA VALUES("15","05519198179","VITóRIA P LIMA","3287537","2017-12-04 23:48:55","1998-06-21","F","15","15");

INSERT INTO TB_PESSOA VALUES("16","04705500156","LUCAS CUNHA RIBEIRO","3089535","2017-12-05 08:13:36","1994-06-09","M","16","16");

INSERT INTO TB_PESSOA VALUES("17","06565286132","WALLISSON MATíAS DE SOUSA ","3563548","2017-12-05 09:49:57","1998-12-24","M","17","17");

INSERT INTO TB_PESSOA VALUES("18","05418222171","MANUELA CORREA MARANGONI","","2017-12-05 11:06:05","2000-02-25","F","18","18");

INSERT INTO TB_PESSOA VALUES("19","06408735100","PRISCILA MARTINS MATIAS","3480987","2017-12-05 11:56:37","1999-02-03","F","19","19");

INSERT INTO TB_PESSOA VALUES("20","03509067185","MéRCIA BATISTA MIRANDA ","3042300","2017-12-05 13:38:18","1994-09-17","F","20","20");

INSERT INTO TB_PESSOA VALUES("21","07728521110","VERôNICA CRISTINA DE LIMA RIBEIRO","3714612","2017-12-06 00:39:45","2000-09-13","F","21","21");

INSERT INTO TB_PESSOA VALUES("22","06244035135","KAMILA SILVA ","3433231","2017-12-06 02:16:10","1999-01-17","F","22","22");

INSERT INTO TB_PESSOA VALUES("23","05870295106","DIOGO DA SILVA CARDOSO","","2017-12-06 23:15:25","1996-12-17","M","23","23");

INSERT INTO TB_PESSOA VALUES("24","06411059160","CáSSIO RODRIGUES CASTRO","","2017-12-07 00:26:21","1997-03-16","M","24","24");

INSERT INTO TB_PESSOA VALUES("25","07025713180","CATHERINE MENDES DE JESUS","3876679","2017-12-07 17:42:39","2003-12-02","F","25","25");

INSERT INTO TB_PESSOA VALUES("26","06820939124","EDUARDO PIRES TOMINAGA","3734569","2017-12-07 20:21:09","2000-10-17","M","26","26");

INSERT INTO TB_PESSOA VALUES("27","05241966137","THAINATA TONHA DE SANTANA","3211173","2017-12-08 09:28:35","1999-03-22","F","27","27");

INSERT INTO TB_PESSOA VALUES("28","06597113110","RAUL DIA MIRANDA CARDOSO","3374856","2017-12-08 23:06:26","2001-04-27","M","28","28");

INSERT INTO TB_PESSOA VALUES("29","05257971143","ÉRICA STEPHANIE DE SOUSA CARVALHO","3737683","2017-12-08 23:24:28","2000-12-02","F","29","29");

INSERT INTO TB_PESSOA VALUES("30","04898784151","LUCRECE NERI PORTELA","3239132","2017-12-09 09:33:32","1996-11-06","F","30","30");

INSERT INTO TB_PESSOA VALUES("31","04898784151","LUCRECE NERI PORTELA","3239132","2017-12-09 13:13:40","1996-11-06","F","31","31");

INSERT INTO TB_PESSOA VALUES("32","05063803199","PEDRO AUGUSTO PACHECO","3167740","2017-12-09 15:40:18","2000-08-25","M","32","32");

INSERT INTO TB_PESSOA VALUES("33","07981379164","GABRIELLA LIMA TONHA","536533829","2017-12-09 16:52:51","2002-05-25","F","33","33");

INSERT INTO TB_PESSOA VALUES("34","06597113110","RAUL DIAS MIRANDA CARDOSO","3374856","2017-12-10 22:04:08","2001-04-27","M","34","34");

INSERT INTO TB_PESSOA VALUES("35","03874430103","LUANA RIBEIRO BESSA","2944508","2017-12-10 22:49:28","1993-08-17","F","35","35");

INSERT INTO TB_PESSOA VALUES("36","03874430103","LUANA RIBEIRO BESSA","2944508","2017-12-11 10:20:32","1993-08-17","F","36","36");

INSERT INTO TB_PESSOA VALUES("37","03904086111","LETíCIA MACHADO CARVALHO BESSA","2807680","2017-12-11 19:34:49","1992-08-27","F","37","37");

INSERT INTO TB_PESSOA VALUES("39","05519198179","VITóRIA PRUDêNCIO LIMA","3287537","2017-12-11 19:34:26","1998-06-21","F","39","39");

INSERT INTO TB_PESSOA VALUES("40","03109823594","LARA DE SOUSA ALMEIDA","3708412","2017-12-11 18:30:53","2001-04-22","F","40","40");

INSERT INTO TB_PESSOA VALUES("41","06968592118","GABRIELA MENDES SOUZA","3616392","2017-12-11 19:17:46","1999-08-19","F","41","41");

INSERT INTO TB_PESSOA VALUES("42","07909568100","DANIELA MENDES DE SOUZA","3850639","2017-12-11 19:23:37","2001-05-27","F","42","42");

INSERT INTO TB_PESSOA VALUES("43","70602523125","ISABELLA GARCIA MENDES","6539903","2017-12-12 12:41:10","1999-07-20","F","43","43");

INSERT INTO TB_PESSOA VALUES("44","05704088147","VITOR HUGO BARROSO","3362969","2017-12-12 13:46:24","1999-08-25","M","44","44");

INSERT INTO TB_PESSOA VALUES("47","03601286106","ANTONIO CARLOS RAMOS LIMA","2652417","2017-12-14 12:21:53","1989-10-26","M","47","47");

INSERT INTO TB_PESSOA VALUES("48","06828355105","LARISSA MESQUITA","","2017-12-16 14:24:06","1998-10-02","F","48","48");




DROP TABLE IF EXISTS TB_TIPO_PAGAMENTO;


CREATE TABLE `TB_TIPO_PAGAMENTO` (
  `co_tipo_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `ds_tipo_pagamento` varchar(45) DEFAULT NULL,
  `sg_tipo_pagamento` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_tipo_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


INSERT INTO TB_TIPO_PAGAMENTO VALUES("1","Dinheiro","DI");

INSERT INTO TB_TIPO_PAGAMENTO VALUES("2","Cartão de Crédito","CC");

INSERT INTO TB_TIPO_PAGAMENTO VALUES("3","Depósito Bancário","DB");




DROP TABLE IF EXISTS TB_USUARIO;


CREATE TABLE `TB_USUARIO` (
  `co_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `ds_senha` varchar(100) NOT NULL,
  `ds_code` varchar(50) NOT NULL,
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT '''A - ATIVO / I - INATIVO''',
  `dt_cadastro` datetime NOT NULL,
  `co_imagem` int(10) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`co_usuario`,`co_imagem`,`co_pessoa`),
  KEY `FK_TB_USUARIO_TB_IMAGEM1_IDX` (`co_imagem`),
  KEY `FK_TB_USUARIO_TB_PESSOA2_IDX` (`co_pessoa`),
  CONSTRAINT `FK_TB_USUARIO_TB_IMAGEM1` FOREIGN KEY (`co_imagem`) REFERENCES `TB_IMAGEM` (`co_imagem`),
  CONSTRAINT `FK_TB_USUARIO_TB_PESSOA2` FOREIGN KEY (`co_pessoa`) REFERENCES `TB_PESSOA` (`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO VALUES("1","123456**","TVRJek5EVTJLaW89","A","2016-10-31 00:00:00","1","1");

INSERT INTO TB_USUARIO VALUES("2","Lucrece0611","VEhWamNtVmpaVEEyTVRFPQ==","A","2017-12-09 00:00:00","31","31");

INSERT INTO TB_USUARIO VALUES("3","raul**123","Y21GMWJDb3FNVEl6","A","2017-12-10 00:00:00","34","34");

INSERT INTO TB_USUARIO VALUES("4","santosdecalcajeansjpII123","YzJGdWRHOXpaR1ZqWVd4allXcGxZVzV6YW5CSlNURXlNdz09","A","2017-12-10 00:00:00","36","36");

INSERT INTO TB_USUARIO VALUES("5","pe.pio2309","Y0dVdWNHbHZNak13T1E9PQ==","A","2017-12-11 00:00:00","37","37");

INSERT INTO TB_USUARIO VALUES("6","OPACObrubs123","VDFCQlEwOWljblZpY3pFeU13PT0=","A","2017-12-11 00:00:00","39","39");




DROP TABLE IF EXISTS TB_USUARIO_PERFIL;


CREATE TABLE `TB_USUARIO_PERFIL` (
  `co_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `co_usuario` int(10) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`),
  KEY `FK_TB_USUARIO_PERFIL_TB_USUARIO1_IDX` (`co_usuario`),
  KEY `FK_TB_USUARIO_PERFIL_TB_PERFIL1_IDX` (`co_perfil`),
  CONSTRAINT `FK_TB_USUARIO_PERFIL_TB_USUARIO1` FOREIGN KEY (`co_usuario`) REFERENCES `TB_USUARIO` (`co_usuario`),
  CONSTRAINT `FK_TB_USUARIO_PERFIL_TB_PERFIL1` FOREIGN KEY (`co_perfil`) REFERENCES `TB_PERFIL` (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO_PERFIL VALUES("1","1","1");

INSERT INTO TB_USUARIO_PERFIL VALUES("3","2","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("4","2","4");

INSERT INTO TB_USUARIO_PERFIL VALUES("5","2","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("7","3","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("8","3","4");

INSERT INTO TB_USUARIO_PERFIL VALUES("9","3","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("11","4","2");

INSERT INTO TB_USUARIO_PERFIL VALUES("12","4","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("13","4","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("19","5","2");

INSERT INTO TB_USUARIO_PERFIL VALUES("20","5","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("21","5","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("16","6","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("17","6","4");

INSERT INTO TB_USUARIO_PERFIL VALUES("18","6","3");




