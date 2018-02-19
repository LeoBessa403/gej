CREATE DATABASE IF NOT EXISTS gejdo247_gej;

USE gejdo247_gej;

DROP TABLE IF EXISTS TB_ACESSO;


CREATE TABLE `TB_ACESSO` (
  `co_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `ds_session_id` varchar(255) NOT NULL,
  `dt_inicio_acesso` datetime DEFAULT NULL,
  `dt_fim_acesso` datetime DEFAULT NULL,
  `ds_navegador` varchar(40) NOT NULL,
  `ds_sistema_operacional` varchar(40) NOT NULL,
  `ds_dispositivo` varchar(40) NOT NULL,
  `tp_situacao` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'A - Ativo / F - Finalizado',
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_acesso`,`co_usuario`),
  KEY `FK_TB_ACESSO_TB_USUARIO1_IDX` (`co_usuario`),
  CONSTRAINT `FK_TB_ACESSO_TB_USUARIO1` FOREIGN KEY (`co_usuario`) REFERENCES `TB_USUARIO` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


INSERT INTO TB_ACESSO VALUES("1","428fece112716b15c26d715a87a6869a","2017-12-29 00:00:00","2017-12-29 00:00:00","","","","F","1");

INSERT INTO TB_ACESSO VALUES("2","428fece112716b15c26d715a87a6869a","2017-12-29 16:42:27","2017-12-29 16:43:57","","","","F","1");

INSERT INTO TB_ACESSO VALUES("3","428fece112716b15c26d715a87a6869a","2017-12-29 16:44:25","2017-12-29 17:05:00","","","","F","8");

INSERT INTO TB_ACESSO VALUES("4","6b2aeefd8ccb8e85d11e99026f0782a3","2017-12-29 17:02:14","2017-12-29 17:03:12","","","","F","8");

INSERT INTO TB_ACESSO VALUES("5","6b2aeefd8ccb8e85d11e99026f0782a3","2017-12-29 17:03:23","2017-12-29 17:04:09","","","","F","1");

INSERT INTO TB_ACESSO VALUES("6","bfda130deebab8ed754625080c4e9bcf","2017-12-29 18:15:45","2017-12-29 18:37:31","","","","F","1");

INSERT INTO TB_ACESSO VALUES("7","d4d9c7ca925712a60ff438229825df0f","2017-12-29 20:34:36","2017-12-29 20:34:50","","","","F","1");

INSERT INTO TB_ACESSO VALUES("8","0e9c97b9f7681ef9949c16d5d3953a78","2017-12-30 09:45:28","2017-12-30 10:10:57","","","","F","5");

INSERT INTO TB_ACESSO VALUES("9","ece6f7b7367f26bc301a56fe85385e48","2017-12-30 17:03:46","2017-12-30 17:04:54","Safari","Windows 8.1","Computador","F","1");

INSERT INTO TB_ACESSO VALUES("10","ece6f7b7367f26bc301a56fe85385e48","2017-12-30 17:05:00","2017-12-30 17:25:43","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO TB_ACESSO VALUES("11","1ebc5110f488487a0723b438a0abbd74","2017-12-30 17:06:06","2017-12-30 17:07:00","Chrome","Linux","android","F","1");

INSERT INTO TB_ACESSO VALUES("12","78d08c20f357df4fbdad4da5b5103eb5","2017-12-30 19:19:38","2017-12-30 19:55:35","Chrome","Windows 8.1","Computador","F","1");

INSERT INTO TB_ACESSO VALUES("13","1910f85462b4a2a9325c67924461c892","2017-12-30 19:59:02","2017-12-30 20:20:28","Chrome","Windows 8.1","Computador","A","1");




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
) ENGINE=InnoDB AUTO_INCREMENT=972 DEFAULT CHARSET=utf8;


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

INSERT INTO TB_AUDITORIA VALUES("487","TB_ENDERECO","2017-12-16 20:42:33","I","","ds_endereco==Qi 416 conjunto lote 03;/ds_complemento==Apartamento 101;/ds_bairro==Samambaia norte;/nu_cep==72320317;/no_cidade==Brasília ;/sg_uf==DF","49","","0");

INSERT INTO TB_AUDITORIA VALUES("488","TB_CONTATO","2017-12-16 20:42:33","I","","nu_tel1==61995801026;/nu_tel2==;/nu_tel3==;/ds_email==carloschristian03@gmail.com","49","","0");

INSERT INTO TB_AUDITORIA VALUES("489","TB_PESSOA","2017-12-16 20:42:33","I","","nu_cpf==05365778111;/no_pessoa==CARLOS CHRISTIAN;/nu_rg==1129660;/dt_cadastro==2017-12-16 20:42:32;/dt_nascimento==1996-05-25;/st_sexo==M;/co_endereco==49;/co_contato==49","49","","0");

INSERT INTO TB_AUDITORIA VALUES("490","TB_IMAGEM","2017-12-16 20:42:33","I","","ds_caminho==carlos-christian-5a35a1595c65f.jpeg","49","","0");

INSERT INTO TB_AUDITORIA VALUES("491","TB_INSCRICAO","2017-12-16 20:42:33","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-16 20:42:32;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==MAE ;/nu_tel_responsavel==61995905439;/ds_descricao==Uma pessoa super tranquila, alegre e que ama ajuda o próximo na medida possível;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==49;/co_imagem==49","38","","0");

INSERT INTO TB_AUDITORIA VALUES("492","TB_PAGAMENTO","2017-12-16 20:43:40","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==38","44","","0");

INSERT INTO TB_AUDITORIA VALUES("493","TB_PARCELAMENTO","2017-12-16 20:43:40","I","","co_pagamento==44;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-16","108","","0");

INSERT INTO TB_AUDITORIA VALUES("494","TB_ACESSO","2017-12-17 10:07:13","I","","ds_session_id==13e3f6e96a38adf2245175c8563e0279;/co_usuario==5;/dt_inicio_acesso==2017-12-17;/dt_fim_acesso==2017-12-17","33","","0");

INSERT INTO TB_AUDITORIA VALUES("495","TB_ACESSO","2017-12-18 09:07:31","I","","ds_session_id==eecbc6de74ed862d80d54eae1f2761b7;/co_usuario==5;/dt_inicio_acesso==2017-12-18;/dt_fim_acesso==2017-12-18","34","","0");

INSERT INTO TB_AUDITORIA VALUES("496","TB_ACESSO","2017-12-18 10:39:03","I","","ds_session_id==01ef24042e35c327de4d9e8388ade6c6;/co_usuario==1;/dt_inicio_acesso==2017-12-18;/dt_fim_acesso==2017-12-18","35","","0");

INSERT INTO TB_AUDITORIA VALUES("497","TB_ACESSO","2017-12-18 14:51:11","I","","ds_session_id==9a15c033580e68348f84131edc6d19ed;/co_usuario==1;/dt_inicio_acesso==2017-12-18;/dt_fim_acesso==2017-12-18","36","","0");

INSERT INTO TB_AUDITORIA VALUES("498","TB_ENDERECO","2017-12-18 15:05:43","I","","ds_endereco==Shps 602 chácara 97 A;/ds_complemento==Setor p.sul;/ds_bairro==P.sul;/nu_cep==72236608;/no_cidade==Ceilândia;/sg_uf==DF","50","","0");

INSERT INTO TB_AUDITORIA VALUES("499","TB_CONTATO","2017-12-18 15:05:43","I","","nu_tel1==61986194836;/nu_tel2==61985671063;/nu_tel3==;/ds_email==Pcdanielle12@gmail.com","50","","0");

INSERT INTO TB_AUDITORIA VALUES("500","TB_PESSOA","2017-12-18 15:05:43","I","","nu_cpf==07581435164;/no_pessoa==DANIELLE PATRíCIA GUEDES E SILVA;/nu_rg==3791489;/dt_cadastro==2017-12-18 15:05:43;/dt_nascimento==2003-01-23;/st_sexo==F;/co_endereco==50;/co_contato==50","50","","0");

INSERT INTO TB_AUDITORIA VALUES("501","TB_IMAGEM","2017-12-18 15:05:44","I","","ds_caminho==danielle-patricia-guedes-e-silva-5a37f567d5bc9.jpg","50","","0");

INSERT INTO TB_AUDITORIA VALUES("502","TB_INSCRICAO","2017-12-18 15:05:44","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-18 15:05:43;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==TIOS TOMINAGA;/nu_tel_responsavel==61982512602;/ds_descricao==Sou consagrada a Santíssima Virgem a 2 anos. Tenho uma vida de intimidade e amor com Deus. Canto em um ministério, estou começando na intersecao, faço parte da coordenação do grupo jovem Adonaí. Tenho espírito adorador Eucarístico amante da Mãe de Deus ❤ Sou muito animada e pretendo louvar, adorar e confiar mais ainda naquele que É!;/ds_alimentacao==Não;/ds_medicacao==Não;/st_equipe_trabalho==N;/co_pessoa==50;/co_imagem==50","39","","0");

INSERT INTO TB_AUDITORIA VALUES("503","TB_PAGAMENTO","2017-12-18 15:06:13","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==39","45","","0");

INSERT INTO TB_AUDITORIA VALUES("504","TB_PARCELAMENTO","2017-12-18 15:06:13","I","","co_pagamento==45;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-18","109","","0");

INSERT INTO TB_AUDITORIA VALUES("505","TB_ENDERECO","2017-12-18 19:02:08","I","","ds_endereco==QR 414 Conjunto 13 casa 17;/ds_complemento==Casa 17;/ds_bairro==Samambaia Norte;/nu_cep==72320218;/no_cidade==Brasília Df;/sg_uf==DF","51","","0");

INSERT INTO TB_AUDITORIA VALUES("506","TB_CONTATO","2017-12-18 19:02:08","I","","nu_tel1==6130395165;/nu_tel2==6199800644;/nu_tel3==;/ds_email==Babynhalindinha_@hotmail.com","51","","0");

INSERT INTO TB_AUDITORIA VALUES("507","TB_PESSOA","2017-12-18 19:02:08","I","","nu_cpf==06697775106;/no_pessoa==BáRBARA SILVA;/nu_rg==3286;/dt_cadastro==2017-12-18 19:02:07;/dt_nascimento==1998-06-07;/st_sexo==F;/co_endereco==51;/co_contato==51","51","","0");

INSERT INTO TB_AUDITORIA VALUES("508","TB_IMAGEM","2017-12-18 19:02:08","I","","ds_caminho==barbara-silva-5a382cd0273e4.JPG","51","","0");

INSERT INTO TB_AUDITORIA VALUES("509","TB_INSCRICAO","2017-12-18 19:02:08","I","","ds_pastoral==Nossa Senhora de Fátima;/ds_retiro==S;/dt_cadastro==2017-12-18 19:02:07;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==6;/no_responsavel==ANDRé FONSECA BORGES;/nu_tel_responsavel==6198783533;/ds_descricao==Eu sou uma pessoa gentil, e de bem com a vida hehe :);/ds_alimentacao==Boa;/ds_medicacao==Antialérgico - Loratamed;/st_equipe_trabalho==N;/co_pessoa==51;/co_imagem==51","40","","0");

INSERT INTO TB_AUDITORIA VALUES("510","TB_PAGAMENTO","2017-12-18 19:02:55","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==40","46","","0");

INSERT INTO TB_AUDITORIA VALUES("511","TB_PARCELAMENTO","2017-12-18 19:02:55","I","","co_pagamento==46;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-18","110","","0");

INSERT INTO TB_AUDITORIA VALUES("512","TB_ENDERECO","2017-12-18 22:11:24","I","","ds_endereco==Qnf 8 lote 35 casa 4;/ds_complemento==;/ds_bairro==;/nu_cep==72125530;/no_cidade==Taguatinga Norte;/sg_uf==DF","52","","0");

INSERT INTO TB_AUDITORIA VALUES("513","TB_CONTATO","2017-12-18 22:11:24","I","","nu_tel1==61993288306;/nu_tel2==6191621818;/nu_tel3==;/ds_email==paulin_adt@hotmail.com","52","","0");

INSERT INTO TB_AUDITORIA VALUES("514","TB_PESSOA","2017-12-18 22:11:24","I","","nu_cpf==06794961148;/no_pessoa==PAULLO VINíCIUS PEREIRA FOGAçA;/nu_rg==;/dt_cadastro==2017-12-18 22:11:23;/dt_nascimento==1994-04-26;/st_sexo==M;/co_endereco==52;/co_contato==52","52","","0");

INSERT INTO TB_AUDITORIA VALUES("515","TB_IMAGEM","2017-12-18 22:11:24","I","","ds_caminho==paullo-vinicius-pereira-fogaca-5a38592c7c041.jpg","52","","0");

INSERT INTO TB_AUDITORIA VALUES("516","TB_INSCRICAO","2017-12-18 22:11:24","I","","ds_pastoral==Grupo Jovem;/ds_retiro==S;/dt_cadastro==2017-12-18 22:11:23;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==MAE;/nu_tel_responsavel==6191621818;/ds_descricao==Participo do Grupo Jovem JEDI, tenho 4 anos de caminhada, sou consagrado a Virgem Maria. Nunca participei de um acampamento, sou um pouco tímido mas tenho facilidade de comunicação e pro ativo.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==52;/co_imagem==52","41","","0");

INSERT INTO TB_AUDITORIA VALUES("517","TB_PAGAMENTO","2017-12-18 22:11:49","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==41","47","","0");

INSERT INTO TB_AUDITORIA VALUES("518","TB_PARCELAMENTO","2017-12-18 22:11:49","I","","co_pagamento==47;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-18","111","","0");

INSERT INTO TB_AUDITORIA VALUES("519","TB_ENDERECO","2017-12-18 22:13:07","I","","ds_endereco==QR 209 conjunto 5 casa 27;/ds_complemento==Samambaia morte;/ds_bairro==Norte;/nu_cep==;/no_cidade==Brasília;/sg_uf==DF","53","","0");

INSERT INTO TB_AUDITORIA VALUES("520","TB_CONTATO","2017-12-18 22:13:07","I","","nu_tel1==6192516402;/nu_tel2==6133596361;/nu_tel3==;/ds_email==Karollina@live.com","53","","0");

INSERT INTO TB_AUDITORIA VALUES("521","TB_PESSOA","2017-12-18 22:13:08","I","","nu_cpf==04419358181;/no_pessoa==KAROLINA MOTA;/nu_rg==;/dt_cadastro==2017-12-18 22:13:07;/dt_nascimento==1997-04-30;/st_sexo==F;/co_endereco==53;/co_contato==53","53","","0");

INSERT INTO TB_AUDITORIA VALUES("522","TB_IMAGEM","2017-12-18 22:13:08","I","","ds_caminho==karolina-mota-5a3859941174a.jpg","53","","0");

INSERT INTO TB_AUDITORIA VALUES("523","TB_INSCRICAO","2017-12-18 22:13:08","I","","ds_pastoral==Gej;/ds_retiro==S;/dt_cadastro==2017-12-18 22:13:07;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==5;/no_responsavel==EDILEUSA;/nu_tel_responsavel==6192226161;/ds_descricao==Me chamo Karolina não tenho restrição de medicamentos , nem alimentação;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==53;/co_imagem==53","42","","0");

INSERT INTO TB_AUDITORIA VALUES("524","TB_PAGAMENTO","2017-12-18 22:13:19","I","","nu_total==160.00;/nu_parcelas==1;/co_inscricao==42","48","","0");

INSERT INTO TB_AUDITORIA VALUES("525","TB_PARCELAMENTO","2017-12-18 22:13:19","I","","co_pagamento==48;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-18","112","","0");

INSERT INTO TB_AUDITORIA VALUES("526","TB_ENDERECO","2017-12-18 22:14:56","I","","ds_endereco==;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","","","0");

INSERT INTO TB_AUDITORIA VALUES("527","TB_CONTATO","2017-12-18 22:14:56","I","","nu_tel1==;/nu_tel2==;/nu_tel3==;/ds_email==","54","","0");

INSERT INTO TB_AUDITORIA VALUES("528","TB_PESSOA","2017-12-18 22:14:56","I","","nu_cpf==;/no_pessoa==MONIQUE VIEIRA PEREIRA PINHEIRO;/nu_rg==;/dt_cadastro==2017-12-18 22:14:55;/dt_nascimento==--;/st_sexo==;/co_endereco==;/co_contato==54","","","0");

INSERT INTO TB_AUDITORIA VALUES("529","TB_IMAGEM","2017-12-18 22:14:56","I","","ds_caminho==","54","","0");

INSERT INTO TB_AUDITORIA VALUES("530","TB_INSCRICAO","2017-12-18 22:14:56","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-18 22:14:55;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==;/no_responsavel==;/nu_tel_responsavel==;/ds_descricao==;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==;/co_imagem==54","","","0");

INSERT INTO TB_AUDITORIA VALUES("531","TB_ENDERECO","2017-12-18 22:16:46","I","","ds_endereco==Qnd 16 lote 11 ap 103;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","54","","0");

INSERT INTO TB_AUDITORIA VALUES("532","TB_CONTATO","2017-12-18 22:16:46","I","","nu_tel1==61984727547;/nu_tel2==;/nu_tel3==;/ds_email==Gabiribas746@gmail.com","55","","0");

INSERT INTO TB_AUDITORIA VALUES("533","TB_PESSOA","2017-12-18 22:16:46","I","","nu_cpf==02567125302;/no_pessoa==MARIA GABRIELA ALVES RODRIGUES;/nu_rg==;/dt_cadastro==2017-12-18 22:16:45;/dt_nascimento==1996-12-02;/st_sexo==F;/co_endereco==54;/co_contato==55","54","","0");

INSERT INTO TB_AUDITORIA VALUES("534","TB_IMAGEM","2017-12-18 22:16:46","I","","ds_caminho==maria-gabriela-alves-rodrigues-5a385a6e22d3d.JPG","55","","0");

INSERT INTO TB_AUDITORIA VALUES("535","TB_INSCRICAO","2017-12-18 22:16:46","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-18 22:16:45;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MãE;/nu_tel_responsavel==61985754119;/ds_descricao==Sou do grupo JEDI da paróquia São João Batista.;/ds_alimentacao==Alérgica a corante , intolerante a lactose;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==54;/co_imagem==55","43","","0");

INSERT INTO TB_AUDITORIA VALUES("536","TB_PAGAMENTO","2017-12-18 22:18:14","I","","nu_total==160.00;/nu_parcelas==1;/co_inscricao==43","49","","0");

INSERT INTO TB_AUDITORIA VALUES("537","TB_PARCELAMENTO","2017-12-18 22:18:14","I","","co_pagamento==49;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160.00;/dt_vencimento==2017-12-18","113","","0");

INSERT INTO TB_AUDITORIA VALUES("538","TB_ENDERECO","2017-12-18 22:29:50","I","","ds_endereco==Ceilândia sul;/ds_complemento==SHSN  lote 29 qd 28 ch 58/123 A;/ds_bairro==Cond. Pinheiro;/nu_cep==72236800;/no_cidade==Ceilândia ;/sg_uf==DF","55","","0");

INSERT INTO TB_AUDITORIA VALUES("539","TB_CONTATO","2017-12-18 22:29:50","I","","nu_tel1==61993935517;/nu_tel2==61981975822;/nu_tel3==;/ds_email==monique.vieira999@gmail.com","56","","0");

INSERT INTO TB_AUDITORIA VALUES("540","TB_PESSOA","2017-12-18 22:29:50","I","","nu_cpf==06932064111;/no_pessoa==MONIQUE VIEIRA PEREIRA PINHEIRO;/nu_rg==3298085;/dt_cadastro==2017-12-18 22:29:49;/dt_nascimento==1999-08-09;/st_sexo==F;/co_endereco==55;/co_contato==56","55","","0");

INSERT INTO TB_AUDITORIA VALUES("541","TB_IMAGEM","2017-12-18 22:29:50","I","","ds_caminho==monique-vieira-pereira-pinheiro-5a385d7e117fe.jpg","56","","0");

INSERT INTO TB_AUDITORIA VALUES("542","TB_INSCRICAO","2017-12-18 22:29:50","I","","ds_pastoral==Grupo Jovem;/ds_retiro==S;/dt_cadastro==2017-12-18 22:29:49;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==EDILEUZA MãE;/nu_tel_responsavel==61984946458;/ds_descricao==Não gosto de falar sobre mim \nRs rs :);/ds_alimentacao==Intolerância à lactose;/ds_medicacao==Omeprazol;/st_equipe_trabalho==N;/co_pessoa==55;/co_imagem==56","44","","0");

INSERT INTO TB_AUDITORIA VALUES("543","TB_PAGAMENTO","2017-12-18 22:30:39","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==44","50","","0");

INSERT INTO TB_AUDITORIA VALUES("544","TB_PARCELAMENTO","2017-12-18 22:30:39","I","","co_pagamento==50;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-18","114","","0");

INSERT INTO TB_AUDITORIA VALUES("545","TB_PAGAMENTO","2017-12-18 22:33:03","U","co_pagamento==44;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==38","nu_total==150.00;/nu_parcelas==1","44","","0");

INSERT INTO TB_AUDITORIA VALUES("546","TB_PARCELAMENTO","2017-12-18 22:33:03","D","co_parcelamento==72;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==1;/co_tipo_pagamento==1","","72","","0");

INSERT INTO TB_AUDITORIA VALUES("547","TB_PARCELAMENTO","2017-12-18 22:33:03","I","","co_pagamento==1;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-18","115","","0");

INSERT INTO TB_AUDITORIA VALUES("548","TB_ENDERECO","2017-12-18 22:34:45","I","","ds_endereco==QNF 8 casa 32;/ds_complemento==Taguatinga;/ds_bairro==Taguatinga norte;/nu_cep==72125580;/no_cidade==Brasília ;/sg_uf==DF","56","","0");

INSERT INTO TB_AUDITORIA VALUES("549","TB_CONTATO","2017-12-18 22:34:45","I","","nu_tel1==992660496;/nu_tel2==;/nu_tel3==;/ds_email==Leazevedob@gmail.com","57","","0");

INSERT INTO TB_AUDITORIA VALUES("550","TB_PESSOA","2017-12-18 22:34:45","I","","nu_cpf==04516310139;/no_pessoa==LEANDRO AZEVEDO XAVIER;/nu_rg==3335626;/dt_cadastro==2017-12-18 22:34:44;/dt_nascimento==--23 03 1991;/st_sexo==M;/co_endereco==56;/co_contato==57","56","","0");

INSERT INTO TB_AUDITORIA VALUES("551","TB_IMAGEM","2017-12-18 22:34:45","I","","ds_caminho==","57","","0");

INSERT INTO TB_AUDITORIA VALUES("552","TB_INSCRICAO","2017-12-18 22:34:45","I","","ds_pastoral==Grupo JEDI;/ds_retiro==N;/dt_cadastro==2017-12-18 22:34:44;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==;/no_responsavel==MARIA JOSé;/nu_tel_responsavel==91340627;/ds_descricao==Bem humorado, paciente, verdadeiro legal;/ds_alimentacao==Não;/ds_medicacao==Não;/st_equipe_trabalho==N;/co_pessoa==56;/co_imagem==57","45","","0");

INSERT INTO TB_AUDITORIA VALUES("553","TB_PAGAMENTO","2017-12-19 10:13:07","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==45","51","","0");

INSERT INTO TB_AUDITORIA VALUES("554","TB_PARCELAMENTO","2017-12-19 10:13:07","I","","co_pagamento==51;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-19","116","","0");

INSERT INTO TB_AUDITORIA VALUES("555","TB_ACESSO","2017-12-19 11:24:35","I","","ds_session_id==074c410b63270bd0e0a9c6b04089cff8;/co_usuario==1;/dt_inicio_acesso==2017-12-19;/dt_fim_acesso==2017-12-19","37","","0");

INSERT INTO TB_AUDITORIA VALUES("556","TB_ENDERECO","2017-12-19 13:09:55","I","","ds_endereco==Qr 212 conj 14 casa 15;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72316314;/no_cidade==Samambaia;/sg_uf==DF","57","","0");

INSERT INTO TB_AUDITORIA VALUES("557","TB_CONTATO","2017-12-19 13:09:55","I","","nu_tel1==61992971837;/nu_tel2==;/nu_tel3==;/ds_email==thaisksm23@gmail.com","58","","0");

INSERT INTO TB_AUDITORIA VALUES("558","TB_PESSOA","2017-12-19 13:09:55","I","","nu_cpf==03894443162;/no_pessoa==THAIS OLIVEIRA DA COSTA MAIA;/nu_rg==;/dt_cadastro==2017-12-19 13:09:54;/dt_nascimento==1993-04-23;/st_sexo==F;/co_endereco==57;/co_contato==58","57","","0");

INSERT INTO TB_AUDITORIA VALUES("559","TB_IMAGEM","2017-12-19 13:09:55","I","","ds_caminho==thais-oliveira-da-costa-maia-5a392bc38f141.jpg","58","","0");

INSERT INTO TB_AUDITORIA VALUES("560","TB_INSCRICAO","2017-12-19 13:09:55","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-19 13:09:54;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==IVANILDES MãE;/nu_tel_responsavel==6134586671;/ds_descricao==Católica desde o ventre da minha mãe, dedicada, muitos vezes chata e mandona, tenho um marido maravilhoso e uma família que amo. Estou no Gej há cerca de 3 anos e sou apaixonada por esse grupo.;/ds_alimentacao==Não.;/ds_medicacao==Não.;/st_equipe_trabalho==N;/co_pessoa==57;/co_imagem==58","46","","0");

INSERT INTO TB_AUDITORIA VALUES("561","TB_PAGAMENTO","2017-12-19 13:12:00","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==46","52","","0");

INSERT INTO TB_AUDITORIA VALUES("562","TB_PARCELAMENTO","2017-12-19 13:12:00","I","","co_pagamento==52;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-19","117","","0");

INSERT INTO TB_AUDITORIA VALUES("563","TB_ENDERECO","2017-12-19 13:18:08","I","","ds_endereco==Quadra 02 lote 16 apto. 201;/ds_complemento==;/ds_bairro==Águas Bonitas I;/nu_cep==72926002;/no_cidade==Águas Lindas GO;/sg_uf==DF","58","","0");

INSERT INTO TB_AUDITORIA VALUES("564","TB_CONTATO","2017-12-19 13:18:08","I","","nu_tel1==61991426490;/nu_tel2==61999661640;/nu_tel3==;/ds_email==leticia.martinsousa@hotmail.com","59","","0");

INSERT INTO TB_AUDITORIA VALUES("565","TB_PESSOA","2017-12-19 13:18:08","I","","nu_cpf==06980866192;/no_pessoa==LETíCIA MARTINS DE SOUSA;/nu_rg==36493740;/dt_cadastro==2017-12-19 13:18:08;/dt_nascimento==2000-02-23;/st_sexo==F;/co_endereco==58;/co_contato==59","58","","0");

INSERT INTO TB_AUDITORIA VALUES("566","TB_IMAGEM","2017-12-19 13:18:09","I","","ds_caminho==leticia-martins-de-sousa-5a392db0f3b6e.jpeg","59","","0");

INSERT INTO TB_AUDITORIA VALUES("567","TB_INSCRICAO","2017-12-19 13:18:09","I","","ds_pastoral==Gej Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-19 13:18:08;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MáRCIA REJANE ;/nu_tel_responsavel==61999661640;/ds_descricao==Meu nome é Letícia, tenho 17 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==58;/co_imagem==59","47","","0");

INSERT INTO TB_AUDITORIA VALUES("568","TB_PAGAMENTO","2017-12-19 13:19:05","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==47","53","","0");

INSERT INTO TB_AUDITORIA VALUES("569","TB_PARCELAMENTO","2017-12-19 13:19:05","I","","co_pagamento==53;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-19","118","","0");

INSERT INTO TB_AUDITORIA VALUES("570","TB_ENDERECO","2017-12-19 13:21:56","I","","ds_endereco==Qr 212 conj 14 casa 15;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==72316314;/no_cidade==Samambaia Norte;/sg_uf==DF","59","","0");

INSERT INTO TB_AUDITORIA VALUES("571","TB_CONTATO","2017-12-19 13:21:56","I","","nu_tel1==61991839164;/nu_tel2==;/nu_tel3==;/ds_email==keitermaia@hotmail.com","60","","0");

INSERT INTO TB_AUDITORIA VALUES("572","TB_PESSOA","2017-12-19 13:21:56","I","","nu_cpf==03643347111;/no_pessoa==KEITER DA SILVA MAIA;/nu_rg==;/dt_cadastro==2017-12-19 13:21:55;/dt_nascimento==1992-11-22;/st_sexo==M;/co_endereco==59;/co_contato==60","59","","0");

INSERT INTO TB_AUDITORIA VALUES("573","TB_IMAGEM","2017-12-19 13:21:56","I","","ds_caminho==keiter-da-silva-maia-5a392e946d57a.jpg","60","","0");

INSERT INTO TB_AUDITORIA VALUES("574","TB_INSCRICAO","2017-12-19 13:21:56","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-19 13:21:55;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==IVANILDES MãE;/nu_tel_responsavel==6134586671;/ds_descricao==Brincalhão,meio timído. Fui coroinha durante muitos anos, e atualmente só participo do Gej. Me casei ano passado. Sou militar da Aeronáutica, e atualmente estudo pra concurso.;/ds_alimentacao==Não.;/ds_medicacao==Não.;/st_equipe_trabalho==N;/co_pessoa==59;/co_imagem==60","48","","0");

INSERT INTO TB_AUDITORIA VALUES("575","TB_PAGAMENTO","2017-12-19 13:22:09","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==48","54","","0");

INSERT INTO TB_AUDITORIA VALUES("576","TB_PARCELAMENTO","2017-12-19 13:22:09","I","","co_pagamento==54;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-19","119","","0");

INSERT INTO TB_AUDITORIA VALUES("577","TB_ENDERECO","2017-12-19 13:25:34","I","","ds_endereco==QR 603 conj. 05 casa 05;/ds_complemento==;/ds_bairro==SAMAMBAIA NORTE;/nu_cep==72331105;/no_cidade==Brasília ;/sg_uf==DF","60","","0");

INSERT INTO TB_AUDITORIA VALUES("578","TB_CONTATO","2017-12-19 13:25:34","I","","nu_tel1==61980748329;/nu_tel2==61991124059;/nu_tel3==;/ds_email==ronielrodrigues.96@hotmail.com","61","","0");

INSERT INTO TB_AUDITORIA VALUES("579","TB_PESSOA","2017-12-19 13:25:34","I","","nu_cpf==05566516181;/no_pessoa==RONIEL RODRIGUES ALBUQUERQUE;/nu_rg==3208574;/dt_cadastro==2017-12-19 13:25:34;/dt_nascimento==1996-03-04;/st_sexo==M;/co_endereco==60;/co_contato==61","60","","0");

INSERT INTO TB_AUDITORIA VALUES("580","TB_IMAGEM","2017-12-19 13:25:34","I","","ds_caminho==roniel-rodrigues-albuquerque-5a392f6e7db2e.jpeg","61","","0");

INSERT INTO TB_AUDITORIA VALUES("581","TB_INSCRICAO","2017-12-19 13:25:34","I","","ds_pastoral==Gej Dom Bosco;/ds_retiro==N;/dt_cadastro==2017-12-19 13:25:34;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==LETíCIA MARTINS ;/nu_tel_responsavel==61991426490;/ds_descricao==Meu nome é Roniel, tenho 21 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==60;/co_imagem==61","49","","0");

INSERT INTO TB_AUDITORIA VALUES("582","TB_PAGAMENTO","2017-12-19 13:25:52","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==49","55","","0");

INSERT INTO TB_AUDITORIA VALUES("583","TB_PARCELAMENTO","2017-12-19 13:25:52","I","","co_pagamento==55;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-19","120","","0");

INSERT INTO TB_AUDITORIA VALUES("584","TB_ACESSO","2017-12-19 14:09:13","I","","ds_session_id==07fc9a5907f4939a783f348040fea0d5;/co_usuario==1;/dt_inicio_acesso==2017-12-19;/dt_fim_acesso==2017-12-19","38","","0");

INSERT INTO TB_AUDITORIA VALUES("585","TB_ACESSO","2017-12-19 15:19:11","I","","ds_session_id==55ab546491acb5c60653d1074190732f;/co_usuario==1;/dt_inicio_acesso==2017-12-19;/dt_fim_acesso==2017-12-19","39","","0");

INSERT INTO TB_AUDITORIA VALUES("586","TB_ACESSO","2017-12-20 20:54:21","I","","ds_session_id==6cc5f874771e5c8e0e877fc4901e3a09;/co_usuario==5;/dt_inicio_acesso==2017-12-20;/dt_fim_acesso==2017-12-20","40","","0");

INSERT INTO TB_AUDITORIA VALUES("587","TB_ENDERECO","2017-12-20 20:58:52","I","","ds_endereco==QR 403 CONJUNTO 10 CASA 2I;/ds_complemento==28;/ds_bairro==Samambaia;/nu_cep==72319111;/no_cidade==Brasília;/sg_uf==DF","61","","0");

INSERT INTO TB_AUDITORIA VALUES("588","TB_CONTATO","2017-12-20 20:58:53","I","","nu_tel1==6191066240;/nu_tel2==6191066240;/nu_tel3==;/ds_email==lililasp@gmail.com","62","","0");

INSERT INTO TB_AUDITORIA VALUES("589","TB_IMAGEM","2017-12-20 20:58:53","I","","ds_caminho==lilian-machado-carvalho-bessa-5a3aeb2c7d19c.jpg","62","","0");

INSERT INTO TB_AUDITORIA VALUES("590","TB_PESSOA","2017-12-20 20:58:53","I","","nu_cpf==02351127129;/no_pessoa==LILIAN MACHADO CARVALHO BESSA;/nu_rg==2529020;/dt_cadastro==2017-12-20;/dt_nascimento==1988-10-31;/st_sexo==F;/co_endereco==61;/co_contato==62","61","","0");

INSERT INTO TB_AUDITORIA VALUES("591","TB_USUARIO","2017-12-20 20:58:53","I","","ds_code==TXpFeE1EZzRLbXhwYkdrcUtnPT0=;/ds_senha==311088*lili**;/dt_cadastro==2017-12-20;/co_imagem==62;/co_pessoa==61","7","","0");

INSERT INTO TB_AUDITORIA VALUES("592","TB_USUARIO_PERFIL","2017-12-20 20:58:53","I","","co_usuario==7;/co_perfil==3","22","","0");

INSERT INTO TB_AUDITORIA VALUES("593","TB_ACESSO","2017-12-21 08:29:39","I","","ds_session_id==b9e8d37db006c390e361d383dd6691e5;/co_usuario==1;/dt_inicio_acesso==2017-12-21;/dt_fim_acesso==2017-12-21","41","","0");

INSERT INTO TB_AUDITORIA VALUES("594","TB_CONTATO","2017-12-21 08:30:32","U","co_contato==62;/nu_tel1==6191066240;/nu_tel2==6191066240;/nu_tel3==;/ds_email==lililasp@gmail.com","nu_tel1==6191066240;/nu_tel2==6191066240;/nu_tel3==;/ds_email==lililasp@gmail.com","62","Master","1");

INSERT INTO TB_AUDITORIA VALUES("595","TB_ENDERECO","2017-12-21 08:30:32","U","co_endereco==61;/ds_endereco==QR 403 CONJUNTO 10 CASA 2I;/ds_complemento==28;/ds_bairro==Samambaia;/nu_cep==72319111;/no_cidade==Brasília;/sg_uf==DF","ds_endereco==QR 403 CONJUNTO 10 CASA 2I;/ds_complemento==28;/ds_bairro==Samambaia;/nu_cep==72319111;/no_cidade==Brasília;/sg_uf==DF","61","Master","1");

INSERT INTO TB_AUDITORIA VALUES("596","TB_PESSOA","2017-12-21 08:30:32","U","co_pessoa==61;/nu_cpf==02351127129;/no_pessoa==LILIAN MACHADO CARVALHO BESSA;/nu_rg==2529020;/dt_cadastro==2017-12-20 00:00:00;/dt_nascimento==1988-10-31;/st_sexo==F;/co_contato==62;/co_endereco==61","nu_cpf==02351127129;/no_pessoa==LILIAN MACHADO CARVALHO BESSA;/nu_rg==2529020;/dt_cadastro==2017-12-21 08:30:32;/dt_nascimento==1988-10-31;/st_sexo==F","61","Master","1");

INSERT INTO TB_AUDITORIA VALUES("597","TB_USUARIO","2017-12-21 08:30:32","U","co_usuario==7;/ds_senha==311088*lili**;/ds_code==TXpFeE1EZzRLbXhwYkdrcUtnPT0=;/st_status==I;/dt_cadastro==2017-12-20 00:00:00;/co_imagem==62;/co_pessoa==61","ds_code==TXpFeE1EZzRLbXhwYkdrcUtnPT0=;/ds_senha==311088*lili**;/st_status==A","7","Master","1");

INSERT INTO TB_AUDITORIA VALUES("598","TB_USUARIO_PERFIL","2017-12-21 08:30:33","D","co_usuario_perfil==22;/co_usuario==7;/co_perfil==3","","22","Master","1");

INSERT INTO TB_AUDITORIA VALUES("599","TB_USUARIO_PERFIL","2017-12-21 08:30:33","I","","co_usuario==7;/co_perfil==2","23","Master","1");

INSERT INTO TB_AUDITORIA VALUES("600","TB_USUARIO_PERFIL","2017-12-21 08:30:33","I","","co_usuario==7;/co_perfil==3","24","Master","1");

INSERT INTO TB_AUDITORIA VALUES("601","TB_USUARIO_PERFIL","2017-12-21 08:30:33","I","","co_usuario==7;/co_perfil==3","25","Master","1");

INSERT INTO TB_AUDITORIA VALUES("602","TB_ACESSO","2017-12-21 09:24:22","I","","ds_session_id==2dcd189e454362974c9d894cdcea56cb;/co_usuario==6;/dt_inicio_acesso==2017-12-21;/dt_fim_acesso==2017-12-21","42","","0");

INSERT INTO TB_AUDITORIA VALUES("603","TB_ENDERECO","2017-12-21 09:46:00","I","","ds_endereco==Qs 406 conjunto G lote 01 ap 01;/ds_complemento==;/ds_bairro==Samambaia norte;/nu_cep==72318570;/no_cidade==Brasília ;/sg_uf==DF","62","","0");

INSERT INTO TB_AUDITORIA VALUES("604","TB_CONTATO","2017-12-21 09:46:00","I","","nu_tel1==61991981891;/nu_tel2==61992240268;/nu_tel3==;/ds_email==Thamiires369@gmail.com","63","","0");

INSERT INTO TB_AUDITORIA VALUES("605","TB_PESSOA","2017-12-21 09:46:00","I","","nu_cpf==07844250194;/no_pessoa==THAMIRES BARBOSA DE ALMEIDA;/nu_rg==3837418;/dt_cadastro==2017-12-21 09:45:59;/dt_nascimento==2001-08-13;/st_sexo==F;/co_endereco==62;/co_contato==63","62","","0");

INSERT INTO TB_AUDITORIA VALUES("606","TB_IMAGEM","2017-12-21 09:46:00","I","","ds_caminho==thamires-barbosa-de-almeida-5a3b9ef83e8fd.JPG","63","","0");

INSERT INTO TB_AUDITORIA VALUES("607","TB_INSCRICAO","2017-12-21 09:46:00","I","","ds_pastoral==Grupo de jovens gej dom bosco;/ds_retiro==S;/dt_cadastro==2017-12-21 09:45:59;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==THAYNARA ;/nu_tel_responsavel==61995250255;/ds_descricao==Sou feliz com o que tenho;/ds_alimentacao==Não como carne vermelha;/ds_medicacao==Não;/st_equipe_trabalho==N;/co_pessoa==62;/co_imagem==63","50","","0");

INSERT INTO TB_AUDITORIA VALUES("608","TB_PAGAMENTO","2017-12-21 09:46:39","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==50","56","","0");

INSERT INTO TB_AUDITORIA VALUES("609","TB_PARCELAMENTO","2017-12-21 09:46:39","I","","co_pagamento==56;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-21","121","","0");

INSERT INTO TB_AUDITORIA VALUES("610","TB_ACESSO","2017-12-21 11:12:44","I","","ds_session_id==9b53f6094f95785d5a79a0a70bfdb409;/co_usuario==1;/dt_inicio_acesso==2017-12-21;/dt_fim_acesso==2017-12-21","43","","0");

INSERT INTO TB_AUDITORIA VALUES("611","TB_ENDERECO","2017-12-21 13:01:10","I","","ds_endereco==QNP 32 CONJUNTO \"N\" CASA 366;/ds_complemento==Em frente a escola classe 52;/ds_bairro==P.sul;/nu_cep==72236214;/no_cidade==Ceilândia;/sg_uf==DF","63","","0");

INSERT INTO TB_AUDITORIA VALUES("612","TB_CONTATO","2017-12-21 13:01:10","I","","nu_tel1==61984199148;/nu_tel2==61992225838;/nu_tel3==;/ds_email==annacarolinyr46@gmail.com","64","","0");

INSERT INTO TB_AUDITORIA VALUES("613","TB_PESSOA","2017-12-21 13:01:10","I","","nu_cpf==07572266126;/no_pessoa==ANNA CAROLINY RODRIGUES LAURO;/nu_rg==3827115;/dt_cadastro==2017-12-21 13:01:09;/dt_nascimento==2002-05-10;/st_sexo==F;/co_endereco==63;/co_contato==64","63","","0");

INSERT INTO TB_AUDITORIA VALUES("614","TB_IMAGEM","2017-12-21 13:01:11","I","","ds_caminho==anna-caroliny-rodrigues-lauro-5a3bccb69e958.jpg","64","","0");

INSERT INTO TB_AUDITORIA VALUES("615","TB_INSCRICAO","2017-12-21 13:01:11","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-21 13:01:09;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==JEFFERSON ;/nu_tel_responsavel==61992225838;/ds_descricao==Sou consagrada, 1,60 de altura;/ds_alimentacao==Abacaxi;/ds_medicacao==Dipirona 25 gotas;/st_equipe_trabalho==N;/co_pessoa==63;/co_imagem==64","51","","0");

INSERT INTO TB_AUDITORIA VALUES("616","TB_ENDERECO","2017-12-21 16:01:29","I","","ds_endereco==Qr 603 Chácara 39 Rua 05 Casa 68B;/ds_complemento==68B;/ds_bairro==Samambaia;/nu_cep==72331150;/no_cidade==Brasília;/sg_uf==DF","64","","0");

INSERT INTO TB_AUDITORIA VALUES("617","TB_CONTATO","2017-12-21 16:01:29","I","","nu_tel1==61985376731;/nu_tel2==;/nu_tel3==;/ds_email==clarissevitoriafranca@gmail.com","65","","0");

INSERT INTO TB_AUDITORIA VALUES("618","TB_PESSOA","2017-12-21 16:01:29","I","","nu_cpf==05301006142;/no_pessoa==CLARISSE VITóRIA FRANçA PEREIRA;/nu_rg==3355675;/dt_cadastro==2017-12-21 16:01:28;/dt_nascimento==1996-03-01;/st_sexo==F;/co_endereco==64;/co_contato==65","64","","0");

INSERT INTO TB_AUDITORIA VALUES("619","TB_IMAGEM","2017-12-21 16:01:30","I","","ds_caminho==clarisse-vitoria-franca-pereira-5a3bf6f9badea.png","65","","0");

INSERT INTO TB_AUDITORIA VALUES("620","TB_INSCRICAO","2017-12-21 16:01:30","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-21 16:01:28;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==JOANA DARC;/nu_tel_responsavel==61985315391;/ds_descricao==Sou muito alegre;/ds_alimentacao==Não;/ds_medicacao==Não;/st_equipe_trabalho==N;/co_pessoa==64;/co_imagem==65","52","","0");

INSERT INTO TB_AUDITORIA VALUES("621","TB_PAGAMENTO","2017-12-21 21:33:55","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==51","57","","0");

INSERT INTO TB_AUDITORIA VALUES("622","TB_PARCELAMENTO","2017-12-21 21:33:55","I","","co_pagamento==57;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-21","122","","0");

INSERT INTO TB_AUDITORIA VALUES("623","TB_PAGAMENTO","2017-12-21 21:33:55","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==52","58","","0");

INSERT INTO TB_AUDITORIA VALUES("624","TB_PARCELAMENTO","2017-12-21 21:33:55","I","","co_pagamento==58;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-21","123","","0");

INSERT INTO TB_AUDITORIA VALUES("625","TB_ACESSO","2017-12-21 21:33:59","I","","ds_session_id==2079f4f631f87cf1de89662f25578b37;/co_usuario==1;/dt_inicio_acesso==2017-12-21;/dt_fim_acesso==2017-12-21","44","","0");

INSERT INTO TB_AUDITORIA VALUES("626","TB_ENDERECO","2017-12-21 23:29:49","U","co_endereco==2;/ds_endereco==Shps 602 chac. 97-A;/ds_complemento==Setor P.Sul;/ds_bairro==P.Sul;/nu_cep==72236608;/no_cidade==Brasília ;/sg_uf==DF","ds_endereco==Shps 602 chac. 97-A;/ds_complemento==Setor P.Sul;/ds_bairro==P.Sul;/nu_cep==72236608;/no_cidade==Brasília ;/sg_uf==DF","2","Master","1");

INSERT INTO TB_AUDITORIA VALUES("627","TB_CONTATO","2017-12-21 23:29:49","U","co_contato==2;/nu_tel1==61995022920;/nu_tel2==61982512602;/nu_tel3==;/ds_email==amandatominaginha@gmail.com","nu_tel1==61995022920;/nu_tel2==61982512602;/nu_tel3==;/ds_email==amandatominaginha@gmail.com","2","Master","1");

INSERT INTO TB_AUDITORIA VALUES("628","TB_INSCRICAO","2017-12-21 23:29:49","U","co_inscricao==1;/ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-04 12:34:17;/ds_membro_ativo==N;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LEILA TOMINAGA;/nu_tel_responsavel==61982522602;/ds_descricao==Sou diabética.\nSou top\nSou Filha de Dom Bosco \nA neném dos tios Tominaga;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==2;/co_imagem==2","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-21 23:29:48;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LEILA TOMINAGA;/nu_tel_responsavel==61982522602;/ds_descricao==Sou top\nSou Filha de Dom Bosco \nA neném dos tios Tominaga;/ds_alimentacao==Sou diabética.;/ds_medicacao==;/st_equipe_trabalho==N","1","Master","1");

INSERT INTO TB_AUDITORIA VALUES("629","TB_PAGAMENTO","2017-12-21 23:29:49","U","co_pagamento==1;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==1","nu_parcelas==1","1","Master","1");

INSERT INTO TB_AUDITORIA VALUES("630","TB_PARCELAMENTO","2017-12-21 23:29:49","D","co_parcelamento==115;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-18;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==1;/co_tipo_pagamento==3","","115","Master","1");

INSERT INTO TB_AUDITORIA VALUES("631","TB_PARCELAMENTO","2017-12-21 23:29:49","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-21;/co_tipo_pagamento==1;/co_pagamento==1","124","Master","1");

INSERT INTO TB_AUDITORIA VALUES("632","TB_ACESSO","2017-12-23 11:02:48","I","","ds_session_id==3fb74d3059694acd724fba51495b01b4;/co_usuario==1;/dt_inicio_acesso==2017-12-23;/dt_fim_acesso==2017-12-23","45","","0");

INSERT INTO TB_AUDITORIA VALUES("633","TB_ENDERECO","2017-12-23 12:04:37","I","","ds_endereco==;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","","","0");

INSERT INTO TB_AUDITORIA VALUES("634","TB_CONTATO","2017-12-23 12:04:37","I","","nu_tel1==;/nu_tel2==;/nu_tel3==;/ds_email==","66","","0");

INSERT INTO TB_AUDITORIA VALUES("635","TB_PESSOA","2017-12-23 12:04:37","I","","nu_cpf==07645973102;/no_pessoa==EDILENE DA CRUZ SILVA;/nu_rg==;/dt_cadastro==2017-12-23 12:04:36;/dt_nascimento==--;/st_sexo==;/co_endereco==;/co_contato==66","","","0");

INSERT INTO TB_AUDITORIA VALUES("636","TB_IMAGEM","2017-12-23 12:04:37","I","","ds_caminho==","66","","0");

INSERT INTO TB_AUDITORIA VALUES("637","TB_INSCRICAO","2017-12-23 12:04:37","I","","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-23 12:04:36;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==;/no_responsavel==;/nu_tel_responsavel==;/ds_descricao==;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==;/co_imagem==66","","","0");

INSERT INTO TB_AUDITORIA VALUES("638","TB_ENDERECO","2017-12-23 22:00:35","I","","ds_endereco==QR 609 conj 01 casa 02;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","65","","0");

INSERT INTO TB_AUDITORIA VALUES("639","TB_CONTATO","2017-12-23 22:00:36","I","","nu_tel1==6193826548;/nu_tel2==6192641163;/nu_tel3==;/ds_email==Joycefe.lopes@gmail.com","67","","0");

INSERT INTO TB_AUDITORIA VALUES("640","TB_PESSOA","2017-12-23 22:00:36","I","","nu_cpf==04894739119;/no_pessoa==JOYCE LOPES FERREIRA;/nu_rg==;/dt_cadastro==2017-12-23 22:00:34;/dt_nascimento==1998-10-28;/st_sexo==F;/co_endereco==65;/co_contato==67","65","","0");

INSERT INTO TB_AUDITORIA VALUES("641","TB_IMAGEM","2017-12-23 22:00:36","I","","ds_caminho==joyce-lopes-ferreira-5a3eee236ef36.jpg","67","","0");

INSERT INTO TB_AUDITORIA VALUES("642","TB_INSCRICAO","2017-12-23 22:00:36","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-23 22:00:34;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==MãE;/nu_tel_responsavel==6134593241;/ds_descricao==Sou a Joyce, tenho 19 anos. Não sei oq falar sobre mim, mas espero nesse retiro top, buscar uma reconciliação e mais intimidade com Jesus, tchau.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==65;/co_imagem==67","53","","0");

INSERT INTO TB_AUDITORIA VALUES("643","TB_PAGAMENTO","2017-12-23 22:01:07","I","","nu_total==160;/nu_parcelas==1;/co_inscricao==53","59","","0");

INSERT INTO TB_AUDITORIA VALUES("644","TB_PARCELAMENTO","2017-12-23 22:01:07","I","","co_pagamento==59;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160;/dt_vencimento==2017-12-23","125","","0");

INSERT INTO TB_AUDITORIA VALUES("645","TB_ENDERECO","2017-12-24 15:13:29","I","","ds_endereco==Quadra 2 Conjunto 1 lote 1;/ds_complemento==Bloco L AP 402;/ds_bairro==Paranoá Parque;/nu_cep==;/no_cidade==Paranoá ;/sg_uf==DF","66","","0");

INSERT INTO TB_AUDITORIA VALUES("646","TB_CONTATO","2017-12-24 15:13:29","I","","nu_tel1==61992030663;/nu_tel2==61991698705;/nu_tel3==;/ds_email==sabreu192@gmail.com","68","","0");

INSERT INTO TB_AUDITORIA VALUES("647","TB_PESSOA","2017-12-24 15:13:29","I","","nu_cpf==04583473109;/no_pessoa==SABRINA BELARMINA DE ABREU;/nu_rg==3050440;/dt_cadastro==2017-12-24 15:13:28;/dt_nascimento==1994-01-21;/st_sexo==F;/co_endereco==66;/co_contato==68","66","","0");

INSERT INTO TB_AUDITORIA VALUES("648","TB_IMAGEM","2017-12-24 15:13:29","I","","ds_caminho==sabrina-belarmina-de-abreu-5a3fe0395f2b1.jpg","68","","0");

INSERT INTO TB_AUDITORIA VALUES("649","TB_INSCRICAO","2017-12-24 15:13:29","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-24 15:13:28;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==2;/no_responsavel==SILVANA DE ABREU SILVA;/nu_tel_responsavel==61991837377;/ds_descricao==24 anos, natural de Brasília, tenho 3 irmãos e moro com minha mãe. Consagrada a Maria pelo metodo de São Luís Montfort, caseira, procuro sempre aprender mais sobre a Santa Igreja.;/ds_alimentacao==;/ds_medicacao==Faço uso de um antidepressivo, é o utilizo uma vez ao dia, depois do café da manhã.;/st_equipe_trabalho==N;/co_pessoa==66;/co_imagem==68","54","","0");

INSERT INTO TB_AUDITORIA VALUES("650","TB_PAGAMENTO","2017-12-24 23:30:59","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==54","60","","0");

INSERT INTO TB_AUDITORIA VALUES("651","TB_PARCELAMENTO","2017-12-24 23:31:00","I","","co_pagamento==60;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-24","126","","0");

INSERT INTO TB_AUDITORIA VALUES("652","TB_ACESSO","2017-12-24 23:31:29","I","","ds_session_id==3d6a14b84e772d3de1cc7b49175148e1;/co_usuario==7;/dt_inicio_acesso==2017-12-24;/dt_fim_acesso==2017-12-24","46","","0");

INSERT INTO TB_AUDITORIA VALUES("653","TB_ENDERECO","2017-12-26 11:17:31","I","","ds_endereco==Qr603 chácara 39 rua 4 casa 52A;/ds_complemento==Condomínio vida nova;/ds_bairro==Samambaia;/nu_cep==72331100;/no_cidade==Samambaia ;/sg_uf==DF","67","","0");

INSERT INTO TB_AUDITORIA VALUES("654","TB_CONTATO","2017-12-26 11:17:31","I","","nu_tel1==61985784112;/nu_tel2==61985175039;/nu_tel3==;/ds_email==Kaasilva0720@gmail.com","69","","0");

INSERT INTO TB_AUDITORIA VALUES("655","TB_PESSOA","2017-12-26 11:17:31","I","","nu_cpf==00441485189;/no_pessoa==KARINE VICTORIA OLIVEIRA DA SILVA;/nu_rg==3709850;/dt_cadastro==2017-12-26 11:17:29;/dt_nascimento==2000-07-20;/st_sexo==F;/co_endereco==67;/co_contato==69","67","","0");

INSERT INTO TB_AUDITORIA VALUES("656","TB_IMAGEM","2017-12-26 11:17:31","I","","ds_caminho==karine-victoria-oliveira-da-silva-5a424beadbd6e.jpg","69","","0");

INSERT INTO TB_AUDITORIA VALUES("657","TB_INSCRICAO","2017-12-26 11:17:31","I","","ds_pastoral==Gej dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-26 11:17:29;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MáRCIA FRANCINA DE OLIVEIRA ;/nu_tel_responsavel==61985175039;/ds_descricao==Sou uma pessoa que e brincalhona, ama retiro e chora muito nos retiros, tenho um amor imenso por nossa senhora e o título que mais amo e nossa senhora aparecida;/ds_alimentacao==Não tenho;/ds_medicacao==Quando tenho crise de enxaqueca eu tomo (ibuprofeno, dipirona e etc.);/st_equipe_trabalho==N;/co_pessoa==67;/co_imagem==69","55","","0");

INSERT INTO TB_AUDITORIA VALUES("658","TB_ENDERECO","2017-12-26 11:34:20","I","","ds_endereco==QD 301 Cj 07 bloco A Apt 1005;/ds_complemento==Cond. Via Tropical;/ds_bairro==Samambaia Sul;/nu_cep==72300543;/no_cidade==Samambaia;/sg_uf==DF","68","","0");

INSERT INTO TB_AUDITORIA VALUES("659","TB_CONTATO","2017-12-26 11:34:20","I","","nu_tel1==61992771024;/nu_tel2==;/nu_tel3==;/ds_email==leticiapsilva03@gmail.com","70","","0");

INSERT INTO TB_AUDITORIA VALUES("660","TB_PESSOA","2017-12-26 11:34:20","I","","nu_cpf==04321849101;/no_pessoa==LETICIA PEREIRA DA SILVA;/nu_rg==3002886;/dt_cadastro==2017-12-26 11:34:19;/dt_nascimento==1999-08-03;/st_sexo==F;/co_endereco==68;/co_contato==70","68","","0");

INSERT INTO TB_AUDITORIA VALUES("661","TB_IMAGEM","2017-12-26 11:34:20","I","","ds_caminho==leticia-pereira-da-silva-5a424fdcb2a95.jpg","70","","0");

INSERT INTO TB_AUDITORIA VALUES("662","TB_INSCRICAO","2017-12-26 11:34:20","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-26 11:34:19;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==JOELMA  MãE;/nu_tel_responsavel==61992419993;/ds_descricao==Bom...\nEstou afastada da igreja no momento, estou querendo me reconciliar e voltar de vez.;/ds_alimentacao==Não;/ds_medicacao==Não;/st_equipe_trabalho==N;/co_pessoa==68;/co_imagem==70","56","","0");

INSERT INTO TB_AUDITORIA VALUES("663","TB_PAGAMENTO","2017-12-26 11:35:03","I","","nu_total==160;/nu_parcelas==1;/co_inscricao==56","61","","0");

INSERT INTO TB_AUDITORIA VALUES("664","TB_PARCELAMENTO","2017-12-26 11:35:03","I","","co_pagamento==61;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==160;/dt_vencimento==2017-12-26","127","","0");

INSERT INTO TB_AUDITORIA VALUES("665","TB_ENDERECO","2017-12-26 13:34:50","I","","ds_endereco==Shsps 103 conjunto A casa 31;/ds_complemento==;/ds_bairro==Por do sol;/nu_cep==;/no_cidade==Ceilândia sul;/sg_uf==DF","69","","0");

INSERT INTO TB_AUDITORIA VALUES("666","TB_CONTATO","2017-12-26 13:34:50","I","","nu_tel1==61982057541;/nu_tel2==;/nu_tel3==;/ds_email==Evelynk039@gmail.com","71","","0");

INSERT INTO TB_AUDITORIA VALUES("667","TB_PESSOA","2017-12-26 13:34:50","I","","nu_cpf==07323321174;/no_pessoa==EVELYN RIBEIRO;/nu_rg==3577258;/dt_cadastro==2017-12-26 13:34:49;/dt_nascimento==1999-08-13;/st_sexo==F;/co_endereco==69;/co_contato==71","69","","0");

INSERT INTO TB_AUDITORIA VALUES("668","TB_IMAGEM","2017-12-26 13:34:50","I","","ds_caminho==evelyn-ribeiro-5a426c1a5307a.jpg","71","","0");

INSERT INTO TB_AUDITORIA VALUES("669","TB_INSCRICAO","2017-12-26 13:34:50","I","","ds_pastoral==Grupo de jovens Fillis Mater Dei;/ds_retiro==S;/dt_cadastro==2017-12-26 13:34:49;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==LúCIA;/nu_tel_responsavel==61984651243;/ds_descricao==18 anos, consagrada a Nossa Senhora de Fátima, Coordenadora do Grupo Jovem Fmd, frequente na Paróquia Nossa Senhora da Assunção.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==69;/co_imagem==71","57","","0");

INSERT INTO TB_AUDITORIA VALUES("670","TB_PAGAMENTO","2017-12-26 13:34:59","I","","nu_total==150;/nu_parcelas==1;/co_inscricao==57","62","","0");

INSERT INTO TB_AUDITORIA VALUES("671","TB_PARCELAMENTO","2017-12-26 13:34:59","I","","co_pagamento==62;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-26","128","","0");

INSERT INTO TB_AUDITORIA VALUES("672","TB_ENDERECO","2017-12-26 13:35:09","I","","ds_endereco==Qnf 06 Lote 03 Casa 04;/ds_complemento==;/ds_bairro==Qnf;/nu_cep==;/no_cidade==Taguatinga norte;/sg_uf==DF","70","","0");

INSERT INTO TB_AUDITORIA VALUES("673","TB_CONTATO","2017-12-26 13:35:09","I","","nu_tel1==61986519709;/nu_tel2==61985390854;/nu_tel3==;/ds_email==taynararibeirodelima@gmail.com","72","","0");

INSERT INTO TB_AUDITORIA VALUES("674","TB_PESSOA","2017-12-26 13:35:09","I","","nu_cpf==73386626149;/no_pessoa==TAYNARA RIBEIRO DE LIMA;/nu_rg==;/dt_cadastro==2017-12-26 13:35:08;/dt_nascimento==2000-02-21;/st_sexo==F;/co_endereco==70;/co_contato==72","70","","0");

INSERT INTO TB_AUDITORIA VALUES("675","TB_IMAGEM","2017-12-26 13:35:09","I","","ds_caminho==taynara-ribeiro-de-lima-5a426c2d3e1d4.jpg","72","","0");

INSERT INTO TB_AUDITORIA VALUES("676","TB_INSCRICAO","2017-12-26 13:35:09","I","","ds_pastoral==Catequese e grupo de jovem;/ds_retiro==S;/dt_cadastro==2017-12-26 13:35:08;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==PAI;/nu_tel_responsavel==61985012045;/ds_descricao==Sou bem chorona kkk, sou bem tímida, porém crio amizades bem rápido. Gosto muito de dança kk;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==70;/co_imagem==72","58","","0");

INSERT INTO TB_AUDITORIA VALUES("677","TB_PAGAMENTO","2017-12-26 22:10:07","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==55","63","","0");

INSERT INTO TB_AUDITORIA VALUES("678","TB_PARCELAMENTO","2017-12-26 22:10:07","I","","co_pagamento==63;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-26","129","","0");

INSERT INTO TB_AUDITORIA VALUES("679","TB_PAGAMENTO","2017-12-26 22:10:07","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==58","64","","0");

INSERT INTO TB_AUDITORIA VALUES("680","TB_PARCELAMENTO","2017-12-26 22:10:07","I","","co_pagamento==64;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-26","130","","0");

INSERT INTO TB_AUDITORIA VALUES("681","TB_ACESSO","2017-12-26 22:10:47","I","","ds_session_id==45b14ebed85cfde477b22f54d978fbe9;/co_usuario==3;/dt_inicio_acesso==2017-12-26;/dt_fim_acesso==2017-12-26","47","","0");

INSERT INTO TB_AUDITORIA VALUES("682","TB_ACESSO","2017-12-27 10:02:57","I","","ds_session_id==c41ade7cbbbe791807486df7241e83be;/co_usuario==1;/dt_inicio_acesso==2017-12-27;/dt_fim_acesso==2017-12-27","48","","0");

INSERT INTO TB_AUDITORIA VALUES("683","TB_ACESSO","2017-12-27 14:29:55","I","","ds_session_id==6db91b789d8c9aa288cec97bfffc8c33;/co_usuario==1;/dt_inicio_acesso==2017-12-27;/dt_fim_acesso==2017-12-27","49","","0");

INSERT INTO TB_AUDITORIA VALUES("684","TB_ENDERECO","2017-12-27 14:49:42","I","","ds_endereco==Qr 118 conjunto 06 casa 09;/ds_complemento==;/ds_bairro==;/nu_cep==72302807;/no_cidade==;/sg_uf==DF","71","","0");

INSERT INTO TB_AUDITORIA VALUES("685","TB_CONTATO","2017-12-27 14:49:42","I","","nu_tel1==61985548484;/nu_tel2==61934586918;/nu_tel3==;/ds_email==adriel_eas22k@live.com","73","","0");

INSERT INTO TB_AUDITORIA VALUES("686","TB_PESSOA","2017-12-27 14:49:42","I","","nu_cpf==04900199192;/no_pessoa==ADRIEL CLEMENTINO DOS SANTOS;/nu_rg==;/dt_cadastro==2017-12-27 14:49:41;/dt_nascimento==1995-06-05;/st_sexo==M;/co_endereco==71;/co_contato==73","71","","0");

INSERT INTO TB_AUDITORIA VALUES("687","TB_IMAGEM","2017-12-27 14:49:42","I","","ds_caminho==adriel-clementino-dos-santos-5a43cf25e52e3.jpeg","73","","0");

INSERT INTO TB_AUDITORIA VALUES("688","TB_INSCRICAO","2017-12-27 14:49:42","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-27 14:49:41;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==6;/no_responsavel==ROSANGELA ALVES MENDES;/nu_tel_responsavel==61985548484;/ds_descricao==Sou uma pessoa tímida mas que gosta muito de diversão...;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==71;/co_imagem==73","59","","0");

INSERT INTO TB_AUDITORIA VALUES("689","TB_PAGAMENTO","2017-12-27 14:53:53","I","","nu_total==150;/nu_parcelas==1;/co_inscricao==59","65","","0");

INSERT INTO TB_AUDITORIA VALUES("690","TB_PARCELAMENTO","2017-12-27 14:53:53","I","","co_pagamento==65;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-27","131","","0");

INSERT INTO TB_AUDITORIA VALUES("691","TB_ACESSO","2017-12-27 16:37:05","I","","ds_session_id==ba25ba8a6933427c640498ef249f7d27;/co_usuario==1;/dt_inicio_acesso==2017-12-27;/dt_fim_acesso==2017-12-27","50","","0");

INSERT INTO TB_AUDITORIA VALUES("692","TB_ACESSO","2017-12-27 21:30:41","I","","ds_session_id==2892fead93f6f353fe49234340b64b17;/co_usuario==1;/dt_inicio_acesso==2017-12-27;/dt_fim_acesso==2017-12-27","51","","0");

INSERT INTO TB_AUDITORIA VALUES("693","TB_FUNCIONALIDADE","2017-12-27 21:31:38","I","","no_funcionalidade==Editar Inscrição;/ds_rota==admin/Inscricao/DetalharInscricao","13","Master","1");

INSERT INTO TB_AUDITORIA VALUES("694","TB_PERFIL","2017-12-27 21:31:58","I","","no_perfil==Líder","5","Master","1");

INSERT INTO TB_AUDITORIA VALUES("695","TB_PERFIL_FUNCIONALIDADE","2017-12-27 21:32:28","D","","","","Master","1");

INSERT INTO TB_AUDITORIA VALUES("696","TB_PERFIL_FUNCIONALIDADE","2017-12-27 21:32:28","I","","co_funcionalidade==13;/co_perfil==1","10","Master","1");

INSERT INTO TB_AUDITORIA VALUES("697","TB_PERFIL_FUNCIONALIDADE","2017-12-27 21:32:28","I","","co_funcionalidade==13;/co_perfil==2","11","Master","1");

INSERT INTO TB_AUDITORIA VALUES("698","TB_PERFIL_FUNCIONALIDADE","2017-12-27 21:32:28","I","","co_funcionalidade==13;/co_perfil==4","12","Master","1");

INSERT INTO TB_AUDITORIA VALUES("699","TB_ENDERECO","2017-12-27 21:57:40","I","","ds_endereco==Qr 405 13 13;/ds_complemento==13;/ds_bairro==Samambaia norte;/nu_cep==72319213;/no_cidade==Brasília ;/sg_uf==DF","72","","0");

INSERT INTO TB_AUDITORIA VALUES("700","TB_CONTATO","2017-12-27 21:57:40","I","","nu_tel1==61993259985;/nu_tel2==;/nu_tel3==;/ds_email==Linnekerlima@hotmail.com","74","","0");

INSERT INTO TB_AUDITORIA VALUES("701","TB_IMAGEM","2017-12-27 21:57:40","I","","ds_caminho==","74","","0");

INSERT INTO TB_AUDITORIA VALUES("702","TB_PESSOA","2017-12-27 21:57:40","I","","nu_cpf==04804195157;/no_pessoa==LINNEKER LIMA ROBERTO GOMES;/nu_rg==2812768;/dt_cadastro==2017-12-27;/dt_nascimento==1995-10-04;/st_sexo==M;/co_endereco==72;/co_contato==74","72","","0");

INSERT INTO TB_AUDITORIA VALUES("703","TB_USUARIO","2017-12-27 21:57:40","I","","ds_code==VFdGeWFXRXhNQT09;/ds_senha==Maria10;/dt_cadastro==2017-12-27;/co_imagem==74;/co_pessoa==72","8","","0");

INSERT INTO TB_AUDITORIA VALUES("704","TB_USUARIO_PERFIL","2017-12-27 21:57:40","I","","co_usuario==8;/co_perfil==3","26","","0");

INSERT INTO TB_AUDITORIA VALUES("705","TB_CONTATO","2017-12-27 22:01:57","U","co_contato==74;/nu_tel1==61993259985;/nu_tel2==;/nu_tel3==;/ds_email==Linnekerlima@hotmail.com","nu_tel1==61993259985;/nu_tel2==;/nu_tel3==;/ds_email==Linnekerlima@hotmail.com","74","Master","1");

INSERT INTO TB_AUDITORIA VALUES("706","TB_ENDERECO","2017-12-27 22:01:57","U","co_endereco==72;/ds_endereco==Qr 405 13 13;/ds_complemento==13;/ds_bairro==Samambaia norte;/nu_cep==72319213;/no_cidade==Brasília ;/sg_uf==DF","ds_endereco==Qr 405 13 13;/ds_complemento==13;/ds_bairro==Samambaia norte;/nu_cep==72319213;/no_cidade==Brasília ;/sg_uf==DF","72","Master","1");

INSERT INTO TB_AUDITORIA VALUES("707","TB_PESSOA","2017-12-27 22:01:57","U","co_pessoa==72;/nu_cpf==04804195157;/no_pessoa==LINNEKER LIMA ROBERTO GOMES;/nu_rg==2812768;/dt_cadastro==2017-12-27 00:00:00;/dt_nascimento==1995-10-04;/st_sexo==M;/co_contato==74;/co_endereco==72","nu_cpf==04804195157;/no_pessoa==LINNEKER LIMA ROBERTO GOMES;/nu_rg==2812768;/dt_cadastro==2017-12-27 22:01:56;/dt_nascimento==1995-10-04;/st_sexo==M","72","Master","1");

INSERT INTO TB_AUDITORIA VALUES("708","TB_USUARIO","2017-12-27 22:01:57","U","co_usuario==8;/ds_senha==Maria10;/ds_code==VFdGeWFXRXhNQT09;/st_status==I;/dt_cadastro==2017-12-27 00:00:00;/co_imagem==74;/co_pessoa==72","ds_code==VFdGeWFXRXhNQT09;/ds_senha==Maria10;/st_status==A","8","Master","1");

INSERT INTO TB_AUDITORIA VALUES("709","TB_USUARIO_PERFIL","2017-12-27 22:01:57","D","co_usuario_perfil==26;/co_usuario==8;/co_perfil==3","","26","Master","1");

INSERT INTO TB_AUDITORIA VALUES("710","TB_USUARIO_PERFIL","2017-12-27 22:01:57","I","","co_usuario==8;/co_perfil==3","27","Master","1");

INSERT INTO TB_AUDITORIA VALUES("711","TB_USUARIO_PERFIL","2017-12-27 22:01:57","I","","co_usuario==8;/co_perfil==5","28","Master","1");

INSERT INTO TB_AUDITORIA VALUES("712","TB_USUARIO_PERFIL","2017-12-27 22:01:57","I","","co_usuario==8;/co_perfil==3","29","Master","1");

INSERT INTO TB_AUDITORIA VALUES("713","TB_ENDERECO","2017-12-27 22:06:11","U","co_endereco==57;/ds_endereco==Qr 212 conj 14 casa 15;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72316314;/no_cidade==Samambaia;/sg_uf==DF","ds_endereco==Qr 212 conj 14 casa 15;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72316314;/no_cidade==Samambaia;/sg_uf==DF","57","Master","1");

INSERT INTO TB_AUDITORIA VALUES("714","TB_CONTATO","2017-12-27 22:06:11","U","co_contato==58;/nu_tel1==61992971837;/nu_tel2==;/nu_tel3==;/ds_email==thaisksm23@gmail.com","nu_tel1==61992971837;/nu_tel2==;/nu_tel3==;/ds_email==thaisksm23@gmail.com","58","Master","1");

INSERT INTO TB_AUDITORIA VALUES("715","TB_INSCRICAO","2017-12-27 22:06:11","U","co_inscricao==46;/ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-19 13:09:54;/ds_membro_ativo==N;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==IVANILDES MãE;/nu_tel_responsavel==6134586671;/ds_descricao==Católica desde o ventre da minha mãe, dedicada, muitos vezes chata e mandona, tenho um marido maravilhoso e uma família que amo. Estou no Gej há cerca de 3 anos e sou apaixonada por esse grupo.;/ds_medicacao==Não.;/ds_alimentacao==Não.;/co_pessoa==57;/co_imagem==58","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-27 22:06:11;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==IVANILDES MãE;/nu_tel_responsavel==61934586671;/ds_descricao==Católica desde o ventre da minha mãe, dedicada, muitos vezes chata e mandona, tenho um marido maravilhoso e uma família que amo. Estou no Gej há cerca de 3 anos e sou apaixonada por esse grupo.;/ds_alimentacao==Não.;/ds_medicacao==Não.;/st_equipe_trabalho==N","46","Master","1");

INSERT INTO TB_AUDITORIA VALUES("716","TB_PAGAMENTO","2017-12-27 22:06:12","U","co_pagamento==52;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==46","nu_parcelas==1","52","Master","1");

INSERT INTO TB_AUDITORIA VALUES("717","TB_PARCELAMENTO","2017-12-27 22:06:12","D","co_parcelamento==117;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-19;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==52;/co_tipo_pagamento==1","","117","Master","1");

INSERT INTO TB_AUDITORIA VALUES("718","TB_PARCELAMENTO","2017-12-27 22:06:12","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-27;/co_tipo_pagamento==1;/co_pagamento==52","132","Master","1");

INSERT INTO TB_AUDITORIA VALUES("719","TB_ACESSO","2017-12-27 22:15:21","I","","ds_session_id==f838b837dfa11c902c73fe63d2e38f3d;/co_usuario==8;/dt_inicio_acesso==2017-12-27;/dt_fim_acesso==2017-12-27","52","","0");

INSERT INTO TB_AUDITORIA VALUES("720","TB_ACESSO","2017-12-27 22:22:08","I","","ds_session_id==ee256f56505d98f67d88260cd5ff881e;/co_usuario==8;/dt_inicio_acesso==2017-12-27;/dt_fim_acesso==2017-12-27","53","","0");

INSERT INTO TB_AUDITORIA VALUES("721","TB_ACESSO","2017-12-27 22:40:41","I","","ds_session_id==2892fead93f6f353fe49234340b64b17;/co_usuario==8;/dt_inicio_acesso==2017-12-27;/dt_fim_acesso==2017-12-27","54","","0");

INSERT INTO TB_AUDITORIA VALUES("722","TB_PERFIL_FUNCIONALIDADE","2017-12-27 22:41:31","D","co_perfil_funcionalidade==7;/co_perfil==2;/co_funcionalidade==12","","7","Master","1");

INSERT INTO TB_AUDITORIA VALUES("723","TB_PERFIL_FUNCIONALIDADE","2017-12-27 22:41:31","I","","co_funcionalidade==12;/co_perfil==2","13","Master","1");

INSERT INTO TB_AUDITORIA VALUES("724","TB_PERFIL_FUNCIONALIDADE","2017-12-27 22:41:31","I","","co_funcionalidade==12;/co_perfil==4","14","Master","1");

INSERT INTO TB_AUDITORIA VALUES("725","TB_PERFIL_FUNCIONALIDADE","2017-12-27 22:41:31","I","","co_funcionalidade==12;/co_perfil==5","15","Master","1");

INSERT INTO TB_AUDITORIA VALUES("726","TB_ENDERECO","2017-12-27 22:45:56","I","","ds_endereco==qr 405 conjunto 25, casa 05;/ds_complemento==;/ds_bairro==samambaia;/nu_cep==72319225;/no_cidade==Brasilia;/sg_uf==DF","73","","0");

INSERT INTO TB_AUDITORIA VALUES("727","TB_CONTATO","2017-12-27 22:45:56","I","","nu_tel1==61985539668;/nu_tel2==;/nu_tel3==;/ds_email==kamilaf.silva@hotmail.com","75","","0");

INSERT INTO TB_AUDITORIA VALUES("728","TB_IMAGEM","2017-12-27 22:45:56","I","","ds_caminho==kamila-silva-5a443ec4a76fd.jpeg","75","","0");

INSERT INTO TB_AUDITORIA VALUES("729","TB_PESSOA","2017-12-27 22:45:56","I","","nu_cpf==06244035135;/no_pessoa==KAMILA SILVA;/nu_rg==3433231;/dt_cadastro==2017-12-27;/dt_nascimento==1999-01-17;/st_sexo==F;/co_endereco==73;/co_contato==75","73","","0");

INSERT INTO TB_AUDITORIA VALUES("730","TB_USUARIO","2017-12-27 22:45:56","I","","ds_code==Vld4MGFXMWhaMjkwTkE9PQ==;/ds_senha==Ultimagot4;/dt_cadastro==2017-12-27;/co_imagem==75;/co_pessoa==73","9","","0");

INSERT INTO TB_AUDITORIA VALUES("731","TB_USUARIO_PERFIL","2017-12-27 22:45:56","I","","co_usuario==9;/co_perfil==3","30","","0");

INSERT INTO TB_AUDITORIA VALUES("732","TB_ACESSO","2017-12-27 23:20:19","I","","ds_session_id==58689b019a27c3cd0bd750e9a89c1269;/co_usuario==5;/dt_inicio_acesso==2017-12-27;/dt_fim_acesso==2017-12-27","55","","0");

INSERT INTO TB_AUDITORIA VALUES("733","TB_ACESSO","2017-12-28 09:52:13","I","","ds_session_id==179d602442e6ee18cd9920c61bce9d17;/co_usuario==7;/dt_inicio_acesso==2017-12-28;/dt_fim_acesso==2017-12-28","56","","0");

INSERT INTO TB_AUDITORIA VALUES("734","TB_CONTATO","2017-12-28 10:42:12","U","co_contato==75;/nu_tel1==61985539668;/nu_tel2==;/nu_tel3==;/ds_email==kamilaf.silva@hotmail.com","nu_tel1==61985539668;/nu_tel2==;/nu_tel3==;/ds_email==kamilaf.silva@hotmail.com","75","Master","1");

INSERT INTO TB_AUDITORIA VALUES("735","TB_ENDERECO","2017-12-28 10:42:12","U","co_endereco==73;/ds_endereco==qr 405 conjunto 25, casa 05;/ds_complemento==;/ds_bairro==samambaia;/nu_cep==72319225;/no_cidade==Brasilia;/sg_uf==DF","ds_endereco==qr 405 conjunto 25, casa 05;/ds_complemento==;/ds_bairro==samambaia;/nu_cep==72319225;/no_cidade==Brasilia;/sg_uf==DF","73","Master","1");

INSERT INTO TB_AUDITORIA VALUES("736","TB_PESSOA","2017-12-28 10:42:12","U","co_pessoa==73;/nu_cpf==06244035135;/no_pessoa==KAMILA SILVA;/nu_rg==3433231;/dt_cadastro==2017-12-27 00:00:00;/dt_nascimento==1999-01-17;/st_sexo==F;/co_contato==75;/co_endereco==73","nu_cpf==06244035135;/no_pessoa==KAMILA SILVA;/nu_rg==3433231;/dt_cadastro==2017-12-28 10:42:11;/dt_nascimento==1999-01-17;/st_sexo==F","73","Master","1");

INSERT INTO TB_AUDITORIA VALUES("737","TB_USUARIO","2017-12-28 10:42:12","U","co_usuario==9;/ds_senha==Ultimagot4;/ds_code==Vld4MGFXMWhaMjkwTkE9PQ==;/st_status==I;/dt_cadastro==2017-12-27 00:00:00;/co_imagem==75;/co_pessoa==73","ds_code==Vld4MGFXMWhaMjkwTkE9PQ==;/ds_senha==Ultimagot4;/st_status==A","9","Master","1");

INSERT INTO TB_AUDITORIA VALUES("738","TB_USUARIO_PERFIL","2017-12-28 10:42:12","D","co_usuario_perfil==30;/co_usuario==9;/co_perfil==3","","30","Master","1");

INSERT INTO TB_AUDITORIA VALUES("739","TB_USUARIO_PERFIL","2017-12-28 10:42:12","I","","co_usuario==9;/co_perfil==3","31","Master","1");

INSERT INTO TB_AUDITORIA VALUES("740","TB_USUARIO_PERFIL","2017-12-28 10:42:12","I","","co_usuario==9;/co_perfil==5","32","Master","1");

INSERT INTO TB_AUDITORIA VALUES("741","TB_USUARIO_PERFIL","2017-12-28 10:42:12","I","","co_usuario==9;/co_perfil==3","33","Master","1");

INSERT INTO TB_AUDITORIA VALUES("742","TB_ACESSO","2017-12-28 10:44:42","I","","ds_session_id==c7f333f83cc7e08322fe8f31e75a089b;/co_usuario==1;/dt_inicio_acesso==2017-12-28;/dt_fim_acesso==2017-12-28","57","","0");

INSERT INTO TB_AUDITORIA VALUES("743","TB_ACESSO","2017-12-28 13:03:50","I","","ds_session_id==e95985f1cc0728466f637bba0a157375;/co_usuario==1;/dt_inicio_acesso==2017-12-28;/dt_fim_acesso==2017-12-28","58","","0");

INSERT INTO TB_AUDITORIA VALUES("744","TB_ENDERECO","2017-12-28 13:35:46","I","","ds_endereco==QE 01 CONJ M CASA 115;/ds_complemento==Guarã;/ds_bairro==Guará;/nu_cep==;/no_cidade==Distrito Federal;/sg_uf==DF","74","","0");

INSERT INTO TB_AUDITORIA VALUES("745","TB_CONTATO","2017-12-28 13:35:47","I","","nu_tel1==61983049879;/nu_tel2==;/nu_tel3==;/ds_email==tayanne734@gmail.com","76","","0");

INSERT INTO TB_AUDITORIA VALUES("746","TB_PESSOA","2017-12-28 13:35:47","I","","nu_cpf==04915965104;/no_pessoa==MARIA TAYANNE;/nu_rg==;/dt_cadastro==2017-12-28 13:35:44;/dt_nascimento==2000-07-02;/st_sexo==F;/co_endereco==74;/co_contato==76","74","","0");

INSERT INTO TB_AUDITORIA VALUES("747","TB_IMAGEM","2017-12-28 13:35:47","I","","ds_caminho==maria-tayanne-5a450f512dfe2.jpg","76","","0");

INSERT INTO TB_AUDITORIA VALUES("748","TB_INSCRICAO","2017-12-28 13:35:47","I","","ds_pastoral==Jupes;/ds_retiro==S;/dt_cadastro==2017-12-28 13:35:44;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==LOURDES;/nu_tel_responsavel==61982478621;/ds_descricao==Paróquia São Paulo apóstolo \nCoordenadora 2018-2019 grupo de jovens\nSanta Terezinha s2;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==74;/co_imagem==76","60","","0");

INSERT INTO TB_AUDITORIA VALUES("749","TB_PAGAMENTO","2017-12-28 14:09:14","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==60","66","Master","1");

INSERT INTO TB_AUDITORIA VALUES("750","TB_PARCELAMENTO","2017-12-28 14:09:14","I","","co_pagamento==66;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-28","133","Master","1");

INSERT INTO TB_AUDITORIA VALUES("751","TB_ACESSO","2017-12-28 17:10:06","I","","ds_session_id==4fe982a2904e25cb5fcccb9e2e26a668;/co_usuario==5;/dt_inicio_acesso==2017-12-28;/dt_fim_acesso==2017-12-28","59","","0");

INSERT INTO TB_AUDITORIA VALUES("752","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:44:05","D","","","","Master","1");

INSERT INTO TB_AUDITORIA VALUES("753","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:44:05","I","","co_funcionalidade==4;/co_perfil==1","16","Master","1");

INSERT INTO TB_AUDITORIA VALUES("754","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:44:05","I","","co_funcionalidade==4;/co_perfil==2","17","Master","1");

INSERT INTO TB_AUDITORIA VALUES("755","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:44:05","I","","co_funcionalidade==4;/co_perfil==4","18","Master","1");

INSERT INTO TB_AUDITORIA VALUES("756","TB_FUNCIONALIDADE","2017-12-28 17:44:27","I","","no_funcionalidade==Detalhar Pagamento Inscrição;/ds_rota==admin/Inscricao/DetalharPagamento","14","Master","1");

INSERT INTO TB_AUDITORIA VALUES("757","TB_FUNCIONALIDADE","2017-12-28 17:44:42","I","","no_funcionalidade==Editar Parcela Inscrição;/ds_rota==admin/Inscricao/EditarParcela","15","Master","1");

INSERT INTO TB_AUDITORIA VALUES("758","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:44:52","D","","","","Master","1");

INSERT INTO TB_AUDITORIA VALUES("759","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:44:52","I","","co_funcionalidade==14;/co_perfil==1","19","Master","1");

INSERT INTO TB_AUDITORIA VALUES("760","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:44:52","I","","co_funcionalidade==14;/co_perfil==2","20","Master","1");

INSERT INTO TB_AUDITORIA VALUES("761","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:44:52","I","","co_funcionalidade==14;/co_perfil==4","21","Master","1");

INSERT INTO TB_AUDITORIA VALUES("762","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:45:02","D","","","","Master","1");

INSERT INTO TB_AUDITORIA VALUES("763","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:45:02","I","","co_funcionalidade==15;/co_perfil==1","22","Master","1");

INSERT INTO TB_AUDITORIA VALUES("764","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:45:02","I","","co_funcionalidade==15;/co_perfil==2","23","Master","1");

INSERT INTO TB_AUDITORIA VALUES("765","TB_PERFIL_FUNCIONALIDADE","2017-12-28 17:45:02","I","","co_funcionalidade==15;/co_perfil==4","24","Master","1");

INSERT INTO TB_AUDITORIA VALUES("766","TB_ACESSO","2017-12-28 17:47:54","I","","ds_session_id==6db91b789d8c9aa288cec97bfffc8c33;/co_usuario==5;/dt_inicio_acesso==2017-12-28;/dt_fim_acesso==2017-12-28","60","","0");

INSERT INTO TB_AUDITORIA VALUES("767","TB_PARCELAMENTO","2017-12-28 18:15:25","U","co_parcelamento==78;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==7;/co_tipo_pagamento==1","nu_valor_parcela_pago==150.00;/dt_vencimento_pago==2017-11-24;/co_tipo_pagamento==1;/ds_observacao==","78","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("768","TB_PAGAMENTO","2017-12-28 18:15:25","U","co_pagamento==7;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==7","tp_situacao==C","7","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("769","TB_PARCELAMENTO","2017-12-28 18:16:45","U","co_parcelamento==103;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==34;/co_tipo_pagamento==1","nu_valor_parcela_pago==150.00;/dt_vencimento_pago==2017-12-16;/co_tipo_pagamento==1;/ds_observacao==","103","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("770","TB_PAGAMENTO","2017-12-28 18:16:45","U","co_pagamento==34;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==33","tp_situacao==C","34","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("771","TB_PARCELAMENTO","2017-12-28 18:19:37","U","co_parcelamento==104;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==35;/co_tipo_pagamento==1","nu_valor_parcela_pago==150.00;/dt_vencimento_pago==2017-12-16;/co_tipo_pagamento==1;/ds_observacao==","104","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("772","TB_PAGAMENTO","2017-12-28 18:19:37","U","co_pagamento==35;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==34","tp_situacao==C","35","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("773","TB_ACESSO","2017-12-28 18:41:46","I","","ds_session_id==c7209c0212ceac0eeaa9ea307cdb58ea;/co_usuario==1;/dt_inicio_acesso==2017-12-28;/dt_fim_acesso==2017-12-28","61","","0");

INSERT INTO TB_AUDITORIA VALUES("774","TB_ENDERECO","2017-12-28 22:26:07","I","","ds_endereco==Qr 407 conjunto 09 casa 33;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72321009;/no_cidade==Brasilia;/sg_uf==DF","75","","0");

INSERT INTO TB_AUDITORIA VALUES("775","TB_CONTATO","2017-12-28 22:26:07","I","","nu_tel1==996657709;/nu_tel2==992263829;/nu_tel3==;/ds_email==Luamar305@gmail.com","77","","0");

INSERT INTO TB_AUDITORIA VALUES("776","TB_PESSOA","2017-12-28 22:26:07","I","","nu_cpf==04223342193;/no_pessoa==LUAMAR DE SOUSA DA SILVA;/nu_rg==2.670.559;/dt_cadastro==2017-12-28 22:26:05;/dt_nascimento==1994-03-04;/st_sexo==F;/co_endereco==75;/co_contato==77","75","","0");

INSERT INTO TB_AUDITORIA VALUES("777","TB_IMAGEM","2017-12-28 22:26:07","I","","ds_caminho==luamar-de-sousa-da-silva-5a458b9ed3d8f.jpg","77","","0");

INSERT INTO TB_AUDITORIA VALUES("778","TB_INSCRICAO","2017-12-28 22:26:07","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-28 22:26:05;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==6;/no_responsavel==PAI;/nu_tel_responsavel==992263829;/ds_descricao==Eu sou da paróquia São João Evangelista  da samambaia norte  e faço parte do grupo de oração.;/ds_alimentacao==Não;/ds_medicacao==Eu uso o remédio contra crise de ansiedade.Chama fluoxetina,todos os dias pela manhã.;/st_equipe_trabalho==N;/co_pessoa==75;/co_imagem==77","61","","0");

INSERT INTO TB_AUDITORIA VALUES("779","TB_PAGAMENTO","2017-12-28 22:45:06","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==61","67","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("780","TB_PARCELAMENTO","2017-12-28 22:45:06","I","","co_pagamento==67;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-28","134","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("781","TB_PARCELAMENTO","2017-12-28 22:45:40","U","co_parcelamento==131;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-27;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==65;/co_tipo_pagamento==1","nu_valor_parcela_pago==150.00;/dt_vencimento_pago==2017-12-16;/co_tipo_pagamento==1;/ds_observacao==","131","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("782","TB_PAGAMENTO","2017-12-28 22:45:40","U","co_pagamento==65;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==59","tp_situacao==C","65","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("783","TB_ACESSO","2017-12-28 22:56:54","I","","ds_session_id==6e1972b37b1d1b82c1b637e44108bb3f;/co_usuario==1;/dt_inicio_acesso==2017-12-28;/dt_fim_acesso==2017-12-28","62","","0");

INSERT INTO TB_AUDITORIA VALUES("784","TB_ACESSO","2017-12-28 23:53:00","I","","ds_session_id==fe228d3538c725dd72fa19434ef5b999;/co_usuario==1;/dt_inicio_acesso==2017-12-28;/dt_fim_acesso==2017-12-28","63","","0");

INSERT INTO TB_AUDITORIA VALUES("785","TB_ACESSO","2017-12-29 09:15:41","I","","ds_session_id==424ecdca2b7c7c03f5a3faba25d8e835;/co_usuario==1;/dt_inicio_acesso==2017-12-29;/dt_fim_acesso==2017-12-29","64","","0");

INSERT INTO TB_AUDITORIA VALUES("786","TB_ACESSO","2017-12-29 10:33:19","I","","ds_session_id==428fece112716b15c26d715a87a6869a;/co_usuario==1;/dt_inicio_acesso==2017-12-29;/dt_fim_acesso==2017-12-29","65","","0");

INSERT INTO TB_AUDITORIA VALUES("787","TB_ACESSO","2017-12-29 16:34:47","I","","ds_session_id==428fece112716b15c26d715a87a6869a;/co_usuario==1;/dt_inicio_acesso==2017-12-29;/dt_fim_acesso==2017-12-29","1","","0");

INSERT INTO TB_AUDITORIA VALUES("788","TB_ACESSO","2017-12-29 16:42:27","I","","ds_session_id==428fece112716b15c26d715a87a6869a;/co_usuario==1;/tp_situacao==A;/dt_fim_acesso==2017-12-29 17:02:27;/dt_inicio_acesso==2017-12-29 16:42:27","2","","0");

INSERT INTO TB_AUDITORIA VALUES("789","TB_ACESSO","2017-12-29 16:44:25","I","","ds_session_id==428fece112716b15c26d715a87a6869a;/co_usuario==8;/tp_situacao==A;/dt_fim_acesso==2017-12-29 17:04:25;/dt_inicio_acesso==2017-12-29 16:44:25","3","","0");

INSERT INTO TB_AUDITORIA VALUES("790","TB_ENDERECO","2017-12-29 16:59:23","I","","ds_endereco==Quadra QR 413 Conjunto 06;/ds_complemento==23;/ds_bairro==;/nu_cep==72321306;/no_cidade==samambaia norte;/sg_uf==DF","76","","0");

INSERT INTO TB_AUDITORIA VALUES("791","TB_CONTATO","2017-12-29 16:59:23","I","","nu_tel1==6133598986;/nu_tel2==6133598986;/nu_tel3==;/ds_email==carolinadossantoscfds@outlook.com","78","","0");

INSERT INTO TB_AUDITORIA VALUES("792","TB_PESSOA","2017-12-29 16:59:23","I","","nu_cpf==07048585170;/no_pessoa==CAROLINA  FRANçA DOS SANTOS;/nu_rg==3680244;/dt_cadastro==2017-12-29 16:59:22;/dt_nascimento==2000-06-27;/st_sexo==F;/co_endereco==76;/co_contato==78","76","","0");

INSERT INTO TB_AUDITORIA VALUES("793","TB_IMAGEM","2017-12-29 16:59:23","I","","ds_caminho==carolina-franca-dos-santos-5a46908ab3996.jpg","78","","0");

INSERT INTO TB_AUDITORIA VALUES("794","TB_INSCRICAO","2017-12-29 16:59:23","I","","ds_pastoral==sao joao evangelista;/ds_retiro==S;/dt_cadastro==2017-12-29 16:59:22;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==NEIDE;/nu_tel_responsavel==61985609412;/ds_descricao==sou uma menina tímida, não gosto muito de fazer atividades em grupo pois me sinto um pouco desconfortável, gosto muito de escrever, sou catequista mas sinto que minha fé ainda esta muito abalada.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==76;/co_imagem==78","62","","0");

INSERT INTO TB_AUDITORIA VALUES("795","TB_PAGAMENTO","2017-12-29 17:02:08","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==62","68","","0");

INSERT INTO TB_AUDITORIA VALUES("796","TB_PARCELAMENTO","2017-12-29 17:02:08","I","","co_pagamento==68;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-29","135","","0");

INSERT INTO TB_AUDITORIA VALUES("797","TB_ACESSO","2017-12-29 17:02:14","I","","ds_session_id==6b2aeefd8ccb8e85d11e99026f0782a3;/co_usuario==8;/tp_situacao==A;/dt_fim_acesso==2017-12-29 17:22:14;/dt_inicio_acesso==2017-12-29 17:02:14","4","","0");

INSERT INTO TB_AUDITORIA VALUES("798","TB_ACESSO","2017-12-29 17:03:23","I","","ds_session_id==6b2aeefd8ccb8e85d11e99026f0782a3;/co_usuario==1;/tp_situacao==A;/dt_fim_acesso==2017-12-29 17:23:23;/dt_inicio_acesso==2017-12-29 17:03:23","5","","0");

INSERT INTO TB_AUDITORIA VALUES("799","TB_PAGAMENTO","2017-12-29 17:15:34","U","co_pagamento==62;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==57","nu_total==150;/nu_parcelas==1","62","","0");

INSERT INTO TB_AUDITORIA VALUES("800","TB_PARCELAMENTO","2017-12-29 17:15:34","D","co_parcelamento==124;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-21;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==1;/co_tipo_pagamento==1","","124","","0");

INSERT INTO TB_AUDITORIA VALUES("801","TB_PARCELAMENTO","2017-12-29 17:15:34","I","","co_pagamento==1;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-29","136","","0");

INSERT INTO TB_AUDITORIA VALUES("802","TB_ACESSO","2017-12-29 18:15:45","I","","ds_session_id==bfda130deebab8ed754625080c4e9bcf;/co_usuario==1;/tp_situacao==A;/dt_fim_acesso==2017-12-29 18:35:45;/dt_inicio_acesso==2017-12-29 18:15:45","6","","0");

INSERT INTO TB_AUDITORIA VALUES("803","TB_ACESSO","2017-12-29 20:34:36","I","","ds_session_id==d4d9c7ca925712a60ff438229825df0f;/co_usuario==1;/tp_situacao==A;/dt_fim_acesso==2017-12-29 20:54:36;/dt_inicio_acesso==2017-12-29 20:34:36","7","","0");

INSERT INTO TB_AUDITORIA VALUES("804","TB_ENDERECO","2017-12-30 09:07:53","I","","ds_endereco==QR 118 CJ 06 LT 09 CS 01;/ds_complemento==;/ds_bairro==;/nu_cep==72307807;/no_cidade==Samambaia DF;/sg_uf==DF","77","","0");

INSERT INTO TB_AUDITORIA VALUES("805","TB_CONTATO","2017-12-30 09:07:53","I","","nu_tel1==62998583534;/nu_tel2==6185548484;/nu_tel3==;/ds_email==garciamendesisabella@gmail.com","79","","0");

INSERT INTO TB_AUDITORIA VALUES("806","TB_PESSOA","2017-12-30 09:07:53","I","","nu_cpf==70602523125;/no_pessoa==ISABELLA GARCIA MENDES;/nu_rg==;/dt_cadastro==2017-12-30 09:07:52;/dt_nascimento==1999-07-20;/st_sexo==F;/co_endereco==77;/co_contato==79","77","","0");

INSERT INTO TB_AUDITORIA VALUES("807","TB_IMAGEM","2017-12-30 09:07:53","I","","ds_caminho==isabella-garcia-mendes-5a4773896b254.jpeg","79","","0");

INSERT INTO TB_AUDITORIA VALUES("808","TB_INSCRICAO","2017-12-30 09:07:53","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-30 09:07:52;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==ROSANGELA ;/nu_tel_responsavel==6185548484;/ds_descricao==18 anos, devota de Nossa Senhora ","63","","0");

INSERT INTO TB_AUDITORIA VALUES("809","TB_PAGAMENTO","2017-12-30 09:08:06","I","","nu_total==150;/nu_parcelas==1;/co_inscricao==63","69","","0");

INSERT INTO TB_AUDITORIA VALUES("810","TB_PARCELAMENTO","2017-12-30 09:08:07","I","","co_pagamento==69;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30","137","","0");

INSERT INTO TB_AUDITORIA VALUES("811","TB_ENDERECO","2017-12-30 09:37:20","I","","ds_endereco==Qr 405 13 13;/ds_complemento==13;/ds_bairro==Samambaia;/nu_cep==72319213;/no_cidade==Brasilia;/sg_uf==DF","78","","0");

INSERT INTO TB_AUDITORIA VALUES("812","TB_CONTATO","2017-12-30 09:37:20","I","","nu_tel1==61993259985;/nu_tel2==;/nu_tel3==;/ds_email==Linnekerlima@hotmail.com","80","","0");

INSERT INTO TB_AUDITORIA VALUES("813","TB_PESSOA","2017-12-30 09:37:20","I","","nu_cpf==04804195157;/no_pessoa==LINNEKER LIMA R GOMES;/nu_rg==2812756;/dt_cadastro==2017-12-30 09:37:19;/dt_nascimento==1995-10-04;/st_sexo==M;/co_endereco==78;/co_contato==80","78","","0");

INSERT INTO TB_AUDITORIA VALUES("814","TB_IMAGEM","2017-12-30 09:37:20","I","","ds_caminho==linneker-lima-r-gomes-5a477a7040c27.jpeg","80","","0");

INSERT INTO TB_AUDITORIA VALUES("815","TB_INSCRICAO","2017-12-30 09:37:20","I","","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-30 09:37:19;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==9;/no_responsavel==ELIENE;/nu_tel_responsavel==6134594937;/ds_descricao==———-;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==N;/co_pessoa==78;/co_imagem==80","64","","0");

INSERT INTO TB_AUDITORIA VALUES("816","TB_PAGAMENTO","2017-12-30 09:39:20","I","","nu_total==150;/nu_parcelas==1;/co_inscricao==64","70","","0");

INSERT INTO TB_AUDITORIA VALUES("817","TB_PARCELAMENTO","2017-12-30 09:39:20","I","","co_pagamento==70;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30","138","","0");

INSERT INTO TB_AUDITORIA VALUES("818","TB_ACESSO","2017-12-30 09:45:28","I","","ds_session_id==0e9c97b9f7681ef9949c16d5d3953a78;/co_usuario==5;/tp_situacao==A;/dt_fim_acesso==2017-12-30 10:05:28;/dt_inicio_acesso==2017-12-30 09:45:28","8","","0");

INSERT INTO TB_AUDITORIA VALUES("819","TB_PARCELAMENTO","2017-12-30 09:48:39","U","co_parcelamento==137;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-30;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==69;/co_tipo_pagamento==1","nu_valor_parcela_pago==150.00;/dt_vencimento_pago==2017-12-16;/co_tipo_pagamento==1;/ds_observacao==","137","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("820","TB_PAGAMENTO","2017-12-30 09:48:39","U","co_pagamento==69;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==63","tp_situacao==C","69","Coordenador, Membro, Membro","5");

INSERT INTO TB_AUDITORIA VALUES("821","TB_ENDERECO","2017-12-30 12:02:02","I","","ds_endereco==Avenida Rabelo;/ds_complemento==Casa 12 A;/ds_bairro==Vila Planalto;/nu_cep==70804020;/no_cidade==Brasília- DF;/sg_uf==DF","79","","0");

INSERT INTO TB_AUDITORIA VALUES("822","TB_CONTATO","2017-12-30 12:02:02","I","","nu_tel1==61982892125;/nu_tel2==61981173673;/nu_tel3==;/ds_email==Labussolo@gmail.com","81","","0");

INSERT INTO TB_AUDITORIA VALUES("823","TB_PESSOA","2017-12-30 12:02:02","I","","nu_cpf==07413552132;/no_pessoa==LAURA DOS SANTOS BUSSOLO;/nu_rg==3313317;/dt_cadastro==2017-12-30 12:02:00;/dt_nascimento==2001-06-01;/st_sexo==F;/co_endereco==79;/co_contato==81","79","","0");

INSERT INTO TB_AUDITORIA VALUES("824","TB_IMAGEM","2017-12-30 12:02:02","I","","ds_caminho==laura-dos-santos-bussolo-5a479c5a028c9.JPG","81","","0");

INSERT INTO TB_AUDITORIA VALUES("825","TB_INSCRICAO","2017-12-30 12:02:02","I","","ds_pastoral==Grupo Servir, quadrilha e ministério de música da Verbo Divino, e tbm participo do grupo SIM e ministério de música da Paroquia Nossa senhora Rosario de Pompeia;/ds_retiro==S;/dt_cadastro==2017-12-30 12:02:00;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==5;/no_responsavel==OSVALDO BUSSOLO ;/nu_tel_responsavel==61981173673;/ds_descricao==Eu sou muito extrovertida, adoro cantar, dançar é comigo mesmo, amo teatro, e gosto muito de ajudar a igreja, pelo menos as q eu frequento, gosto muito de me divertir com meus amigos, e minha família tambem, sou aberta a opiniões sobre vários assuntos e sou bastante teimosa quando quero algo (e sempre consigo).;/ds_alimentacao==Não tenho;/ds_medicacao==Não uso;/st_equipe_trabalho==N;/co_pessoa==79;/co_imagem==81","65","","0");

INSERT INTO TB_AUDITORIA VALUES("826","TB_PAGAMENTO","2017-12-30 16:02:55","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==65","71","","0");

INSERT INTO TB_AUDITORIA VALUES("827","TB_PARCELAMENTO","2017-12-30 16:02:55","I","","co_pagamento==71;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-30","139","","0");

INSERT INTO TB_AUDITORIA VALUES("828","TB_ENDERECO","2017-12-30 16:18:35","I","","ds_endereco==QR 320 Conjunto 7;/ds_complemento==13;/ds_bairro==Sul;/nu_cep==72310107;/no_cidade==Brasília;/sg_uf==DF","80","","0");

INSERT INTO TB_AUDITORIA VALUES("829","TB_CONTATO","2017-12-30 16:18:35","I","","nu_tel1==61999620997;/nu_tel2==61999620997;/nu_tel3==;/ds_email==Mayllasbalzani@gmail.com","82","","0");

INSERT INTO TB_AUDITORIA VALUES("830","TB_PESSOA","2017-12-30 16:18:35","I","","nu_cpf==04715844109;/no_pessoa==MAYLLA SOUZA BALZANI;/nu_rg==3241579;/dt_cadastro==2017-12-30 16:18:32;/dt_nascimento==1994-04-08;/st_sexo==F;/co_endereco==80;/co_contato==82","80","","0");

INSERT INTO TB_AUDITORIA VALUES("831","TB_IMAGEM","2017-12-30 16:18:35","I","","ds_caminho==maylla-souza-balzani-5a47d87adde41.jpg","82","","0");

INSERT INTO TB_AUDITORIA VALUES("832","TB_INSCRICAO","2017-12-30 16:18:35","I","","ds_pastoral==Guardiã do Santissimo sacramento;/ds_retiro==S;/dt_cadastro==2017-12-30 16:18:32;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==5;/no_responsavel==NAMORADO ;/nu_tel_responsavel==6199620997;/ds_descricao==Estudante de Direito e pós graduanda em direito penal, investigação forense e perícia criminal;/ds_alimentacao==Alergica a pimenta;/ds_medicacao==Clonazepan;/st_equipe_trabalho==N;/co_pessoa==80;/co_imagem==82","66","","0");

INSERT INTO TB_AUDITORIA VALUES("833","TB_PAGAMENTO","2017-12-30 17:03:21","I","","nu_total==150.00;/nu_parcelas==1;/co_inscricao==66","72","","0");

INSERT INTO TB_AUDITORIA VALUES("834","TB_PARCELAMENTO","2017-12-30 17:03:21","I","","co_pagamento==72;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==150.00;/dt_vencimento==2017-12-30","140","","0");

INSERT INTO TB_AUDITORIA VALUES("835","TB_ACESSO","2017-12-30 17:03:46","I","","ds_session_id==ece6f7b7367f26bc301a56fe85385e48;/co_usuario==1;/tp_situacao==A;/ds_navegador==Safari;/ds_sistema_operacional==Windows 8.1;/ds_dispositivo==Computador;/dt_fim_acesso==2017-12-30 17:23:46;/dt_inicio_acesso==2017-12-30 17:03:46","9","","0");

INSERT INTO TB_AUDITORIA VALUES("836","TB_ACESSO","2017-12-30 17:05:00","I","","ds_session_id==ece6f7b7367f26bc301a56fe85385e48;/co_usuario==1;/tp_situacao==A;/ds_navegador==Chrome;/ds_sistema_operacional==Windows 8.1;/ds_dispositivo==Computador;/dt_fim_acesso==2017-12-30 17:25:00;/dt_inicio_acesso==2017-12-30 17:05:00","10","","0");

INSERT INTO TB_AUDITORIA VALUES("837","TB_ACESSO","2017-12-30 17:06:06","I","","ds_session_id==1ebc5110f488487a0723b438a0abbd74;/co_usuario==1;/tp_situacao==A;/ds_navegador==Chrome;/ds_sistema_operacional==Linux;/ds_dispositivo==android;/dt_fim_acesso==2017-12-30 17:26:06;/dt_inicio_acesso==2017-12-30 17:06:06","11","","0");

INSERT INTO TB_AUDITORIA VALUES("838","TB_ACESSO","2017-12-30 19:19:38","I","","ds_session_id==78d08c20f357df4fbdad4da5b5103eb5;/co_usuario==1;/tp_situacao==A;/ds_navegador==Chrome;/ds_sistema_operacional==Windows 8.1;/ds_dispositivo==Computador;/dt_fim_acesso==2017-12-30 19:39:38;/dt_inicio_acesso==2017-12-30 19:19:38","12","","0");

INSERT INTO TB_AUDITORIA VALUES("839","TB_ENDERECO","2017-12-30 19:22:55","U","co_endereco==78;/ds_endereco==Qr 405 13 13;/ds_complemento==13;/ds_bairro==Samambaia;/nu_cep==72319213;/no_cidade==Brasilia;/sg_uf==DF","ds_endereco==Qr 405 13 13;/ds_complemento==13;/ds_bairro==Samambaia;/nu_cep==72319213;/no_cidade==Brasilia;/sg_uf==DF","78","Master","1");

INSERT INTO TB_AUDITORIA VALUES("840","TB_CONTATO","2017-12-30 19:22:55","U","co_contato==80;/nu_tel1==61993259985;/nu_tel2==;/nu_tel3==;/ds_email==Linnekerlima@hotmail.com","nu_tel1==61993259985;/nu_tel2==;/nu_tel3==;/ds_email==Linnekerlima@hotmail.com","80","Master","1");

INSERT INTO TB_AUDITORIA VALUES("841","TB_INSCRICAO","2017-12-30 19:22:56","U","co_inscricao==64;/ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-30 09:37:19;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==9;/no_responsavel==ELIENE;/nu_tel_responsavel==6134594937;/ds_descricao==———-;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==78;/co_imagem==80","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-30 19:22:55;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==9;/no_responsavel==ELIENE;/nu_tel_responsavel==61934594937;/ds_descricao==———-;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","64","Master","1");

INSERT INTO TB_AUDITORIA VALUES("842","TB_PAGAMENTO","2017-12-30 19:22:56","U","co_pagamento==70;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==64","nu_parcelas==1","70","Master","1");

INSERT INTO TB_AUDITORIA VALUES("843","TB_PARCELAMENTO","2017-12-30 19:22:56","D","co_parcelamento==138;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-30;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==70;/co_tipo_pagamento==3","","138","Master","1");

INSERT INTO TB_AUDITORIA VALUES("844","TB_PARCELAMENTO","2017-12-30 19:22:56","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==70","141","Master","1");

INSERT INTO TB_AUDITORIA VALUES("845","TB_ENDERECO","2017-12-30 19:23:11","U","co_endereco==5;/ds_endereco==Qr. 204 Conjunto 12 Lote 16;/ds_complemento==Kit 01;/ds_bairro==Norte;/nu_cep==72316092;/no_cidade==Samambaia ;/sg_uf==DF","ds_endereco==Qr. 204 Conjunto 12 Lote 16;/ds_complemento==Kit 01;/ds_bairro==Norte;/nu_cep==72316092;/no_cidade==Samambaia ;/sg_uf==DF","5","Master","1");

INSERT INTO TB_AUDITORIA VALUES("846","TB_CONTATO","2017-12-30 19:23:11","U","co_contato==5;/nu_tel1==61984624670;/nu_tel2==61991774916;/nu_tel3==;/ds_email==amaury.ritchenzoo@gmail.com","nu_tel1==61984624670;/nu_tel2==61991774916;/nu_tel3==;/ds_email==amaury.ritchenzoo@gmail.com","5","Master","1");

INSERT INTO TB_AUDITORIA VALUES("847","TB_INSCRICAO","2017-12-30 19:23:11","U","co_inscricao==4;/ds_pastoral==GEJ Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-04 15:33:41;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==8;/no_responsavel==MãE ;/nu_tel_responsavel==61991774916;/ds_descricao==Sou um rapaz muito ativo, participativo, alegre é muito sério também.\nNão sou muito fã de falar de mim, mas sou isto e um pouco mais !;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==5;/co_imagem==5","ds_pastoral==GEJ Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-30 19:23:11;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==8;/no_responsavel==MãE ;/nu_tel_responsavel==61991774916;/ds_descricao==Sou um rapaz muito ativo, participativo, alegre é muito sério também.\nNão sou muito fã de falar de mim, mas sou isto e um pouco mais !;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","4","Master","1");

INSERT INTO TB_AUDITORIA VALUES("848","TB_PAGAMENTO","2017-12-30 19:23:11","U","co_pagamento==4;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==4","nu_parcelas==1","4","Master","1");

INSERT INTO TB_AUDITORIA VALUES("849","TB_PARCELAMENTO","2017-12-30 19:23:12","D","co_parcelamento==75;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==4;/co_tipo_pagamento==1","","75","Master","1");

INSERT INTO TB_AUDITORIA VALUES("850","TB_PARCELAMENTO","2017-12-30 19:23:12","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==4","142","Master","1");

INSERT INTO TB_AUDITORIA VALUES("851","TB_ENDERECO","2017-12-30 19:23:26","U","co_endereco==6;/ds_endereco==Qs 403 , conj. 10 casa 27;/ds_complemento==;/ds_bairro==Samambaia norte;/nu_cep==72319111;/no_cidade==Brasília;/sg_uf==DF","ds_endereco==Qs 403 , conj. 10 casa 27;/ds_complemento==;/ds_bairro==Samambaia norte;/nu_cep==72319111;/no_cidade==Brasília;/sg_uf==DF","6","Master","1");

INSERT INTO TB_AUDITORIA VALUES("852","TB_CONTATO","2017-12-30 19:23:26","U","co_contato==6;/nu_tel1==62982163027;/nu_tel2==;/nu_tel3==;/ds_email==henriquecarvalhohca@outlook.com","nu_tel1==62982163027;/nu_tel2==;/nu_tel3==;/ds_email==henriquecarvalhohca@outlook.com","6","Master","1");

INSERT INTO TB_AUDITORIA VALUES("853","TB_INSCRICAO","2017-12-30 19:23:26","U","co_inscricao==5;/ds_pastoral==Acólitos e coroinhas;/ds_retiro==N;/dt_cadastro==2017-12-04 17:05:20;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==MãE ;/nu_tel_responsavel==62999535024;/ds_descricao==Sou gente boa;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==6;/co_imagem==6","ds_pastoral==Acólitos e coroinhas;/ds_retiro==N;/dt_cadastro==2017-12-30 19:23:25;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==MãE ;/nu_tel_responsavel==62999535024;/ds_descricao==Sou gente boa;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","5","Master","1");

INSERT INTO TB_AUDITORIA VALUES("854","TB_PAGAMENTO","2017-12-30 19:23:26","U","co_pagamento==5;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==5","nu_parcelas==1","5","Master","1");

INSERT INTO TB_AUDITORIA VALUES("855","TB_PARCELAMENTO","2017-12-30 19:23:26","D","co_parcelamento==76;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==5;/co_tipo_pagamento==1","","76","Master","1");

INSERT INTO TB_AUDITORIA VALUES("856","TB_PARCELAMENTO","2017-12-30 19:23:26","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==5","143","Master","1");

INSERT INTO TB_AUDITORIA VALUES("857","TB_ENDERECO","2017-12-30 19:23:57","U","co_endereco==8;/ds_endereco==QR 211 conj 03 casa 13;/ds_complemento==;/ds_bairro==;/nu_cep==72343000;/no_cidade==Samambaia Norte;/sg_uf==DF","ds_endereco==QR 211 conj 03 casa 13;/ds_complemento==;/ds_bairro==;/nu_cep==72343000;/no_cidade==Samambaia Norte;/sg_uf==DF","8","Master","1");

INSERT INTO TB_AUDITORIA VALUES("858","TB_CONTATO","2017-12-30 19:23:57","U","co_contato==8;/nu_tel1==61993898324;/nu_tel2==61994186538;/nu_tel3==;/ds_email==jerlanesilva06@gmail.com","nu_tel1==61993898324;/nu_tel2==61994186538;/nu_tel3==;/ds_email==jerlanesilva06@gmail.com","8","Master","1");

INSERT INTO TB_AUDITORIA VALUES("859","TB_INSCRICAO","2017-12-30 19:23:57","U","co_inscricao==7;/ds_pastoral==Gej;/ds_retiro==N;/dt_cadastro==2017-12-04 17:42:47;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==2;/no_responsavel==MINHA MãE ;/nu_tel_responsavel==61994186538;/ds_descricao==Eu me chamo Jerlane sou do gej tenho  16 anos sou extrovertida brincalhona meiga seria amuuh participar dos eventos do gej amuuh fazer amizade com as pessoas;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==8;/co_imagem==8","ds_pastoral==Gej;/ds_retiro==N;/dt_cadastro==2017-12-30 19:23:57;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==2;/no_responsavel==MINHA MãE ;/nu_tel_responsavel==61994186538;/ds_descricao==Eu me chamo Jerlane sou do gej tenho  16 anos sou extrovertida brincalhona meiga seria amuuh participar dos eventos do gej amuuh fazer amizade com as pessoas;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","7","Master","1");

INSERT INTO TB_AUDITORIA VALUES("860","TB_PAGAMENTO","2017-12-30 19:23:57","U","co_pagamento==7;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==C;/ds_observacao==;/co_inscricao==7","nu_parcelas==1","7","Master","1");

INSERT INTO TB_AUDITORIA VALUES("861","TB_PARCELAMENTO","2017-12-30 19:23:57","D","co_parcelamento==78;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==150.00;/dt_vencimento==2017-12-14;/dt_vencimento_pago==2017-11-24;/ds_observacao==;/co_pagamento==7;/co_tipo_pagamento==1","","78","Master","1");

INSERT INTO TB_AUDITORIA VALUES("862","TB_PARCELAMENTO","2017-12-30 19:23:57","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==7","144","Master","1");

INSERT INTO TB_AUDITORIA VALUES("863","TB_PARCELAMENTO","2017-12-30 19:24:24","U","co_parcelamento==144;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-30;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==7;/co_tipo_pagamento==1","nu_valor_parcela_pago==150.00;/dt_vencimento_pago==2017-12-20;/co_tipo_pagamento==1;/ds_observacao==","144","Master","1");

INSERT INTO TB_AUDITORIA VALUES("864","TB_PAGAMENTO","2017-12-30 19:24:24","U","co_pagamento==7;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==C;/ds_observacao==;/co_inscricao==7","tp_situacao==C","7","Master","1");

INSERT INTO TB_AUDITORIA VALUES("865","TB_ENDERECO","2017-12-30 19:25:01","U","co_endereco==10;/ds_endereco==Qr 423 Conjunto 03 Casa 24;/ds_complemento==24;/ds_bairro==Samambaia Norte;/nu_cep==72325203;/no_cidade==Brasília;/sg_uf==DF","ds_endereco==Qr 423 Conjunto 03 Casa 24;/ds_complemento==24;/ds_bairro==Samambaia Norte;/nu_cep==72325203;/no_cidade==Brasília;/sg_uf==DF","10","Master","1");

INSERT INTO TB_AUDITORIA VALUES("866","TB_CONTATO","2017-12-30 19:25:01","U","co_contato==10;/nu_tel1==61992850286;/nu_tel2==6195282513;/nu_tel3==;/ds_email==karenn.geovanna@gmail.com","nu_tel1==61992850286;/nu_tel2==61995282513;/nu_tel3==;/ds_email==karenn.geovanna@gmail.com","10","Master","1");

INSERT INTO TB_AUDITORIA VALUES("867","TB_INSCRICAO","2017-12-30 19:25:01","U","co_inscricao==9;/ds_pastoral==GEJ DOM BOSCO;/ds_retiro==S;/dt_cadastro==2017-12-04 18:49:53;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==DENISE;/nu_tel_responsavel==6134595330;/ds_descricao==Trago dentro de mim um pouco da alegria que vem de Deus! *-*;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==10;/co_imagem==10","ds_pastoral==GEJ DOM BOSCO;/ds_retiro==S;/dt_cadastro==2017-12-30 19:25:00;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==DENISE;/nu_tel_responsavel==61934595330;/ds_descricao==Trago dentro de mim um pouco da alegria que vem de Deus! *-*;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","9","Master","1");

INSERT INTO TB_AUDITORIA VALUES("868","TB_PAGAMENTO","2017-12-30 19:25:01","U","co_pagamento==9;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==9","nu_parcelas==1","9","Master","1");

INSERT INTO TB_AUDITORIA VALUES("869","TB_PARCELAMENTO","2017-12-30 19:25:01","D","co_parcelamento==80;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==9;/co_tipo_pagamento==1","","80","Master","1");

INSERT INTO TB_AUDITORIA VALUES("870","TB_PARCELAMENTO","2017-12-30 19:25:01","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==9","145","Master","1");

INSERT INTO TB_AUDITORIA VALUES("871","TB_ENDERECO","2017-12-30 19:26:00","U","co_endereco==14;/ds_endereco==Qr 603 chácara 39 cadáveres 30 B;/ds_complemento==Rua 03 Condomínio Vida Nova;/ds_bairro==Samambaia Norte;/nu_cep==72331100;/no_cidade==Samambaia ;/sg_uf==DF","ds_endereco==Qr 603 chácara 39 cadáveres 30 B;/ds_complemento==Rua 03 Condomínio Vida Nova;/ds_bairro==Samambaia Norte;/nu_cep==72331100;/no_cidade==Samambaia ;/sg_uf==DF","14","Master","1");

INSERT INTO TB_AUDITORIA VALUES("872","TB_CONTATO","2017-12-30 19:26:00","U","co_contato==14;/nu_tel1==6182609125;/nu_tel2==6181214179;/nu_tel3==;/ds_email==sirlei_arq@hotmail.com","nu_tel1==61982609125;/nu_tel2==61981214179;/nu_tel3==;/ds_email==sirlei_arq@hotmail.com","14","Master","1");

INSERT INTO TB_AUDITORIA VALUES("873","TB_INSCRICAO","2017-12-30 19:26:00","U","co_inscricao==13;/ds_pastoral==GEJ Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-04 22:44:49;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MãE ;/nu_tel_responsavel==6181214179;/ds_descricao==Desinibida.;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==14;/co_imagem==14","ds_pastoral==GEJ Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-30 19:25:59;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MãE ;/nu_tel_responsavel==61981214179;/ds_descricao==Desinibida.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","13","Master","1");

INSERT INTO TB_AUDITORIA VALUES("874","TB_PAGAMENTO","2017-12-30 19:26:00","U","co_pagamento==12;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==13","nu_parcelas==1","12","Master","1");

INSERT INTO TB_AUDITORIA VALUES("875","TB_PARCELAMENTO","2017-12-30 19:26:00","D","co_parcelamento==83;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==12;/co_tipo_pagamento==1","","83","Master","1");

INSERT INTO TB_AUDITORIA VALUES("876","TB_PARCELAMENTO","2017-12-30 19:26:00","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==12","146","Master","1");

INSERT INTO TB_AUDITORIA VALUES("877","TB_ENDERECO","2017-12-30 19:28:49","U","co_endereco==15;/ds_endereco==Qr 421 conjunto 09 casa 11;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==72325110;/no_cidade==Samambaia Norte - DF- Brasília;/sg_uf==DF","ds_endereco==Qr 421 conjunto 09 casa 11;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==72325110;/no_cidade==Samambaia Norte - DF- Brasília;/sg_uf==DF","15","Master","1");

INSERT INTO TB_AUDITORIA VALUES("878","TB_CONTATO","2017-12-30 19:28:49","U","co_contato==15;/nu_tel1==61994129510;/nu_tel2==;/nu_tel3==;/ds_email==vicclima123@hotmail.com","nu_tel1==61994129510;/nu_tel2==;/nu_tel3==;/ds_email==vicclima123@hotmail.com","15","Master","1");

INSERT INTO TB_AUDITORIA VALUES("879","TB_INSCRICAO","2017-12-30 19:28:49","U","co_inscricao==14;/ds_pastoral==GEJ DOM BOSCO;/ds_retiro==S;/dt_cadastro==2017-12-04 23:48:55;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==PAI;/nu_tel_responsavel==61992197688;/ds_descricao==Feliz;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==15;/co_imagem==15","ds_pastoral==GEJ DOM BOSCO;/ds_retiro==S;/dt_cadastro==2017-12-30 19:28:48;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==PAI;/nu_tel_responsavel==61992197688;/ds_descricao==Feliz;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","14","Master","1");

INSERT INTO TB_AUDITORIA VALUES("880","TB_PAGAMENTO","2017-12-30 19:28:49","U","co_pagamento==14;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==14","nu_parcelas==1","14","Master","1");

INSERT INTO TB_AUDITORIA VALUES("881","TB_PARCELAMENTO","2017-12-30 19:28:49","D","co_parcelamento==84;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==14;/co_tipo_pagamento==1","","84","Master","1");

INSERT INTO TB_AUDITORIA VALUES("882","TB_PARCELAMENTO","2017-12-30 19:28:49","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==14","147","Master","1");

INSERT INTO TB_AUDITORIA VALUES("883","TB_ENDERECO","2017-12-30 19:29:13","U","co_endereco==16;/ds_endereco==Quadra: 425, Conjunto:26;/ds_complemento==Casa:14;/ds_bairro==Samambaia Norte;/nu_cep==72327027;/no_cidade==Brasília;/sg_uf==DF","ds_endereco==Quadra: 425, Conjunto:26;/ds_complemento==Casa:14;/ds_bairro==Samambaia Norte;/nu_cep==72327027;/no_cidade==Brasília;/sg_uf==DF","16","Master","1");

INSERT INTO TB_AUDITORIA VALUES("884","TB_CONTATO","2017-12-30 19:29:13","U","co_contato==16;/nu_tel1==61995637226;/nu_tel2==61993166755;/nu_tel3==;/ds_email==lucaslcr33@gmail.com","nu_tel1==61995637226;/nu_tel2==61993166755;/nu_tel3==;/ds_email==lucaslcr33@gmail.com","16","Master","1");

INSERT INTO TB_AUDITORIA VALUES("885","TB_INSCRICAO","2017-12-30 19:29:13","U","co_inscricao==15;/ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-05 08:13:36;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==MARIA JOSé;/nu_tel_responsavel==6133593245;/ds_descricao==Membro da equipe de música Gej Dom Bosco, ex-acólito e cerimoniário da Paróquia São José Operário.;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==16;/co_imagem==16","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-30 19:29:12;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==MARIA JOSé;/nu_tel_responsavel==61933593245;/ds_descricao==Membro da equipe de música Gej Dom Bosco, ex-acólito e cerimoniário da Paróquia São José Operário.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","15","Master","1");

INSERT INTO TB_AUDITORIA VALUES("886","TB_PAGAMENTO","2017-12-30 19:29:13","U","co_pagamento==15;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==15","nu_parcelas==1","15","Master","1");

INSERT INTO TB_AUDITORIA VALUES("887","TB_PARCELAMENTO","2017-12-30 19:29:13","D","co_parcelamento==85;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==15;/co_tipo_pagamento==1","","85","Master","1");

INSERT INTO TB_AUDITORIA VALUES("888","TB_PARCELAMENTO","2017-12-30 19:29:13","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==15","148","Master","1");

INSERT INTO TB_AUDITORIA VALUES("889","TB_ENDERECO","2017-12-30 19:29:27","U","co_endereco==19;/ds_endereco==Qr 213 conjunto 05 casa 09;/ds_complemento==09;/ds_bairro==Samambaia;/nu_cep==72343105;/no_cidade==Brasilía;/sg_uf==DF","ds_endereco==Qr 213 conjunto 05 casa 09;/ds_complemento==09;/ds_bairro==Samambaia;/nu_cep==72343105;/no_cidade==Brasilía;/sg_uf==DF","19","Master","1");

INSERT INTO TB_AUDITORIA VALUES("890","TB_CONTATO","2017-12-30 19:29:27","U","co_contato==19;/nu_tel1==6133593574;/nu_tel2==6133593574;/nu_tel3==;/ds_email==priscilamartins213@gmail.com","nu_tel1==61933593574;/nu_tel2==61933593574;/nu_tel3==;/ds_email==priscilamartins213@gmail.com","19","Master","1");

INSERT INTO TB_AUDITORIA VALUES("891","TB_INSCRICAO","2017-12-30 19:29:27","U","co_inscricao==18;/ds_pastoral==GEJ-Dom bosco;/ds_retiro==S;/dt_cadastro==2017-12-05 11:56:37;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==2;/no_responsavel==RITA MARIA ;/nu_tel_responsavel==6133593574;/ds_descricao==Otima pessoa para se conviver.;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==19;/co_imagem==19","ds_pastoral==GEJ-Dom bosco;/ds_retiro==S;/dt_cadastro==2017-12-30 19:29:26;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==2;/no_responsavel==RITA MARIA ;/nu_tel_responsavel==61933593574;/ds_descricao==Otima pessoa para se conviver.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","18","Master","1");

INSERT INTO TB_AUDITORIA VALUES("892","TB_PAGAMENTO","2017-12-30 19:29:27","U","co_pagamento==18;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==18","nu_parcelas==1","18","Master","1");

INSERT INTO TB_AUDITORIA VALUES("893","TB_PARCELAMENTO","2017-12-30 19:29:27","D","co_parcelamento==88;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==18;/co_tipo_pagamento==1","","88","Master","1");

INSERT INTO TB_AUDITORIA VALUES("894","TB_PARCELAMENTO","2017-12-30 19:29:27","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==18","149","Master","1");

INSERT INTO TB_AUDITORIA VALUES("895","TB_ENDERECO","2017-12-30 19:29:46","U","co_endereco==22;/ds_endereco==Qr 405 conjunto 25, casa 05;/ds_complemento==;/ds_bairro==samambaia;/nu_cep==72319225;/no_cidade==Brasilia;/sg_uf==DF","ds_endereco==Qr 405 conjunto 25, casa 05;/ds_complemento==;/ds_bairro==samambaia;/nu_cep==72319225;/no_cidade==Brasilia;/sg_uf==DF","22","Master","1");

INSERT INTO TB_AUDITORIA VALUES("896","TB_CONTATO","2017-12-30 19:29:46","U","co_contato==22;/nu_tel1==61985539668;/nu_tel2==;/nu_tel3==;/ds_email==kamilaf.silva@hotmail.com","nu_tel1==61985539668;/nu_tel2==;/nu_tel3==;/ds_email==kamilaf.silva@hotmail.com","22","Master","1");

INSERT INTO TB_AUDITORIA VALUES("897","TB_INSCRICAO","2017-12-30 19:29:46","U","co_inscricao==21;/ds_pastoral==GEJ DOM BOSCO;/ds_retiro==S;/dt_cadastro==2017-12-06 02:16:10;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==6;/no_responsavel==MãE ;/nu_tel_responsavel==61986130447;/ds_descricao==oie, sou tolerante a lactose e sensível à glúten então plmrdds lembrem-se disso quando forem montar o cardápio, grata. \nP.S.: ficou faltando um lugarzinho para colocar restrições alimentares e se tem alguma doença/se precisa de medicação.;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==22;/co_imagem==22","ds_pastoral==GEJ DOM BOSCO;/ds_retiro==S;/dt_cadastro==2017-12-30 19:29:46;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==6;/no_responsavel==MãE ;/nu_tel_responsavel==61986130447;/ds_descricao==oie, sou tolerante a lactose e sensível à glúten então plmrdds lembrem-se disso quando forem montar o cardápio, grata. \nP.S.: ficou faltando um lugarzinho para colocar restrições alimentares e se tem alguma doença/se precisa de medicação.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","21","Master","1");

INSERT INTO TB_AUDITORIA VALUES("898","TB_PAGAMENTO","2017-12-30 19:29:46","U","co_pagamento==22;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==21","nu_parcelas==1","22","Master","1");

INSERT INTO TB_AUDITORIA VALUES("899","TB_PARCELAMENTO","2017-12-30 19:29:47","D","co_parcelamento==91;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==22;/co_tipo_pagamento==1","","91","Master","1");

INSERT INTO TB_AUDITORIA VALUES("900","TB_PARCELAMENTO","2017-12-30 19:29:47","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==22","150","Master","1");

INSERT INTO TB_AUDITORIA VALUES("901","TB_ENDERECO","2017-12-30 19:30:11","U","co_endereco==28;/ds_endereco==Qn 211 conjunto 01 casa 35;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==;/no_cidade==Brasilia;/sg_uf==DF","ds_endereco==Qn 211 conjunto 01 casa 35;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==;/no_cidade==Brasilia;/sg_uf==DF","28","Master","1");

INSERT INTO TB_AUDITORIA VALUES("902","TB_CONTATO","2017-12-30 19:30:11","U","co_contato==28;/nu_tel1==61995121814;/nu_tel2==;/nu_tel3==;/ds_email==Raulmiran@hotmail.com","nu_tel1==61995121814;/nu_tel2==;/nu_tel3==;/ds_email==Raulmiran@hotmail.com","28","Master","1");

INSERT INTO TB_AUDITORIA VALUES("903","TB_INSCRICAO","2017-12-30 19:30:11","U","co_inscricao==27;/ds_pastoral==Gej;/ds_retiro==S;/dt_cadastro==2017-12-08 23:06:26;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==MãE ;/nu_tel_responsavel==6133598257;/ds_descricao==Mmmmm;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==28;/co_imagem==28","ds_pastoral==Gej;/ds_retiro==S;/dt_cadastro==2017-12-30 19:30:10;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==MãE ;/nu_tel_responsavel==61933598257;/ds_descricao==Mmmmm;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","27","Master","1");

INSERT INTO TB_AUDITORIA VALUES("904","TB_PAGAMENTO","2017-12-30 19:30:11","U","co_pagamento==27;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==27","nu_parcelas==1","27","Master","1");

INSERT INTO TB_AUDITORIA VALUES("905","TB_PARCELAMENTO","2017-12-30 19:30:11","D","co_parcelamento==97;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==27;/co_tipo_pagamento==1","","97","Master","1");

INSERT INTO TB_AUDITORIA VALUES("906","TB_PARCELAMENTO","2017-12-30 19:30:12","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==27","151","Master","1");

INSERT INTO TB_AUDITORIA VALUES("907","TB_ENDERECO","2017-12-30 19:30:25","U","co_endereco==30;/ds_endereco==Qr 403 conjunto 16;/ds_complemento==Casa 17;/ds_bairro==Samambaia Norte;/nu_cep==72319117;/no_cidade==Samambaia Norte;/sg_uf==DF","ds_endereco==Qr 403 conjunto 16;/ds_complemento==Casa 17;/ds_bairro==Samambaia Norte;/nu_cep==72319117;/no_cidade==Samambaia Norte;/sg_uf==DF","30","Master","1");

INSERT INTO TB_AUDITORIA VALUES("908","TB_CONTATO","2017-12-30 19:30:25","U","co_contato==30;/nu_tel1==61993151297;/nu_tel2==;/nu_tel3==;/ds_email==lucrece.neri@hotmail.com","nu_tel1==61993151297;/nu_tel2==;/nu_tel3==;/ds_email==lucrece.neri@hotmail.com","30","Master","1");

INSERT INTO TB_AUDITORIA VALUES("909","TB_INSCRICAO","2017-12-30 19:30:25","U","co_inscricao==29;/ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-09 09:33:32;/ds_membro_ativo==N;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LUCILENE AGUIAR;/nu_tel_responsavel==6195990533;/ds_descricao==Feliz...;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==30;/co_imagem==30","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-30 19:30:25;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LUCILENE AGUIAR;/nu_tel_responsavel==61995990533;/ds_descricao==Feliz...;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","29","Master","1");

INSERT INTO TB_AUDITORIA VALUES("910","TB_PAGAMENTO","2017-12-30 19:30:25","U","co_pagamento==29;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==29","nu_parcelas==1","29","Master","1");

INSERT INTO TB_AUDITORIA VALUES("911","TB_PARCELAMENTO","2017-12-30 19:30:26","D","co_parcelamento==99;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==29;/co_tipo_pagamento==1","","99","Master","1");

INSERT INTO TB_AUDITORIA VALUES("912","TB_PARCELAMENTO","2017-12-30 19:30:26","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==29","152","Master","1");

INSERT INTO TB_AUDITORIA VALUES("913","TB_ENDERECO","2017-12-30 19:30:47","U","co_endereco==35;/ds_endereco==QR 405 Conjunto 21 Casa 26;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72319221;/no_cidade==Brasília;/sg_uf==DF","ds_endereco==QR 405 Conjunto 21 Casa 26;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72319221;/no_cidade==Brasília;/sg_uf==DF","35","Master","1");

INSERT INTO TB_AUDITORIA VALUES("914","TB_CONTATO","2017-12-30 19:30:47","U","co_contato==35;/nu_tel1==61991984370;/nu_tel2==;/nu_tel3==;/ds_email==lukka_bessa@hotmail.com","nu_tel1==61991984370;/nu_tel2==;/nu_tel3==;/ds_email==lukka_bessa@hotmail.com","35","Master","1");

INSERT INTO TB_AUDITORIA VALUES("915","TB_INSCRICAO","2017-12-30 19:30:47","U","co_inscricao==32;/ds_pastoral==GEJ Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-10 22:49:28;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LEDA;/nu_tel_responsavel==61992724933;/ds_descricao==Ser aquilo que Deus quer fazer de mim!;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==35;/co_imagem==35","ds_pastoral==GEJ Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-30 19:30:46;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LEDA;/nu_tel_responsavel==61992724933;/ds_descricao==Ser aquilo que Deus quer fazer de mim!;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","32","Master","1");

INSERT INTO TB_AUDITORIA VALUES("916","TB_PAGAMENTO","2017-12-30 19:30:47","U","co_pagamento==32;/nu_total==160.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==32","nu_parcelas==1","32","Master","1");

INSERT INTO TB_AUDITORIA VALUES("917","TB_PARCELAMENTO","2017-12-30 19:30:47","D","co_parcelamento==102;/nu_parcela==1;/nu_valor_parcela==160.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-14;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==32;/co_tipo_pagamento==1","","102","Master","1");

INSERT INTO TB_AUDITORIA VALUES("918","TB_PARCELAMENTO","2017-12-30 19:30:47","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==32","153","Master","1");

INSERT INTO TB_AUDITORIA VALUES("919","TB_ENDERECO","2017-12-30 19:31:06","U","co_endereco==51;/ds_endereco==QR 414 Conjunto 13 casa 17;/ds_complemento==Casa 17;/ds_bairro==Samambaia Norte;/nu_cep==72320218;/no_cidade==Brasília Df;/sg_uf==DF","ds_endereco==QR 414 Conjunto 13 casa 17;/ds_complemento==Casa 17;/ds_bairro==Samambaia Norte;/nu_cep==72320218;/no_cidade==Brasília Df;/sg_uf==DF","51","Master","1");

INSERT INTO TB_AUDITORIA VALUES("920","TB_CONTATO","2017-12-30 19:31:06","U","co_contato==51;/nu_tel1==6130395165;/nu_tel2==6199800644;/nu_tel3==;/ds_email==Babynhalindinha_@hotmail.com","nu_tel1==61930395165;/nu_tel2==61999800644;/nu_tel3==;/ds_email==Babynhalindinha_@hotmail.com","51","Master","1");

INSERT INTO TB_AUDITORIA VALUES("921","TB_INSCRICAO","2017-12-30 19:31:06","U","co_inscricao==40;/ds_pastoral==Nossa Senhora de Fátima;/ds_retiro==S;/dt_cadastro==2017-12-18 19:02:07;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==6;/no_responsavel==ANDRé FONSECA BORGES;/nu_tel_responsavel==6198783533;/ds_descricao==Eu sou uma pessoa gentil, e de bem com a vida hehe :);/ds_medicacao==Antialérgico - Loratamed;/ds_alimentacao==Boa;/co_pessoa==51;/co_imagem==51","ds_pastoral==Nossa Senhora de Fátima;/ds_retiro==S;/dt_cadastro==2017-12-30 19:31:06;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==6;/no_responsavel==ANDRé FONSECA BORGES;/nu_tel_responsavel==61998783533;/ds_descricao==Eu sou uma pessoa gentil, e de bem com a vida hehe :);/ds_alimentacao==Boa;/ds_medicacao==Antialérgico - Loratamed;/st_equipe_trabalho==S","40","Master","1");

INSERT INTO TB_AUDITORIA VALUES("922","TB_PAGAMENTO","2017-12-30 19:31:06","U","co_pagamento==46;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==40","nu_parcelas==1","46","Master","1");

INSERT INTO TB_AUDITORIA VALUES("923","TB_PARCELAMENTO","2017-12-30 19:31:07","D","co_parcelamento==110;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-18;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==46;/co_tipo_pagamento==3","","110","Master","1");

INSERT INTO TB_AUDITORIA VALUES("924","TB_PARCELAMENTO","2017-12-30 19:31:07","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==46","154","Master","1");

INSERT INTO TB_AUDITORIA VALUES("925","TB_ENDERECO","2017-12-30 19:31:23","U","co_endereco==53;/ds_endereco==QR 209 conjunto 5 casa 27;/ds_complemento==Samambaia morte;/ds_bairro==Norte;/nu_cep==;/no_cidade==Brasília;/sg_uf==DF","ds_endereco==QR 209 conjunto 5 casa 27;/ds_complemento==Samambaia morte;/ds_bairro==Norte;/nu_cep==;/no_cidade==Brasília;/sg_uf==DF","53","Master","1");

INSERT INTO TB_AUDITORIA VALUES("926","TB_CONTATO","2017-12-30 19:31:23","U","co_contato==53;/nu_tel1==6192516402;/nu_tel2==6133596361;/nu_tel3==;/ds_email==Karollina@live.com","nu_tel1==61992516402;/nu_tel2==61933596361;/nu_tel3==;/ds_email==Karollina@live.com","53","Master","1");

INSERT INTO TB_AUDITORIA VALUES("927","TB_INSCRICAO","2017-12-30 19:31:23","U","co_inscricao==42;/ds_pastoral==Gej;/ds_retiro==S;/dt_cadastro==2017-12-18 22:13:07;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==5;/no_responsavel==EDILEUSA;/nu_tel_responsavel==6192226161;/ds_descricao==Me chamo Karolina não tenho restrição de medicamentos , nem alimentação;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==53;/co_imagem==53","ds_pastoral==Gej;/ds_retiro==S;/dt_cadastro==2017-12-30 19:31:22;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==5;/no_responsavel==EDILEUSA;/nu_tel_responsavel==61992226161;/ds_descricao==Me chamo Karolina não tenho restrição de medicamentos , nem alimentação;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","42","Master","1");

INSERT INTO TB_AUDITORIA VALUES("928","TB_PAGAMENTO","2017-12-30 19:31:23","U","co_pagamento==48;/nu_total==160.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==42","nu_parcelas==1","48","Master","1");

INSERT INTO TB_AUDITORIA VALUES("929","TB_PARCELAMENTO","2017-12-30 19:31:23","D","co_parcelamento==112;/nu_parcela==1;/nu_valor_parcela==160.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-18;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==48;/co_tipo_pagamento==2","","112","Master","1");

INSERT INTO TB_AUDITORIA VALUES("930","TB_PARCELAMENTO","2017-12-30 19:31:23","I","","nu_parcela==1;/nu_valor_parcela==160;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==48","155","Master","1");

INSERT INTO TB_AUDITORIA VALUES("931","TB_ENDERECO","2017-12-30 19:31:56","U","co_endereco==55;/ds_endereco==Ceilândia sul;/ds_complemento==SHSN  lote 29 qd 28 ch 58/123 A;/ds_bairro==Cond. Pinheiro;/nu_cep==72236800;/no_cidade==Ceilândia ;/sg_uf==DF","ds_endereco==Ceilândia sul;/ds_complemento==SHSN  lote 29 qd 28 ch 58/123 A;/ds_bairro==Cond. Pinheiro;/nu_cep==72236800;/no_cidade==Ceilândia ;/sg_uf==DF","55","Master","1");

INSERT INTO TB_AUDITORIA VALUES("932","TB_CONTATO","2017-12-30 19:31:56","U","co_contato==56;/nu_tel1==61993935517;/nu_tel2==61981975822;/nu_tel3==;/ds_email==monique.vieira999@gmail.com","nu_tel1==61993935517;/nu_tel2==61981975822;/nu_tel3==;/ds_email==monique.vieira999@gmail.com","56","Master","1");

INSERT INTO TB_AUDITORIA VALUES("933","TB_INSCRICAO","2017-12-30 19:31:56","U","co_inscricao==44;/ds_pastoral==Grupo Jovem;/ds_retiro==S;/dt_cadastro==2017-12-18 22:29:49;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==EDILEUZA MãE;/nu_tel_responsavel==61984946458;/ds_descricao==Não gosto de falar sobre mim \nRs rs :);/ds_medicacao==Omeprazol;/ds_alimentacao==Intolerância à lactose;/co_pessoa==55;/co_imagem==56","ds_pastoral==Grupo Jovem;/ds_retiro==S;/dt_cadastro==2017-12-30 19:31:55;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==EDILEUZA MãE;/nu_tel_responsavel==61984946458;/ds_descricao==Não gosto de falar sobre mim \nRs rs :);/ds_alimentacao==Intolerância à lactose;/ds_medicacao==Omeprazol;/st_equipe_trabalho==N","44","Master","1");

INSERT INTO TB_AUDITORIA VALUES("934","TB_PAGAMENTO","2017-12-30 19:31:56","U","co_pagamento==50;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==44","nu_parcelas==1","50","Master","1");

INSERT INTO TB_AUDITORIA VALUES("935","TB_PARCELAMENTO","2017-12-30 19:31:56","D","co_parcelamento==114;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-18;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==50;/co_tipo_pagamento==3","","114","Master","1");

INSERT INTO TB_AUDITORIA VALUES("936","TB_PARCELAMENTO","2017-12-30 19:31:56","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==50","156","Master","1");

INSERT INTO TB_AUDITORIA VALUES("937","TB_ENDERECO","2017-12-30 19:32:20","U","co_endereco==57;/ds_endereco==Qr 212 conj 14 casa 15;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72316314;/no_cidade==Samambaia;/sg_uf==DF","ds_endereco==Qr 212 conj 14 casa 15;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72316314;/no_cidade==Samambaia;/sg_uf==DF","57","Master","1");

INSERT INTO TB_AUDITORIA VALUES("938","TB_CONTATO","2017-12-30 19:32:20","U","co_contato==58;/nu_tel1==61992971837;/nu_tel2==;/nu_tel3==;/ds_email==thaisksm23@gmail.com","nu_tel1==61992971837;/nu_tel2==;/nu_tel3==;/ds_email==thaisksm23@gmail.com","58","Master","1");

INSERT INTO TB_AUDITORIA VALUES("939","TB_INSCRICAO","2017-12-30 19:32:20","U","co_inscricao==46;/ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-27 22:06:11;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==IVANILDES MãE;/nu_tel_responsavel==61934586671;/ds_descricao==Católica desde o ventre da minha mãe, dedicada, muitos vezes chata e mandona, tenho um marido maravilhoso e uma família que amo. Estou no Gej há cerca de 3 anos e sou apaixonada por esse grupo.;/ds_medicacao==Não.;/ds_alimentacao==Não.;/co_pessoa==57;/co_imagem==58","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-30 19:32:19;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==IVANILDES MãE;/nu_tel_responsavel==61934586671;/ds_descricao==Católica desde o ventre da minha mãe, dedicada, muitos vezes chata e mandona, tenho um marido maravilhoso e uma família que amo. Estou no Gej há cerca de 3 anos e sou apaixonada por esse grupo.;/ds_alimentacao==Não.;/ds_medicacao==Não.;/st_equipe_trabalho==S","46","Master","1");

INSERT INTO TB_AUDITORIA VALUES("940","TB_PAGAMENTO","2017-12-30 19:32:20","U","co_pagamento==52;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==46","nu_parcelas==1","52","Master","1");

INSERT INTO TB_AUDITORIA VALUES("941","TB_PARCELAMENTO","2017-12-30 19:32:20","D","co_parcelamento==132;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-27;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==52;/co_tipo_pagamento==1","","132","Master","1");

INSERT INTO TB_AUDITORIA VALUES("942","TB_PARCELAMENTO","2017-12-30 19:32:20","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==52","157","Master","1");

INSERT INTO TB_AUDITORIA VALUES("943","TB_ENDERECO","2017-12-30 19:32:34","U","co_endereco==58;/ds_endereco==Quadra 02 lote 16 apto. 201;/ds_complemento==;/ds_bairro==Águas Bonitas I;/nu_cep==72926002;/no_cidade==Águas Lindas GO;/sg_uf==DF","ds_endereco==Quadra 02 lote 16 apto. 201;/ds_complemento==;/ds_bairro==Águas Bonitas I;/nu_cep==72926002;/no_cidade==Águas Lindas GO;/sg_uf==DF","58","Master","1");

INSERT INTO TB_AUDITORIA VALUES("944","TB_CONTATO","2017-12-30 19:32:34","U","co_contato==59;/nu_tel1==61991426490;/nu_tel2==61999661640;/nu_tel3==;/ds_email==leticia.martinsousa@hotmail.com","nu_tel1==61991426490;/nu_tel2==61999661640;/nu_tel3==;/ds_email==leticia.martinsousa@hotmail.com","59","Master","1");

INSERT INTO TB_AUDITORIA VALUES("945","TB_INSCRICAO","2017-12-30 19:32:34","U","co_inscricao==47;/ds_pastoral==Gej Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-19 13:18:08;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MáRCIA REJANE ;/nu_tel_responsavel==61999661640;/ds_descricao==Meu nome é Letícia, tenho 17 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==58;/co_imagem==59","ds_pastoral==Gej Dom Bosco;/ds_retiro==S;/dt_cadastro==2017-12-30 19:32:34;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==3;/no_responsavel==MáRCIA REJANE ;/nu_tel_responsavel==61999661640;/ds_descricao==Meu nome é Letícia, tenho 17 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","47","Master","1");

INSERT INTO TB_AUDITORIA VALUES("946","TB_PAGAMENTO","2017-12-30 19:32:35","U","co_pagamento==53;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==47","nu_parcelas==1","53","Master","1");

INSERT INTO TB_AUDITORIA VALUES("947","TB_PARCELAMENTO","2017-12-30 19:32:35","D","co_parcelamento==118;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-19;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==53;/co_tipo_pagamento==1","","118","Master","1");

INSERT INTO TB_AUDITORIA VALUES("948","TB_PARCELAMENTO","2017-12-30 19:32:35","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==53","158","Master","1");

INSERT INTO TB_AUDITORIA VALUES("949","TB_ENDERECO","2017-12-30 19:32:48","U","co_endereco==59;/ds_endereco==Qr 212 conj 14 casa 15;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==72316314;/no_cidade==Samambaia Norte;/sg_uf==DF","ds_endereco==Qr 212 conj 14 casa 15;/ds_complemento==;/ds_bairro==Samambaia;/nu_cep==72316314;/no_cidade==Samambaia Norte;/sg_uf==DF","59","Master","1");

INSERT INTO TB_AUDITORIA VALUES("950","TB_CONTATO","2017-12-30 19:32:48","U","co_contato==60;/nu_tel1==61991839164;/nu_tel2==;/nu_tel3==;/ds_email==keitermaia@hotmail.com","nu_tel1==61991839164;/nu_tel2==;/nu_tel3==;/ds_email==keitermaia@hotmail.com","60","Master","1");

INSERT INTO TB_AUDITORIA VALUES("951","TB_INSCRICAO","2017-12-30 19:32:48","U","co_inscricao==48;/ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-19 13:21:55;/ds_membro_ativo==S;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==IVANILDES MãE;/nu_tel_responsavel==6134586671;/ds_descricao==Brincalhão,meio timído. Fui coroinha durante muitos anos, e atualmente só participo do Gej. Me casei ano passado. Sou militar da Aeronáutica, e atualmente estudo pra concurso.;/ds_medicacao==Não.;/ds_alimentacao==Não.;/co_pessoa==59;/co_imagem==60","ds_pastoral==;/ds_retiro==S;/dt_cadastro==2017-12-30 19:32:47;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==7;/no_responsavel==IVANILDES MãE;/nu_tel_responsavel==61934586671;/ds_descricao==Brincalhão,meio timído. Fui coroinha durante muitos anos, e atualmente só participo do Gej. Me casei ano passado. Sou militar da Aeronáutica, e atualmente estudo pra concurso.;/ds_alimentacao==Não.;/ds_medicacao==Não.;/st_equipe_trabalho==S","48","Master","1");

INSERT INTO TB_AUDITORIA VALUES("952","TB_PAGAMENTO","2017-12-30 19:32:48","U","co_pagamento==54;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==48","nu_parcelas==1","54","Master","1");

INSERT INTO TB_AUDITORIA VALUES("953","TB_PARCELAMENTO","2017-12-30 19:32:48","D","co_parcelamento==119;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-19;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==54;/co_tipo_pagamento==1","","119","Master","1");

INSERT INTO TB_AUDITORIA VALUES("954","TB_PARCELAMENTO","2017-12-30 19:32:48","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==54","159","Master","1");

INSERT INTO TB_AUDITORIA VALUES("955","TB_ACESSO","2017-12-30 19:59:03","I","","ds_session_id==1910f85462b4a2a9325c67924461c892;/co_usuario==1;/tp_situacao==A;/ds_navegador==Chrome;/ds_sistema_operacional==Windows 8.1;/ds_dispositivo==Computador;/dt_fim_acesso==2017-12-30 20:19:02;/dt_inicio_acesso==2017-12-30 19:59:02","13","","0");

INSERT INTO TB_AUDITORIA VALUES("956","TB_ENDERECO","2017-12-30 19:59:24","U","co_endereco==2;/ds_endereco==Shps 602 chac. 97-A;/ds_complemento==Setor P.Sul;/ds_bairro==P.Sul;/nu_cep==72236608;/no_cidade==Brasília ;/sg_uf==DF","ds_endereco==Shps 602 chac. 97-A;/ds_complemento==Setor P.Sul;/ds_bairro==P.Sul;/nu_cep==72236608;/no_cidade==Brasília ;/sg_uf==DF","2","Master","1");

INSERT INTO TB_AUDITORIA VALUES("957","TB_CONTATO","2017-12-30 19:59:24","U","co_contato==2;/nu_tel1==61995022920;/nu_tel2==61982512602;/nu_tel3==;/ds_email==amandatominaginha@gmail.com","nu_tel1==61995022920;/nu_tel2==61982512602;/nu_tel3==;/ds_email==amandatominaginha@gmail.com","2","Master","1");

INSERT INTO TB_AUDITORIA VALUES("958","TB_INSCRICAO","2017-12-30 19:59:24","U","co_inscricao==1;/ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-21 23:29:48;/ds_membro_ativo==N;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LEILA TOMINAGA;/nu_tel_responsavel==61982522602;/ds_descricao==Sou top\nSou Filha de Dom Bosco \nA neném dos tios Tominaga;/ds_medicacao==;/ds_alimentacao==Sou diabética.;/co_pessoa==2;/co_imagem==2","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-30 19:59:23;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LEILA TOMINAGA;/nu_tel_responsavel==61982522602;/ds_descricao==Sou top\nSou Filha de Dom Bosco \nA neném dos tios Tominaga;/ds_alimentacao==Sou diabética.;/ds_medicacao==;/st_equipe_trabalho==N","1","Master","1");

INSERT INTO TB_AUDITORIA VALUES("959","TB_PAGAMENTO","2017-12-30 19:59:24","U","co_pagamento==1;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==1","nu_parcelas==2","1","Master","1");

INSERT INTO TB_AUDITORIA VALUES("960","TB_PARCELAMENTO","2017-12-30 19:59:24","D","co_parcelamento==136;/nu_parcela==1;/nu_valor_parcela==150.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-29;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==1;/co_tipo_pagamento==1","","136","Master","1");

INSERT INTO TB_AUDITORIA VALUES("961","TB_PARCELAMENTO","2017-12-30 19:59:24","I","","nu_parcela==1;/nu_valor_parcela==75;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==1","160","Master","1");

INSERT INTO TB_AUDITORIA VALUES("962","TB_PARCELAMENTO","2017-12-30 19:59:24","I","","nu_parcela==2;/nu_valor_parcela==75;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==1","161","Master","1");

INSERT INTO TB_AUDITORIA VALUES("963","TB_ENDERECO","2017-12-30 19:59:43","U","co_endereco==2;/ds_endereco==Shps 602 chac. 97-A;/ds_complemento==Setor P.Sul;/ds_bairro==P.Sul;/nu_cep==72236608;/no_cidade==Brasília ;/sg_uf==DF","ds_endereco==Shps 602 chac. 97-A;/ds_complemento==Setor P.Sul;/ds_bairro==P.Sul;/nu_cep==72236608;/no_cidade==Brasília ;/sg_uf==DF","2","Master","1");

INSERT INTO TB_AUDITORIA VALUES("964","TB_CONTATO","2017-12-30 19:59:43","U","co_contato==2;/nu_tel1==61995022920;/nu_tel2==61982512602;/nu_tel3==;/ds_email==amandatominaginha@gmail.com","nu_tel1==61995022920;/nu_tel2==61982512602;/nu_tel3==;/ds_email==amandatominaginha@gmail.com","2","Master","1");

INSERT INTO TB_AUDITORIA VALUES("965","TB_INSCRICAO","2017-12-30 19:59:43","U","co_inscricao==1;/ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-30 19:59:23;/ds_membro_ativo==N;/st_equipe_trabalho==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LEILA TOMINAGA;/nu_tel_responsavel==61982522602;/ds_descricao==Sou top\nSou Filha de Dom Bosco \nA neném dos tios Tominaga;/ds_medicacao==;/ds_alimentacao==Sou diabética.;/co_pessoa==2;/co_imagem==2","ds_pastoral==;/ds_retiro==N;/dt_cadastro==2017-12-30 19:59:43;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/nu_camisa==4;/no_responsavel==LEILA TOMINAGA;/nu_tel_responsavel==61982522602;/ds_descricao==Sou top\nSou Filha de Dom Bosco \nA neném dos tios Tominaga;/ds_alimentacao==Sou diabética.;/ds_medicacao==;/st_equipe_trabalho==N","1","Master","1");

INSERT INTO TB_AUDITORIA VALUES("966","TB_PAGAMENTO","2017-12-30 19:59:44","U","co_pagamento==1;/nu_total==150.00;/nu_valor_pago==;/nu_parcelas==2;/tp_situacao==N;/ds_observacao==;/co_inscricao==1","nu_parcelas==1","1","Master","1");

INSERT INTO TB_AUDITORIA VALUES("967","TB_PARCELAMENTO","2017-12-30 19:59:44","D","co_parcelamento==160;/nu_parcela==1;/nu_valor_parcela==75.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-12-30;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==1;/co_tipo_pagamento==1","","160","Master","1");

INSERT INTO TB_AUDITORIA VALUES("968","TB_PARCELAMENTO","2017-12-30 19:59:44","I","","nu_parcela==1;/nu_valor_parcela==150;/dt_vencimento==2017-12-30;/co_tipo_pagamento==1;/co_pagamento==1","162","Master","1");

INSERT INTO TB_AUDITORIA VALUES("969","TB_ENDERECO","2017-12-30 19:59:55","U","co_endereco==8;/ds_endereco==QR 211 conj 03 casa 13;/ds_complemento==;/ds_bairro==;/nu_cep==72343000;/no_cidade==Samambaia Norte;/sg_uf==DF","ds_endereco==QR 211 conj 03 casa 13;/ds_complemento==;/ds_bairro==;/nu_cep==72343000;/no_cidade==Samambaia Norte;/sg_uf==DF","8","Master","1");

INSERT INTO TB_AUDITORIA VALUES("970","TB_CONTATO","2017-12-30 19:59:55","U","co_contato==8;/nu_tel1==61993898324;/nu_tel2==61994186538;/nu_tel3==;/ds_email==jerlanesilva06@gmail.com","nu_tel1==61993898324;/nu_tel2==61994186538;/nu_tel3==;/ds_email==jerlanesilva06@gmail.com","8","Master","1");

INSERT INTO TB_AUDITORIA VALUES("971","TB_INSCRICAO","2017-12-30 19:59:55","U","co_inscricao==7;/ds_pastoral==Gej;/ds_retiro==N;/dt_cadastro==2017-12-30 19:23:57;/ds_membro_ativo==S;/st_equipe_trabalho==S;/ds_situacao_atual_grupo==;/nu_camisa==2;/no_responsavel==MINHA MãE ;/nu_tel_responsavel==61994186538;/ds_descricao==Eu me chamo Jerlane sou do gej tenho  16 anos sou extrovertida brincalhona meiga seria amuuh participar dos eventos do gej amuuh fazer amizade com as pessoas;/ds_medicacao==;/ds_alimentacao==;/co_pessoa==8;/co_imagem==8","ds_pastoral==Gej;/ds_retiro==N;/dt_cadastro==2017-12-30 19:59:54;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/nu_camisa==2;/no_responsavel==MINHA MãE ;/nu_tel_responsavel==61994186538;/ds_descricao==Eu me chamo Jerlane sou do gej tenho  16 anos sou extrovertida brincalhona meiga seria amuuh participar dos eventos do gej amuuh fazer amizade com as pessoas;/ds_alimentacao==;/ds_medicacao==;/st_equipe_trabalho==S","7","Master","1");




DROP TABLE IF EXISTS TB_CONTATO;


CREATE TABLE `TB_CONTATO` (
  `co_contato` int(11) NOT NULL AUTO_INCREMENT,
  `nu_tel1` varchar(15) NOT NULL,
  `nu_tel2` varchar(15) DEFAULT NULL,
  `nu_tel3` varchar(15) DEFAULT NULL,
  `ds_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`co_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTATO VALUES("1","61993274991","6130826060","","leonardomcbessa@gmail.com");

INSERT INTO TB_CONTATO VALUES("2","61995022920","61982512602","","amandatominaginha@gmail.com");

INSERT INTO TB_CONTATO VALUES("3","6134588070","6134588070","","igoor20boorges25@gmail.com");

INSERT INTO TB_CONTATO VALUES("4","61984800492","","","nayane.duda11@gmail.com");

INSERT INTO TB_CONTATO VALUES("5","61984624670","61991774916","","amaury.ritchenzoo@gmail.com");

INSERT INTO TB_CONTATO VALUES("6","62982163027","","","henriquecarvalhohca@outlook.com");

INSERT INTO TB_CONTATO VALUES("7","6198216342","61982610934","","amandasliima@hotmail.com");

INSERT INTO TB_CONTATO VALUES("8","61993898324","61994186538","","jerlanesilva06@gmail.com");

INSERT INTO TB_CONTATO VALUES("9","6182361967","6193077479","","Joaopereira407@hotmail.com");

INSERT INTO TB_CONTATO VALUES("10","61992850286","61995282513","","karenn.geovanna@gmail.com");

INSERT INTO TB_CONTATO VALUES("11","61996330428","","","lilirtais@gmail.com");

INSERT INTO TB_CONTATO VALUES("13","6192198414","6182701888","","frabriceras15@gmail.com");

INSERT INTO TB_CONTATO VALUES("14","61982609125","61981214179","","sirlei_arq@hotmail.com");

INSERT INTO TB_CONTATO VALUES("15","61994129510","","","vicclima123@hotmail.com");

INSERT INTO TB_CONTATO VALUES("16","61995637226","61993166755","","lucaslcr33@gmail.com");

INSERT INTO TB_CONTATO VALUES("17","61984390834","6132086444","","wallissonirvans@gmail.com");

INSERT INTO TB_CONTATO VALUES("18","61992775753","","","manuela@marangoni.adm.br");

INSERT INTO TB_CONTATO VALUES("19","61933593574","61933593574","","priscilamartins213@gmail.com");

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

INSERT INTO TB_CONTATO VALUES("49","61995801026","","","carloschristian03@gmail.com");

INSERT INTO TB_CONTATO VALUES("50","61986194836","61985671063","","Pcdanielle12@gmail.com");

INSERT INTO TB_CONTATO VALUES("51","61930395165","61999800644","","Babynhalindinha_@hotmail.com");

INSERT INTO TB_CONTATO VALUES("52","61993288306","6191621818","","paulin_adt@hotmail.com");

INSERT INTO TB_CONTATO VALUES("53","61992516402","61933596361","","Karollina@live.com");

INSERT INTO TB_CONTATO VALUES("54","","","","");

INSERT INTO TB_CONTATO VALUES("55","61984727547","","","Gabiribas746@gmail.com");

INSERT INTO TB_CONTATO VALUES("56","61993935517","61981975822","","monique.vieira999@gmail.com");

INSERT INTO TB_CONTATO VALUES("57","992660496","","","Leazevedob@gmail.com");

INSERT INTO TB_CONTATO VALUES("58","61992971837","","","thaisksm23@gmail.com");

INSERT INTO TB_CONTATO VALUES("59","61991426490","61999661640","","leticia.martinsousa@hotmail.com");

INSERT INTO TB_CONTATO VALUES("60","61991839164","","","keitermaia@hotmail.com");

INSERT INTO TB_CONTATO VALUES("61","61980748329","61991124059","","ronielrodrigues.96@hotmail.com");

INSERT INTO TB_CONTATO VALUES("62","6191066240","6191066240","","lililasp@gmail.com");

INSERT INTO TB_CONTATO VALUES("63","61991981891","61992240268","","Thamiires369@gmail.com");

INSERT INTO TB_CONTATO VALUES("64","61984199148","61992225838","","annacarolinyr46@gmail.com");

INSERT INTO TB_CONTATO VALUES("65","61985376731","","","clarissevitoriafranca@gmail.com");

INSERT INTO TB_CONTATO VALUES("66","","","","");

INSERT INTO TB_CONTATO VALUES("67","6193826548","6192641163","","Joycefe.lopes@gmail.com");

INSERT INTO TB_CONTATO VALUES("68","61992030663","61991698705","","sabreu192@gmail.com");

INSERT INTO TB_CONTATO VALUES("69","61985784112","61985175039","","Kaasilva0720@gmail.com");

INSERT INTO TB_CONTATO VALUES("70","61992771024","","","leticiapsilva03@gmail.com");

INSERT INTO TB_CONTATO VALUES("71","61982057541","","","Evelynk039@gmail.com");

INSERT INTO TB_CONTATO VALUES("72","61986519709","61985390854","","taynararibeirodelima@gmail.com");

INSERT INTO TB_CONTATO VALUES("73","61985548484","61934586918","","adriel_eas22k@live.com");

INSERT INTO TB_CONTATO VALUES("74","61993259985","","","Linnekerlima@hotmail.com");

INSERT INTO TB_CONTATO VALUES("75","61985539668","","","kamilaf.silva@hotmail.com");

INSERT INTO TB_CONTATO VALUES("76","61983049879","","","tayanne734@gmail.com");

INSERT INTO TB_CONTATO VALUES("77","996657709","992263829","","Luamar305@gmail.com");

INSERT INTO TB_CONTATO VALUES("78","6133598986","6133598986","","carolinadossantoscfds@outlook.com");

INSERT INTO TB_CONTATO VALUES("79","62998583534","6185548484","","garciamendesisabella@gmail.com");

INSERT INTO TB_CONTATO VALUES("80","61993259985","","","Linnekerlima@hotmail.com");

INSERT INTO TB_CONTATO VALUES("81","61982892125","61981173673","","Labussolo@gmail.com");

INSERT INTO TB_CONTATO VALUES("82","61999620997","61999620997","","Mayllasbalzani@gmail.com");




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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;


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

INSERT INTO TB_ENDERECO VALUES("49","Qi 416 conjunto lote 03","Apartamento 101","Samambaia norte","72320317","Brasília ","DF");

INSERT INTO TB_ENDERECO VALUES("50","Shps 602 chácara 97 A","Setor p.sul","P.sul","72236608","Ceilândia","DF");

INSERT INTO TB_ENDERECO VALUES("51","QR 414 Conjunto 13 casa 17","Casa 17","Samambaia Norte","72320218","Brasília Df","DF");

INSERT INTO TB_ENDERECO VALUES("52","Qnf 8 lote 35 casa 4","","","72125530","Taguatinga Norte","DF");

INSERT INTO TB_ENDERECO VALUES("53","QR 209 conjunto 5 casa 27","Samambaia morte","Norte","","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("54","Qnd 16 lote 11 ap 103","","","","","DF");

INSERT INTO TB_ENDERECO VALUES("55","Ceilândia sul","SHSN  lote 29 qd 28 ch 58/123 A","Cond. Pinheiro","72236800","Ceilândia ","DF");

INSERT INTO TB_ENDERECO VALUES("56","QNF 8 casa 32","Taguatinga","Taguatinga norte","72125580","Brasília ","DF");

INSERT INTO TB_ENDERECO VALUES("57","Qr 212 conj 14 casa 15","","Samambaia Norte","72316314","Samambaia","DF");

INSERT INTO TB_ENDERECO VALUES("58","Quadra 02 lote 16 apto. 201","","Águas Bonitas I","72926002","Águas Lindas GO","DF");

INSERT INTO TB_ENDERECO VALUES("59","Qr 212 conj 14 casa 15","","Samambaia","72316314","Samambaia Norte","DF");

INSERT INTO TB_ENDERECO VALUES("60","QR 603 conj. 05 casa 05","","SAMAMBAIA NORTE","72331105","Brasília ","DF");

INSERT INTO TB_ENDERECO VALUES("61","QR 403 CONJUNTO 10 CASA 2I","28","Samambaia","72319111","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("62","Qs 406 conjunto G lote 01 ap 01","","Samambaia norte","72318570","Brasília ","DF");

INSERT INTO TB_ENDERECO VALUES("63","QNP 32 CONJUNTO \"N\" CASA 366","Em frente a escola classe 52","P.sul","72236214","Ceilândia","DF");

INSERT INTO TB_ENDERECO VALUES("64","Qr 603 Chácara 39 Rua 05 Casa 68B","68B","Samambaia","72331150","Brasília","DF");

INSERT INTO TB_ENDERECO VALUES("65","QR 609 conj 01 casa 02","","","","","DF");

INSERT INTO TB_ENDERECO VALUES("66","Quadra 2 Conjunto 1 lote 1","Bloco L AP 402","Paranoá Parque","","Paranoá ","DF");

INSERT INTO TB_ENDERECO VALUES("67","Qr603 chácara 39 rua 4 casa 52A","Condomínio vida nova","Samambaia","72331100","Samambaia ","DF");

INSERT INTO TB_ENDERECO VALUES("68","QD 301 Cj 07 bloco A Apt 1005","Cond. Via Tropical","Samambaia Sul","72300543","Samambaia","DF");

INSERT INTO TB_ENDERECO VALUES("69","Shsps 103 conjunto A casa 31","","Por do sol","","Ceilândia sul","DF");

INSERT INTO TB_ENDERECO VALUES("70","Qnf 06 Lote 03 Casa 04","","Qnf","","Taguatinga norte","DF");

INSERT INTO TB_ENDERECO VALUES("71","Qr 118 conjunto 06 casa 09","","","72302807","","DF");

INSERT INTO TB_ENDERECO VALUES("72","Qr 405 13 13","13","Samambaia norte","72319213","Brasília ","DF");

INSERT INTO TB_ENDERECO VALUES("73","qr 405 conjunto 25, casa 05","","samambaia","72319225","Brasilia","DF");

INSERT INTO TB_ENDERECO VALUES("74","QE 01 CONJ M CASA 115","Guarã","Guará","","Distrito Federal","DF");

INSERT INTO TB_ENDERECO VALUES("75","Qr 407 conjunto 09 casa 33","","Samambaia Norte","72321009","Brasilia","DF");

INSERT INTO TB_ENDERECO VALUES("76","Quadra QR 413 Conjunto 06","23","","72321306","samambaia norte","DF");

INSERT INTO TB_ENDERECO VALUES("77","QR 118 CJ 06 LT 09 CS 01","","","72307807","Samambaia DF","DF");

INSERT INTO TB_ENDERECO VALUES("78","Qr 405 13 13","13","Samambaia","72319213","Brasilia","DF");

INSERT INTO TB_ENDERECO VALUES("79","Avenida Rabelo","Casa 12 A","Vila Planalto","70804020","Brasília- DF","DF");

INSERT INTO TB_ENDERECO VALUES("80","QR 320 Conjunto 7","13","Sul","72310107","Brasília","DF");




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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


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

INSERT INTO TB_FUNCIONALIDADE VALUES("13","Editar Inscrição","admin/Inscricao/DetalharInscricao","I");

INSERT INTO TB_FUNCIONALIDADE VALUES("14","Detalhar Pagamento Inscrição","admin/Inscricao/DetalharPagamento","I");

INSERT INTO TB_FUNCIONALIDADE VALUES("15","Editar Parcela Inscrição","admin/Inscricao/EditarParcela","I");




DROP TABLE IF EXISTS TB_IMAGEM;


CREATE TABLE `TB_IMAGEM` (
  `co_imagem` int(10) NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;


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

INSERT INTO TB_IMAGEM VALUES("49","carlos-christian-5a35a1595c65f.jpeg");

INSERT INTO TB_IMAGEM VALUES("50","danielle-patricia-guedes-e-silva-5a37f567d5bc9.jpg");

INSERT INTO TB_IMAGEM VALUES("51","barbara-silva-5a382cd0273e4.JPG");

INSERT INTO TB_IMAGEM VALUES("52","paullo-vinicius-pereira-fogaca-5a38592c7c041.jpg");

INSERT INTO TB_IMAGEM VALUES("53","karolina-mota-5a3859941174a.jpg");

INSERT INTO TB_IMAGEM VALUES("54","");

INSERT INTO TB_IMAGEM VALUES("55","maria-gabriela-alves-rodrigues-5a385a6e22d3d.JPG");

INSERT INTO TB_IMAGEM VALUES("56","monique-vieira-pereira-pinheiro-5a385d7e117fe.jpg");

INSERT INTO TB_IMAGEM VALUES("57","");

INSERT INTO TB_IMAGEM VALUES("58","thais-oliveira-da-costa-maia-5a392bc38f141.jpg");

INSERT INTO TB_IMAGEM VALUES("59","leticia-martins-de-sousa-5a392db0f3b6e.jpeg");

INSERT INTO TB_IMAGEM VALUES("60","keiter-da-silva-maia-5a392e946d57a.jpg");

INSERT INTO TB_IMAGEM VALUES("61","roniel-rodrigues-albuquerque-5a392f6e7db2e.jpeg");

INSERT INTO TB_IMAGEM VALUES("62","lilian-machado-carvalho-bessa-5a3aeb2c7d19c.jpg");

INSERT INTO TB_IMAGEM VALUES("63","thamires-barbosa-de-almeida-5a3b9ef83e8fd.JPG");

INSERT INTO TB_IMAGEM VALUES("64","anna-caroliny-rodrigues-lauro-5a3bccb69e958.jpg");

INSERT INTO TB_IMAGEM VALUES("65","clarisse-vitoria-franca-pereira-5a3bf6f9badea.png");

INSERT INTO TB_IMAGEM VALUES("66","");

INSERT INTO TB_IMAGEM VALUES("67","joyce-lopes-ferreira-5a3eee236ef36.jpg");

INSERT INTO TB_IMAGEM VALUES("68","sabrina-belarmina-de-abreu-5a3fe0395f2b1.jpg");

INSERT INTO TB_IMAGEM VALUES("69","karine-victoria-oliveira-da-silva-5a424beadbd6e.jpg");

INSERT INTO TB_IMAGEM VALUES("70","leticia-pereira-da-silva-5a424fdcb2a95.jpg");

INSERT INTO TB_IMAGEM VALUES("71","evelyn-ribeiro-5a426c1a5307a.jpg");

INSERT INTO TB_IMAGEM VALUES("72","taynara-ribeiro-de-lima-5a426c2d3e1d4.jpg");

INSERT INTO TB_IMAGEM VALUES("73","adriel-clementino-dos-santos-5a43cf25e52e3.jpeg");

INSERT INTO TB_IMAGEM VALUES("74","");

INSERT INTO TB_IMAGEM VALUES("75","kamila-silva-5a443ec4a76fd.jpeg");

INSERT INTO TB_IMAGEM VALUES("76","maria-tayanne-5a450f512dfe2.jpg");

INSERT INTO TB_IMAGEM VALUES("77","luamar-de-sousa-da-silva-5a458b9ed3d8f.jpg");

INSERT INTO TB_IMAGEM VALUES("78","carolina-franca-dos-santos-5a46908ab3996.jpg");

INSERT INTO TB_IMAGEM VALUES("79","isabella-garcia-mendes-5a4773896b254.jpeg");

INSERT INTO TB_IMAGEM VALUES("80","linneker-lima-r-gomes-5a477a7040c27.jpeg");

INSERT INTO TB_IMAGEM VALUES("81","laura-dos-santos-bussolo-5a479c5a028c9.JPG");

INSERT INTO TB_IMAGEM VALUES("82","maylla-souza-balzani-5a47d87adde41.jpg");




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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;


INSERT INTO TB_INSCRICAO VALUES("1","","N","2017-12-30 19:59:43","N","N","","4","LEILA TOMINAGA","61982522602","Sou top\nSou Filha de Dom Bosco \nA neném dos tios Tominaga","","Sou diabética.","2","2");

INSERT INTO TB_INSCRICAO VALUES("2","","S","2017-12-04 12:45:16","N","N","","8","MãE","6134588070","Sou o Igor! ","","","3","3");

INSERT INTO TB_INSCRICAO VALUES("3","Grupo Jovem Arcanjos e EJNS","S","2017-12-04 15:06:05","N","N","","2","MINHA MãE LúCIA","61986280131","Não sei falar muito sobre mim não, mas tudo bem.. Tenho 17 anos, gosto de participar de retiros e eu amei participar do Santifique-se esse ano.. Gosto de dançar, ler, estudar e aprender coisas diferentes ou no mínimo novas, além de conversar e ouvir as pessoas.","","","4","4");

INSERT INTO TB_INSCRICAO VALUES("4","GEJ Dom Bosco","S","2017-12-30 19:23:11","S","S","","8","MãE ","61991774916","Sou um rapaz muito ativo, participativo, alegre é muito sério também.\nNão sou muito fã de falar de mim, mas sou isto e um pouco mais !","","","5","5");

INSERT INTO TB_INSCRICAO VALUES("5","Acólitos e coroinhas","N","2017-12-30 19:23:25","S","S","","7","MãE ","62999535024","Sou gente boa","","","6","6");

INSERT INTO TB_INSCRICAO VALUES("6","","N","2017-12-04 17:17:34","S","N","","3","KêNIA ","6130825870","Amanda\n19 anos","","","7","7");

INSERT INTO TB_INSCRICAO VALUES("7","Gej","N","2017-12-30 19:59:54","S","S","","2","MINHA MãE ","61994186538","Eu me chamo Jerlane sou do gej tenho  16 anos sou extrovertida brincalhona meiga seria amuuh participar dos eventos do gej amuuh fazer amizade com as pessoas","","","8","8");

INSERT INTO TB_INSCRICAO VALUES("8","","S","2017-12-04 17:46:51","N","N","","9","MARIA OZENITA PEREIRA","6182361967","Não tenho nenhum tipo de alergia","","","9","9");

INSERT INTO TB_INSCRICAO VALUES("9","GEJ DOM BOSCO","S","2017-12-30 19:25:00","S","S","","3","DENISE","61934595330","Trago dentro de mim um pouco da alegria que vem de Deus! *-*","","","10","10");

INSERT INTO TB_INSCRICAO VALUES("10","Renovaćao carismatica do Santuário Sao Francisco","S","2017-12-04 19:22:18","N","N","","1","ELIANE","61982257021","Trabalho como professora, catolica praticante e gostaria de participar para me fortalecer e fortalecer a fé.","","","11","11");

INSERT INTO TB_INSCRICAO VALUES("12","GEJ Dom Bosco","S","2017-12-04 22:16:26","S","N","","9","PAI ","6182701888","Carismático e desinibido.","","","13","13");

INSERT INTO TB_INSCRICAO VALUES("13","GEJ Dom Bosco","S","2017-12-30 19:25:59","S","S","","3","MãE ","61981214179","Desinibida.","","","14","14");

INSERT INTO TB_INSCRICAO VALUES("14","GEJ DOM BOSCO","S","2017-12-30 19:28:48","S","S","","4","PAI","61992197688","Feliz","","","15","15");

INSERT INTO TB_INSCRICAO VALUES("15","","N","2017-12-30 19:29:12","S","S","","7","MARIA JOSé","61933593245","Membro da equipe de música Gej Dom Bosco, ex-acólito e cerimoniário da Paróquia São José Operário.","","","16","16");

INSERT INTO TB_INSCRICAO VALUES("16","","S","2017-12-05 09:49:57","N","N","","3","NEILDO","6132086444","Hellou sou wallisson tenho 18 anos, isso durante a inscrição, participo da igreja desde de muito novo mas só resolvi viver na fé católica á pouco tempo. Participo do grupo de cerimôniarios em minha paróquia e um outro grupo jovem, fillis Mater Dei .","","","17","17");

INSERT INTO TB_INSCRICAO VALUES("17","EJNS","S","2017-12-05 11:06:05","N","N","","3","MINHA MãE CAROL","61992091401","Sou tímida, gosto de jogar futebol ou qualquer esporte.","","","18","18");

INSERT INTO TB_INSCRICAO VALUES("18","GEJ-Dom bosco","S","2017-12-30 19:29:26","S","S","","2","RITA MARIA ","61933593574","Otima pessoa para se conviver.","","","19","19");

INSERT INTO TB_INSCRICAO VALUES("19","grupo jovem luz e fogo","S","2017-12-05 13:38:18","N","N","","5","MARISA ","61991157598","bom falar de mim e um pouco difícil pois eu sou  uma pessoa muito descontraída que  amo Deus .","","","20","20");

INSERT INTO TB_INSCRICAO VALUES("20","","N","2017-12-06 00:39:45","N","N","","2","MARIO ROBERTO","61983261868","Meu nome é Verônica, tenho 17 anos, não participo de nenhuma pastoral, mas todo domingo vou a missa. Sou uma pessoa muito feliz e que ama a igreja católica.","","","21","21");

INSERT INTO TB_INSCRICAO VALUES("21","GEJ DOM BOSCO","S","2017-12-30 19:29:46","S","S","","6","MãE ","61986130447","oie, sou tolerante a lactose e sensível à glúten então plmrdds lembrem-se disso quando forem montar o cardápio, grata. \nP.S.: ficou faltando um lugarzinho para colocar restrições alimentares e se tem alguma doença/se precisa de medicação.","","","22","22");

INSERT INTO TB_INSCRICAO VALUES("22","Catequese, Cerimoniários e Música","N","2017-12-06 23:15:25","N","N","","6","MARIA DAS GRAçAS","6134593014","Há um tempo que já estou na caminhada, além disso, sou consagrado à Santíssima Virgem e participo da Paróquia Santo Inácio de Loyola.","","","23","23");

INSERT INTO TB_INSCRICAO VALUES("23","Assunção","S","2017-12-07 00:26:21","N","N","","6","BEATRIZ","61993116666","Sou bastante amigo e faço amizade rápido","","","24","24");

INSERT INTO TB_INSCRICAO VALUES("24","Ministério de Coroinhas e Acólitos de São Tarcísio, Ministério Jovem (RCC)","S","2017-12-07 17:42:39","N","N","","4","EDI ","61986521612","Sou uma garota que não faz muito tempo q se converteu por inteiro, mais ou menos 1 ano.\nFui pro meu 1° retiro faz pouco tempo, e foi uma graça, estou querendo ir para esse para começar o ano com o pé direito mas graça de Deus","","","25","25");

INSERT INTO TB_INSCRICAO VALUES("25","Grupo de Coroinhas, Grupo Jovem Adonai","S","2017-12-07 20:21:09","N","N","","7","LEILA TOMINAGA","61982512602","Filho dos Tios Tominaga, Irmão da Tominaga. \n##########  Saúde ###########\n- Alergia a temperos industriais(Sazon, Ajinomoto, Knorr, Maggi e etc).\n- Sangue tipo B+","","","26","26");

INSERT INTO TB_INSCRICAO VALUES("26","","N","2017-12-08 09:28:35","N","N","","7","ANDERSON JOAQUIM DE SANTANA","6132018084","Sou uma pessoa pouco comunicativa com quem não conheço. Odeio falsidade. Estou tá igreja tem um tempinho mas dei uma afastada e estou querendo voltar.","","","27","27");

INSERT INTO TB_INSCRICAO VALUES("27","Gej","S","2017-12-30 19:30:10","S","S","","7","MãE ","61933598257","Mmmmm","","","28","28");

INSERT INTO TB_INSCRICAO VALUES("28","Gej dom Bosco","S","2017-12-08 23:24:28","S","N","","3","MãE","6133571919","Sou tranquila,eu gosto de fazer as minhas coisas na hora certa","","","29","29");

INSERT INTO TB_INSCRICAO VALUES("29","","N","2017-12-30 19:30:25","N","S","","4","LUCILENE AGUIAR","61995990533","Feliz...","","","30","30");

INSERT INTO TB_INSCRICAO VALUES("30","","N","2017-12-09 15:40:18","N","N","","4","GESLâNIA ","6199043516","Fui convidado por um membro do grupo e  decidi participar para ouvir sobre a palavra do senhor  e conhecer o pessoal da igreja com o intuito de complemento ao grupo","","","32","32");

INSERT INTO TB_INSCRICAO VALUES("31","Guardiãs","S","2017-12-09 16:52:51","N","N","","5","LUCIENE ","61996979071","Sou uma pessoa tranquila,amo as coisas de igreja, gosto de fazer novas amizades","","","33","33");

INSERT INTO TB_INSCRICAO VALUES("32","GEJ Dom Bosco","S","2017-12-30 19:30:46","S","S","","4","LEDA","61992724933","Ser aquilo que Deus quer fazer de mim!","","","35","35");

INSERT INTO TB_INSCRICAO VALUES("33","","S","2017-12-11 19:17:46","N","N","","3","ROSANGELA ALVES MENDES ","61985548484","Sou uma universitária e frenquento a igreja Católica.","Não","Não","41","41");

INSERT INTO TB_INSCRICAO VALUES("34","","S","2017-12-11 19:23:37","N","N","","4","ROSANGELA ALVES MENDES ","61985548484","Sou estudante e frenquento a igreja Católica.","Não","Não","42","42");

INSERT INTO TB_INSCRICAO VALUES("35","","S","2017-12-12 13:46:24","N","N","","7","ELIETE","61986325346","Não","Não","Não","44","44");

INSERT INTO TB_INSCRICAO VALUES("36","","S","2017-12-14 12:21:53","N","N","","7","BRENA KESSIA","61992563934","Olá sou carlos sou tranquilo trabalho de pedreiro estou a procura da igreja entender mais de Deus me sentir na presença dele estou precisando por isso estou animado ir para esse retiro. .","Nao","Nao","47","47");

INSERT INTO TB_INSCRICAO VALUES("37","","S","2017-12-16 14:24:06","N","N","","3","JOSé EVARISTO","61981019362","Faço parte da Equipe Jovem AJUC, sempre fui católica, sou pouco tímida","Não","Não","48","48");

INSERT INTO TB_INSCRICAO VALUES("38","","S","2017-12-16 20:42:32","S","N","","7","MAE ","61995905439","Uma pessoa super tranquila, alegre e que ama ajuda o próximo na medida possível","","","49","49");

INSERT INTO TB_INSCRICAO VALUES("39","","N","2017-12-18 15:05:43","N","N","","7","TIOS TOMINAGA","61982512602","Sou consagrada a Santíssima Virgem a 2 anos. Tenho uma vida de intimidade e amor com Deus. Canto em um ministério, estou começando na intersecao, faço parte da coordenação do grupo jovem Adonaí. Tenho espírito adorador Eucarístico amante da Mãe de Deus ❤ Sou muito animada e pretendo louvar, adorar e confiar mais ainda naquele que É!","Não","Não","50","50");

INSERT INTO TB_INSCRICAO VALUES("40","Nossa Senhora de Fátima","S","2017-12-30 19:31:06","S","S","","6","ANDRé FONSECA BORGES","61998783533","Eu sou uma pessoa gentil, e de bem com a vida hehe :)","Antialérgico - Loratamed","Boa","51","51");

INSERT INTO TB_INSCRICAO VALUES("41","Grupo Jovem","S","2017-12-18 22:11:23","N","N","","7","MAE","6191621818","Participo do Grupo Jovem JEDI, tenho 4 anos de caminhada, sou consagrado a Virgem Maria. Nunca participei de um acampamento, sou um pouco tímido mas tenho facilidade de comunicação e pro ativo.","","","52","52");

INSERT INTO TB_INSCRICAO VALUES("42","Gej","S","2017-12-30 19:31:22","S","S","","5","EDILEUSA","61992226161","Me chamo Karolina não tenho restrição de medicamentos , nem alimentação","","","53","53");

INSERT INTO TB_INSCRICAO VALUES("43","","S","2017-12-18 22:16:45","N","N","","3","MãE","61985754119","Sou do grupo JEDI da paróquia São João Batista.","","Alérgica a corante , intolerante a lactose","54","55");

INSERT INTO TB_INSCRICAO VALUES("44","Grupo Jovem","S","2017-12-30 19:31:55","N","N","","3","EDILEUZA MãE","61984946458","Não gosto de falar sobre mim \nRs rs :)","Omeprazol","Intolerância à lactose","55","56");

INSERT INTO TB_INSCRICAO VALUES("45","Grupo JEDI","N","2017-12-18 22:34:44","N","N","","0","MARIA JOSé","91340627","Bem humorado, paciente, verdadeiro legal","Não","Não","56","57");

INSERT INTO TB_INSCRICAO VALUES("46","","S","2017-12-30 19:32:19","S","S","","4","IVANILDES MãE","61934586671","Católica desde o ventre da minha mãe, dedicada, muitos vezes chata e mandona, tenho um marido maravilhoso e uma família que amo. Estou no Gej há cerca de 3 anos e sou apaixonada por esse grupo.","Não.","Não.","57","58");

INSERT INTO TB_INSCRICAO VALUES("47","Gej Dom Bosco","S","2017-12-30 19:32:34","S","S","","3","MáRCIA REJANE ","61999661640","Meu nome é Letícia, tenho 17 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.","","","58","59");

INSERT INTO TB_INSCRICAO VALUES("48","","S","2017-12-30 19:32:47","S","S","","7","IVANILDES MãE","61934586671","Brincalhão,meio timído. Fui coroinha durante muitos anos, e atualmente só participo do Gej. Me casei ano passado. Sou militar da Aeronáutica, e atualmente estudo pra concurso.","Não.","Não.","59","60");

INSERT INTO TB_INSCRICAO VALUES("49","Gej Dom Bosco","N","2017-12-19 13:25:34","S","N","","7","LETíCIA MARTINS ","61991426490","Meu nome é Roniel, tenho 21 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.","","","60","61");

INSERT INTO TB_INSCRICAO VALUES("50","Grupo de jovens gej dom bosco","S","2017-12-21 09:45:59","S","N","","4","THAYNARA ","61995250255","Sou feliz com o que tenho","Não","Não como carne vermelha","62","63");

INSERT INTO TB_INSCRICAO VALUES("51","","S","2017-12-21 13:01:09","S","N","","4","JEFFERSON ","61992225838","Sou consagrada, 1,60 de altura","Dipirona 25 gotas","Abacaxi","63","64");

INSERT INTO TB_INSCRICAO VALUES("52","","S","2017-12-21 16:01:28","N","N","","3","JOANA DARC","61985315391","Sou muito alegre","Não","Não","64","65");

INSERT INTO TB_INSCRICAO VALUES("53","","S","2017-12-23 22:00:34","N","N","","4","MãE","6134593241","Sou a Joyce, tenho 19 anos. Não sei oq falar sobre mim, mas espero nesse retiro top, buscar uma reconciliação e mais intimidade com Jesus, tchau.","","","65","67");

INSERT INTO TB_INSCRICAO VALUES("54","","S","2017-12-24 15:13:28","N","N","","2","SILVANA DE ABREU SILVA","61991837377","24 anos, natural de Brasília, tenho 3 irmãos e moro com minha mãe. Consagrada a Maria pelo metodo de São Luís Montfort, caseira, procuro sempre aprender mais sobre a Santa Igreja.","Faço uso de um antidepressivo, é o utilizo uma vez ao dia, depois do café da manhã.","","66","68");

INSERT INTO TB_INSCRICAO VALUES("55","Gej dom Bosco","S","2017-12-26 11:17:29","S","N","","3","MáRCIA FRANCINA DE OLIVEIRA ","61985175039","Sou uma pessoa que e brincalhona, ama retiro e chora muito nos retiros, tenho um amor imenso por nossa senhora e o título que mais amo e nossa senhora aparecida","Quando tenho crise de enxaqueca eu tomo (ibuprofeno, dipirona e etc.)","Não tenho","67","69");

INSERT INTO TB_INSCRICAO VALUES("56","","S","2017-12-26 11:34:19","N","N","","3","JOELMA  MãE","61992419993","Bom...\nEstou afastada da igreja no momento, estou querendo me reconciliar e voltar de vez.","Não","Não","68","70");

INSERT INTO TB_INSCRICAO VALUES("57","Grupo de jovens Fillis Mater Dei","S","2017-12-26 13:34:49","N","N","","3","LúCIA","61984651243","18 anos, consagrada a Nossa Senhora de Fátima, Coordenadora do Grupo Jovem Fmd, frequente na Paróquia Nossa Senhora da Assunção.","","","69","71");

INSERT INTO TB_INSCRICAO VALUES("58","Catequese e grupo de jovem","S","2017-12-26 13:35:08","N","N","","7","PAI","61985012045","Sou bem chorona kkk, sou bem tímida, porém crio amizades bem rápido. Gosto muito de dança kk","","","70","72");

INSERT INTO TB_INSCRICAO VALUES("59","","S","2017-12-27 14:49:41","N","N","","6","ROSANGELA ALVES MENDES","61985548484","Sou uma pessoa tímida mas que gosta muito de diversão...","","","71","73");

INSERT INTO TB_INSCRICAO VALUES("60","Jupes","S","2017-12-28 13:35:44","N","N","","7","LOURDES","61982478621","Paróquia São Paulo apóstolo \nCoordenadora 2018-2019 grupo de jovens\nSanta Terezinha s2","","","74","76");

INSERT INTO TB_INSCRICAO VALUES("61","","S","2017-12-28 22:26:05","N","N","","6","PAI","992263829","Eu sou da paróquia São João Evangelista  da samambaia norte  e faço parte do grupo de oração.","Eu uso o remédio contra crise de ansiedade.Chama fluoxetina,todos os dias pela manhã.","Não","75","77");

INSERT INTO TB_INSCRICAO VALUES("62","sao joao evangelista","S","2017-12-29 16:59:22","N","N","","4","NEIDE","61985609412","sou uma menina tímida, não gosto muito de fazer atividades em grupo pois me sinto um pouco desconfortável, gosto muito de escrever, sou catequista mas sinto que minha fé ainda esta muito abalada.","","","76","78");

INSERT INTO TB_INSCRICAO VALUES("63","","S","2017-12-30 09:07:52","N","N","","3","ROSANGELA ","6185548484","18 anos, devota de Nossa Senhora ","Não","Não","77","79");

INSERT INTO TB_INSCRICAO VALUES("64","","S","2017-12-30 19:22:55","S","S","","9","ELIENE","61934594937","———-","","","78","80");

INSERT INTO TB_INSCRICAO VALUES("65","Grupo Servir, quadrilha e ministério de música da Verbo Divino, e tbm participo do grupo SIM e ministério de música da Paroquia Nossa senhora Rosario de Pompeia","S","2017-12-30 12:02:00","N","N","","5","OSVALDO BUSSOLO ","61981173673","Eu sou muito extrovertida, adoro cantar, dançar é comigo mesmo, amo teatro, e gosto muito de ajudar a igreja, pelo menos as q eu frequento, gosto muito de me divertir com meus amigos, e minha família tambem, sou aberta a opiniões sobre vários assuntos e sou bastante teimosa quando quero algo (e sempre consigo).","Não uso","Não tenho","79","81");

INSERT INTO TB_INSCRICAO VALUES("66","Guardiã do Santissimo sacramento","S","2017-12-30 16:18:32","N","N","","5","NAMORADO ","6199620997","Estudante de Direito e pós graduanda em direito penal, investigação forense e perícia criminal","Clonazepan","Alergica a pimenta","80","82");




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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;


INSERT INTO TB_PAGAMENTO VALUES("1","150.00","","1","N","","1");

INSERT INTO TB_PAGAMENTO VALUES("2","150.00","","1","N","","2");

INSERT INTO TB_PAGAMENTO VALUES("3","150.00","","1","N","","3");

INSERT INTO TB_PAGAMENTO VALUES("4","150.00","","1","N","","4");

INSERT INTO TB_PAGAMENTO VALUES("5","150.00","","1","N","","5");

INSERT INTO TB_PAGAMENTO VALUES("6","150.00","","1","N","","6");

INSERT INTO TB_PAGAMENTO VALUES("7","150.00","","1","C","","7");

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

INSERT INTO TB_PAGAMENTO VALUES("34","150.00","","1","C","","33");

INSERT INTO TB_PAGAMENTO VALUES("35","150.00","","1","C","","34");

INSERT INTO TB_PAGAMENTO VALUES("37","150.00","","1","N","","35");

INSERT INTO TB_PAGAMENTO VALUES("42","160.00","","1","N","","36");

INSERT INTO TB_PAGAMENTO VALUES("43","150.00","","1","N","","37");

INSERT INTO TB_PAGAMENTO VALUES("44","150.00","","1","N","","38");

INSERT INTO TB_PAGAMENTO VALUES("45","150.00","","1","N","","39");

INSERT INTO TB_PAGAMENTO VALUES("46","150.00","","1","N","","40");

INSERT INTO TB_PAGAMENTO VALUES("47","150.00","","1","N","","41");

INSERT INTO TB_PAGAMENTO VALUES("48","160.00","","1","N","","42");

INSERT INTO TB_PAGAMENTO VALUES("49","160.00","","1","N","","43");

INSERT INTO TB_PAGAMENTO VALUES("50","150.00","","1","N","","44");

INSERT INTO TB_PAGAMENTO VALUES("51","150.00","","1","N","","45");

INSERT INTO TB_PAGAMENTO VALUES("52","150.00","","1","N","","46");

INSERT INTO TB_PAGAMENTO VALUES("53","150.00","","1","N","","47");

INSERT INTO TB_PAGAMENTO VALUES("54","150.00","","1","N","","48");

INSERT INTO TB_PAGAMENTO VALUES("55","150.00","","1","N","","49");

INSERT INTO TB_PAGAMENTO VALUES("56","150.00","","1","N","","50");

INSERT INTO TB_PAGAMENTO VALUES("57","150.00","","1","N","","51");

INSERT INTO TB_PAGAMENTO VALUES("58","150.00","","1","N","","52");

INSERT INTO TB_PAGAMENTO VALUES("59","160.00","","1","N","","53");

INSERT INTO TB_PAGAMENTO VALUES("60","150.00","","1","N","","54");

INSERT INTO TB_PAGAMENTO VALUES("61","160.00","","1","N","","56");

INSERT INTO TB_PAGAMENTO VALUES("62","150.00","","1","N","","57");

INSERT INTO TB_PAGAMENTO VALUES("63","150.00","","1","N","","55");

INSERT INTO TB_PAGAMENTO VALUES("64","150.00","","1","N","","58");

INSERT INTO TB_PAGAMENTO VALUES("65","150.00","","1","C","","59");

INSERT INTO TB_PAGAMENTO VALUES("66","150.00","","1","N","","60");

INSERT INTO TB_PAGAMENTO VALUES("67","150.00","","1","N","","61");

INSERT INTO TB_PAGAMENTO VALUES("68","150.00","","1","N","","62");

INSERT INTO TB_PAGAMENTO VALUES("69","150.00","","1","C","","63");

INSERT INTO TB_PAGAMENTO VALUES("70","150.00","","1","N","","64");

INSERT INTO TB_PAGAMENTO VALUES("71","150.00","","1","N","","65");

INSERT INTO TB_PAGAMENTO VALUES("72","150.00","","1","N","","66");




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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;


INSERT INTO TB_PARCELAMENTO VALUES("73","1","150.00","","2017-12-14","","","2","1");

INSERT INTO TB_PARCELAMENTO VALUES("74","1","150.00","","2017-12-14","","","3","1");

INSERT INTO TB_PARCELAMENTO VALUES("77","1","150.00","","2017-12-14","","","6","1");

INSERT INTO TB_PARCELAMENTO VALUES("79","1","150.00","","2017-12-14","","","8","1");

INSERT INTO TB_PARCELAMENTO VALUES("81","1","150.00","","2017-12-14","","","10","1");

INSERT INTO TB_PARCELAMENTO VALUES("82","1","150.00","","2017-12-14","","","11","1");

INSERT INTO TB_PARCELAMENTO VALUES("86","1","160.00","","2017-12-14","","","16","1");

INSERT INTO TB_PARCELAMENTO VALUES("87","1","150.00","","2017-12-14","","","17","1");

INSERT INTO TB_PARCELAMENTO VALUES("89","1","150.00","","2017-12-14","","","20","1");

INSERT INTO TB_PARCELAMENTO VALUES("90","1","150.00","","2017-12-14","","","21","1");

INSERT INTO TB_PARCELAMENTO VALUES("92","1","150.00","","2017-12-14","","","23","1");

INSERT INTO TB_PARCELAMENTO VALUES("93","1","150.00","","2017-12-14","","","19","1");

INSERT INTO TB_PARCELAMENTO VALUES("94","1","150.00","","2017-12-14","","","25","1");

INSERT INTO TB_PARCELAMENTO VALUES("95","1","150.00","","2017-12-14","","","24","1");

INSERT INTO TB_PARCELAMENTO VALUES("96","1","160.00","","2017-12-14","","","26","1");

INSERT INTO TB_PARCELAMENTO VALUES("98","1","150.00","","2017-12-14","","","28","1");

INSERT INTO TB_PARCELAMENTO VALUES("100","1","150.00","","2017-12-14","","","30","1");

INSERT INTO TB_PARCELAMENTO VALUES("101","1","150.00","","2017-12-14","","","31","1");

INSERT INTO TB_PARCELAMENTO VALUES("103","1","150.00","150.00","2017-12-14","2017-12-16","","34","1");

INSERT INTO TB_PARCELAMENTO VALUES("104","1","150.00","150.00","2017-12-14","2017-12-16","","35","1");

INSERT INTO TB_PARCELAMENTO VALUES("105","1","150.00","","2017-12-14","","","37","1");

INSERT INTO TB_PARCELAMENTO VALUES("106","1","160.00","","2017-12-14","","","42","2");

INSERT INTO TB_PARCELAMENTO VALUES("107","1","150.00","","2017-12-16","","","43","1");

INSERT INTO TB_PARCELAMENTO VALUES("108","1","150.00","","2017-12-16","","","44","1");

INSERT INTO TB_PARCELAMENTO VALUES("109","1","150.00","","2017-12-18","","","45","1");

INSERT INTO TB_PARCELAMENTO VALUES("111","1","150.00","","2017-12-18","","","47","3");

INSERT INTO TB_PARCELAMENTO VALUES("113","1","160.00","","2017-12-18","","","49","2");

INSERT INTO TB_PARCELAMENTO VALUES("116","1","150.00","","2017-12-19","","","51","1");

INSERT INTO TB_PARCELAMENTO VALUES("120","1","150.00","","2017-12-19","","","55","1");

INSERT INTO TB_PARCELAMENTO VALUES("121","1","150.00","","2017-12-21","","","56","1");

INSERT INTO TB_PARCELAMENTO VALUES("122","1","150.00","","2017-12-21","","","57","1");

INSERT INTO TB_PARCELAMENTO VALUES("123","1","150.00","","2017-12-21","","","58","1");

INSERT INTO TB_PARCELAMENTO VALUES("125","1","160.00","","2017-12-23","","","59","2");

INSERT INTO TB_PARCELAMENTO VALUES("126","1","150.00","","2017-12-24","","","60","1");

INSERT INTO TB_PARCELAMENTO VALUES("127","1","160.00","","2017-12-26","","","61","2");

INSERT INTO TB_PARCELAMENTO VALUES("128","1","150.00","","2017-12-26","","","62","3");

INSERT INTO TB_PARCELAMENTO VALUES("129","1","150.00","","2017-12-26","","","63","1");

INSERT INTO TB_PARCELAMENTO VALUES("130","1","150.00","","2017-12-26","","","64","1");

INSERT INTO TB_PARCELAMENTO VALUES("131","1","150.00","150.00","2017-12-27","2017-12-16","","65","1");

INSERT INTO TB_PARCELAMENTO VALUES("133","1","150.00","","2017-12-28","","","66","1");

INSERT INTO TB_PARCELAMENTO VALUES("134","1","150.00","","2017-12-28","","","67","1");

INSERT INTO TB_PARCELAMENTO VALUES("135","1","150.00","","2017-12-29","","","68","1");

INSERT INTO TB_PARCELAMENTO VALUES("137","1","150.00","150.00","2017-12-30","2017-12-16","","69","1");

INSERT INTO TB_PARCELAMENTO VALUES("139","1","150.00","","2017-12-30","","","71","1");

INSERT INTO TB_PARCELAMENTO VALUES("140","1","150.00","","2017-12-30","","","72","1");

INSERT INTO TB_PARCELAMENTO VALUES("141","1","150.00","","2017-12-30","","","70","1");

INSERT INTO TB_PARCELAMENTO VALUES("142","1","150.00","","2017-12-30","","","4","1");

INSERT INTO TB_PARCELAMENTO VALUES("143","1","150.00","","2017-12-30","","","5","1");

INSERT INTO TB_PARCELAMENTO VALUES("144","1","150.00","150.00","2017-12-30","2017-12-20","","7","1");

INSERT INTO TB_PARCELAMENTO VALUES("145","1","150.00","","2017-12-30","","","9","1");

INSERT INTO TB_PARCELAMENTO VALUES("146","1","150.00","","2017-12-30","","","12","1");

INSERT INTO TB_PARCELAMENTO VALUES("147","1","150.00","","2017-12-30","","","14","1");

INSERT INTO TB_PARCELAMENTO VALUES("148","1","150.00","","2017-12-30","","","15","1");

INSERT INTO TB_PARCELAMENTO VALUES("149","1","150.00","","2017-12-30","","","18","1");

INSERT INTO TB_PARCELAMENTO VALUES("150","1","150.00","","2017-12-30","","","22","1");

INSERT INTO TB_PARCELAMENTO VALUES("151","1","150.00","","2017-12-30","","","27","1");

INSERT INTO TB_PARCELAMENTO VALUES("152","1","150.00","","2017-12-30","","","29","1");

INSERT INTO TB_PARCELAMENTO VALUES("153","1","150.00","","2017-12-30","","","32","1");

INSERT INTO TB_PARCELAMENTO VALUES("154","1","150.00","","2017-12-30","","","46","1");

INSERT INTO TB_PARCELAMENTO VALUES("155","1","160.00","","2017-12-30","","","48","1");

INSERT INTO TB_PARCELAMENTO VALUES("156","1","150.00","","2017-12-30","","","50","1");

INSERT INTO TB_PARCELAMENTO VALUES("157","1","150.00","","2017-12-30","","","52","1");

INSERT INTO TB_PARCELAMENTO VALUES("158","1","150.00","","2017-12-30","","","53","1");

INSERT INTO TB_PARCELAMENTO VALUES("159","1","150.00","","2017-12-30","","","54","1");

INSERT INTO TB_PARCELAMENTO VALUES("162","1","150.00","","2017-12-30","","","1","1");




DROP TABLE IF EXISTS TB_PERFIL;


CREATE TABLE `TB_PERFIL` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL,
  `st_status` varchar(1) DEFAULT 'I',
  PRIMARY KEY (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


INSERT INTO TB_PERFIL VALUES("1","Master","A");

INSERT INTO TB_PERFIL VALUES("2","Coordenador","A");

INSERT INTO TB_PERFIL VALUES("3","Membro","A");

INSERT INTO TB_PERFIL VALUES("4","Comissão","A");

INSERT INTO TB_PERFIL VALUES("5","Líder","I");




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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;


INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("1","1","1");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("16","1","4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("17","2","4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("18","4","4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("5","2","5");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("4","3","6");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("6","2","6");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("8","4","6");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("13","2","12");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("14","4","12");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("15","5","12");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("10","1","13");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("11","2","13");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("12","4","13");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("19","1","14");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("20","2","14");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("21","4","14");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("22","1","15");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("23","2","15");

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES("24","4","15");




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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;


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

INSERT INTO TB_PESSOA VALUES("49","05365778111","CARLOS CHRISTIAN","1129660","2017-12-16 20:42:32","1996-05-25","M","49","49");

INSERT INTO TB_PESSOA VALUES("50","07581435164","DANIELLE PATRíCIA GUEDES E SILVA","3791489","2017-12-18 15:05:43","2003-01-23","F","50","50");

INSERT INTO TB_PESSOA VALUES("51","06697775106","BáRBARA SILVA","3286","2017-12-18 19:02:07","1998-06-07","F","51","51");

INSERT INTO TB_PESSOA VALUES("52","06794961148","PAULLO VINíCIUS PEREIRA FOGAçA","","2017-12-18 22:11:23","1994-04-26","M","52","52");

INSERT INTO TB_PESSOA VALUES("53","04419358181","KAROLINA MOTA","","2017-12-18 22:13:07","1997-04-30","F","53","53");

INSERT INTO TB_PESSOA VALUES("54","02567125302","MARIA GABRIELA ALVES RODRIGUES","","2017-12-18 22:16:45","1996-12-02","F","55","54");

INSERT INTO TB_PESSOA VALUES("55","06932064111","MONIQUE VIEIRA PEREIRA PINHEIRO","3298085","2017-12-18 22:29:49","1999-08-09","F","56","55");

INSERT INTO TB_PESSOA VALUES("56","04516310139","LEANDRO AZEVEDO XAVIER","3335626","2017-12-18 22:34:44","0000-00-00","M","57","56");

INSERT INTO TB_PESSOA VALUES("57","03894443162","THAIS OLIVEIRA DA COSTA MAIA","","2017-12-19 13:09:54","1993-04-23","F","58","57");

INSERT INTO TB_PESSOA VALUES("58","06980866192","LETíCIA MARTINS DE SOUSA","36493740","2017-12-19 13:18:08","2000-02-23","F","59","58");

INSERT INTO TB_PESSOA VALUES("59","03643347111","KEITER DA SILVA MAIA","","2017-12-19 13:21:55","1992-11-22","M","60","59");

INSERT INTO TB_PESSOA VALUES("60","05566516181","RONIEL RODRIGUES ALBUQUERQUE","3208574","2017-12-19 13:25:34","1996-03-04","M","61","60");

INSERT INTO TB_PESSOA VALUES("61","02351127129","LILIAN MACHADO CARVALHO BESSA","2529020","2017-12-21 08:30:32","1988-10-31","F","62","61");

INSERT INTO TB_PESSOA VALUES("62","07844250194","THAMIRES BARBOSA DE ALMEIDA","3837418","2017-12-21 09:45:59","2001-08-13","F","63","62");

INSERT INTO TB_PESSOA VALUES("63","07572266126","ANNA CAROLINY RODRIGUES LAURO","3827115","2017-12-21 13:01:09","2002-05-10","F","64","63");

INSERT INTO TB_PESSOA VALUES("64","05301006142","CLARISSE VITóRIA FRANçA PEREIRA","3355675","2017-12-21 16:01:28","1996-03-01","F","65","64");

INSERT INTO TB_PESSOA VALUES("65","04894739119","JOYCE LOPES FERREIRA","","2017-12-23 22:00:34","1998-10-28","F","67","65");

INSERT INTO TB_PESSOA VALUES("66","04583473109","SABRINA BELARMINA DE ABREU","3050440","2017-12-24 15:13:28","1994-01-21","F","68","66");

INSERT INTO TB_PESSOA VALUES("67","00441485189","KARINE VICTORIA OLIVEIRA DA SILVA","3709850","2017-12-26 11:17:29","2000-07-20","F","69","67");

INSERT INTO TB_PESSOA VALUES("68","04321849101","LETICIA PEREIRA DA SILVA","3002886","2017-12-26 11:34:19","1999-08-03","F","70","68");

INSERT INTO TB_PESSOA VALUES("69","07323321174","EVELYN RIBEIRO","3577258","2017-12-26 13:34:49","1999-08-13","F","71","69");

INSERT INTO TB_PESSOA VALUES("70","73386626149","TAYNARA RIBEIRO DE LIMA","","2017-12-26 13:35:08","2000-02-21","F","72","70");

INSERT INTO TB_PESSOA VALUES("71","04900199192","ADRIEL CLEMENTINO DOS SANTOS","","2017-12-27 14:49:41","1995-06-05","M","73","71");

INSERT INTO TB_PESSOA VALUES("72","04804195157","LINNEKER LIMA ROBERTO GOMES","2812768","2017-12-27 22:01:56","1995-10-04","M","74","72");

INSERT INTO TB_PESSOA VALUES("73","06244035135","KAMILA SILVA","3433231","2017-12-28 10:42:11","1999-01-17","F","75","73");

INSERT INTO TB_PESSOA VALUES("74","04915965104","MARIA TAYANNE","","2017-12-28 13:35:44","2000-07-02","F","76","74");

INSERT INTO TB_PESSOA VALUES("75","04223342193","LUAMAR DE SOUSA DA SILVA","2.670.559","2017-12-28 22:26:05","1994-03-04","F","77","75");

INSERT INTO TB_PESSOA VALUES("76","07048585170","CAROLINA  FRANçA DOS SANTOS","3680244","2017-12-29 16:59:22","2000-06-27","F","78","76");

INSERT INTO TB_PESSOA VALUES("77","70602523125","ISABELLA GARCIA MENDES","","2017-12-30 09:07:52","1999-07-20","F","79","77");

INSERT INTO TB_PESSOA VALUES("78","04804195157","LINNEKER LIMA R GOMES","2812756","2017-12-30 09:37:19","1995-10-04","M","80","78");

INSERT INTO TB_PESSOA VALUES("79","07413552132","LAURA DOS SANTOS BUSSOLO","3313317","2017-12-30 12:02:00","2001-06-01","F","81","79");

INSERT INTO TB_PESSOA VALUES("80","04715844109","MAYLLA SOUZA BALZANI","3241579","2017-12-30 16:18:32","1994-04-08","F","82","80");




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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO VALUES("1","123456**","TVRJek5EVTJLaW89","A","2016-10-31 00:00:00","1","1");

INSERT INTO TB_USUARIO VALUES("2","Lucrece0611","VEhWamNtVmpaVEEyTVRFPQ==","A","2017-12-09 00:00:00","31","31");

INSERT INTO TB_USUARIO VALUES("3","raul**123","Y21GMWJDb3FNVEl6","A","2017-12-10 00:00:00","34","34");

INSERT INTO TB_USUARIO VALUES("4","santosdecalcajeansjpII123","YzJGdWRHOXpaR1ZqWVd4allXcGxZVzV6YW5CSlNURXlNdz09","A","2017-12-10 00:00:00","36","36");

INSERT INTO TB_USUARIO VALUES("5","pe.pio2309","Y0dVdWNHbHZNak13T1E9PQ==","A","2017-12-11 00:00:00","37","37");

INSERT INTO TB_USUARIO VALUES("6","OPACObrubs123","VDFCQlEwOWljblZpY3pFeU13PT0=","A","2017-12-11 00:00:00","39","39");

INSERT INTO TB_USUARIO VALUES("7","311088*lili**","TXpFeE1EZzRLbXhwYkdrcUtnPT0=","A","2017-12-20 00:00:00","62","61");

INSERT INTO TB_USUARIO VALUES("8","Maria10","VFdGeWFXRXhNQT09","A","2017-12-27 00:00:00","74","72");

INSERT INTO TB_USUARIO VALUES("9","Ultimagot4","Vld4MGFXMWhaMjkwTkE9PQ==","A","2017-12-27 00:00:00","75","73");




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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;


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

INSERT INTO TB_USUARIO_PERFIL VALUES("23","7","2");

INSERT INTO TB_USUARIO_PERFIL VALUES("24","7","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("25","7","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("27","8","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("28","8","5");

INSERT INTO TB_USUARIO_PERFIL VALUES("29","8","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("31","9","3");

INSERT INTO TB_USUARIO_PERFIL VALUES("32","9","5");

INSERT INTO TB_USUARIO_PERFIL VALUES("33","9","3");




