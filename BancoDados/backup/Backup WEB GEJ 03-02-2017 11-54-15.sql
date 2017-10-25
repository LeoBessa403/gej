CREATE DATABASE IF NOT EXISTS gej_bd;

USE gej_bd;

DROP TABLE IF EXISTS tb_acesso;


CREATE TABLE `tb_acesso` (
  `co_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `ds_session_id` varchar(255) NOT NULL,
  `dt_inicio_acesso` datetime DEFAULT NULL,
  `dt_fim_acesso` datetime DEFAULT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_acesso`,`co_usuario`),
  KEY `fk_TB_ACESSO_TB_USUARIO1_idx` (`co_usuario`),
  CONSTRAINT `fk_TB_ACESSO_TB_USUARIO1` FOREIGN KEY (`co_usuario`) REFERENCES `tb_usuario` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;


INSERT INTO tb_acesso VALUES("5","fdeb19041badd7f4887aa54b248bfc70","2017-01-09 17:39:29","2017-01-13 14:34:22","1");

INSERT INTO tb_acesso VALUES("6","1a70ac2c4f21b1474a21523525903f13","2017-01-09 22:35:40","2017-01-10 00:01:19","1");

INSERT INTO tb_acesso VALUES("7","8ff3b45184016577538853f7e17694da","2017-01-09 22:54:07","2017-01-09 22:56:48","2");

INSERT INTO tb_acesso VALUES("8","b9940915eff7ce11ef072cecb52a4168","2017-01-09 23:00:00","2017-01-16 17:18:36","2");

INSERT INTO tb_acesso VALUES("9","42c428771a2361a7367d6a97d71fe52c","2017-01-09 23:03:54","2017-01-09 23:04:24","1");

INSERT INTO tb_acesso VALUES("10","8aad519fa257c0c46a5bad4efb4d4b35","2017-01-09 23:11:03","2017-01-09 23:55:09","2");

INSERT INTO tb_acesso VALUES("11","5b38d607fafca5774e2db57c164cd773","2017-01-09 23:16:17","2017-01-09 23:22:27","5");

INSERT INTO tb_acesso VALUES("12","b82089b79f2340ec63f119255d5f8686","2017-01-09 23:16:46","2017-01-10 03:32:04","2");

INSERT INTO tb_acesso VALUES("13","87f20ce1239186a0a7a2d4ab94a0e3d7","2017-01-09 23:22:05","2017-01-09 23:22:22","3");

INSERT INTO tb_acesso VALUES("14","b8dbe0b4ee2e6c8cea4331c30ed36781","2017-01-09 23:50:30","2017-01-09 23:50:45","5");

INSERT INTO tb_acesso VALUES("15","fbace6010fb9edefdb5c1ec423f9e4c1","2017-01-10 07:36:03","2017-01-10 07:39:56","1");

INSERT INTO tb_acesso VALUES("16","3d72be12e587c84e573d00917f1f762f","2017-01-10 08:06:52","2017-01-10 08:22:16","2");

INSERT INTO tb_acesso VALUES("17","b2e70a69527c0e660beeb587bc12c3e7","2017-01-10 09:44:57","2017-01-10 09:45:07","5");

INSERT INTO tb_acesso VALUES("18","50974d9deb80c293f36af446ec7ff8af","2017-01-10 12:06:29","2017-01-10 12:06:37","1");

INSERT INTO tb_acesso VALUES("19","57dc548da5d5349742bd82041968ae10","2017-01-10 17:12:34","2017-01-10 21:23:22","2");

INSERT INTO tb_acesso VALUES("20","79c403b45aa051c76996dcc14e12aa1e","2017-01-10 19:08:48","2017-01-10 19:08:56","1");

INSERT INTO tb_acesso VALUES("21","6b5a484c5b73772bf1e3b3f459e63165","2017-01-10 20:39:43","2017-01-10 21:45:02","1");

INSERT INTO tb_acesso VALUES("22","79c241cd933e8a6b6ec3435d382f2e33","2017-01-10 23:02:47","2017-01-10 23:02:53","2");

INSERT INTO tb_acesso VALUES("23","965399ba0e593bf5220246191cdd616e","2017-01-11 07:45:39","2017-01-11 07:47:00","2");

INSERT INTO tb_acesso VALUES("24","fdeb19041badd7f4887aa54b248bfc70","2017-01-11 10:20:16","2017-01-11 10:20:27","8");

INSERT INTO tb_acesso VALUES("25","a252d2337196b8761b259311bb9857da","2017-01-11 12:35:51","2017-01-11 12:36:28","3");

INSERT INTO tb_acesso VALUES("26","eb8b5ca91b2ff9768d973cc8e9dd4ce6","2017-01-11 13:01:17","2017-01-11 13:01:28","2");

INSERT INTO tb_acesso VALUES("27","08ed042eab380f80441ed8f6f0cceccd","2017-01-11 19:45:08","2017-01-11 19:45:27","2");

INSERT INTO tb_acesso VALUES("28","0e3efed4cabe5407daf60b63f63afca0","2017-01-12 08:33:57","2017-01-12 11:36:57","2");

INSERT INTO tb_acesso VALUES("29","b4085539a81d1946b9d42b3417ea1cde","2017-01-12 13:36:14","2017-01-12 13:47:44","2");

INSERT INTO tb_acesso VALUES("30","4f7a859474884a6bb1161db9567b00d3","2017-01-12 23:08:00","2017-01-12 23:09:22","1");

INSERT INTO tb_acesso VALUES("31","5f26d740f45241e82355c002d4e36124","2017-01-13 20:35:56","2017-01-13 20:39:29","8");

INSERT INTO tb_acesso VALUES("32","d3e2944828c2cfb5cebd368be8a36cd7","2017-01-14 10:06:26","2017-01-14 10:06:36","2");

INSERT INTO tb_acesso VALUES("33","9140414f2ca16a2931a1f69743c19918","2017-01-15 13:07:12","2017-01-15 13:07:23","2");

INSERT INTO tb_acesso VALUES("34","88bf57022e0597c1b86d1309614e935f","2017-01-15 13:25:51","2017-01-15 13:25:55","1");

INSERT INTO tb_acesso VALUES("35","6dac7ec04f535b6c09e20431dfb4cb4d","2017-01-15 18:32:01","2017-01-15 18:32:09","2");

INSERT INTO tb_acesso VALUES("36","3b23564c4536f734817bf935b9cc4c6e","2017-01-15 21:54:20","2017-01-15 21:54:27","2");

INSERT INTO tb_acesso VALUES("37","46b08f7420883eea42dc89448858efb8","2017-01-15 22:17:20","2017-01-15 22:17:30","1");

INSERT INTO tb_acesso VALUES("38","f15097f36ef0f86c7c0c3c0c3acd8c9b","2017-01-16 00:35:09","2017-01-16 00:35:16","2");

INSERT INTO tb_acesso VALUES("39","e4dc51c45d6ac57bc30527d6292c91ea","2017-01-16 10:48:34","2017-01-16 10:49:37","2");

INSERT INTO tb_acesso VALUES("40","73a8ba559dc345bd83adec7867acda28","2017-01-16 12:10:00","2017-01-18 12:46:56","1");

INSERT INTO tb_acesso VALUES("41","73a8ba559dc345bd83adec7867acda28","2017-01-16 17:14:37","2017-01-16 17:18:50","8");

INSERT INTO tb_acesso VALUES("42","d446f04ce562795115146e332c061b5e","2017-01-16 18:24:40","2017-01-16 18:25:15","8");

INSERT INTO tb_acesso VALUES("43","0f1dec997544e680fe4ee897068c4978","2017-01-16 20:40:41","2017-01-16 20:43:10","2");

INSERT INTO tb_acesso VALUES("44","022d12f09c60902ff4fafd2217a1a518","2017-01-17 07:50:34","2017-01-17 11:48:52","2");

INSERT INTO tb_acesso VALUES("45","e5a3962c0d323633713eabb7d6c885d4","2017-01-17 23:06:32","2017-01-17 23:07:26","2");

INSERT INTO tb_acesso VALUES("46","094b7f597385295ef6a6a51fd944834e","2017-01-18 09:03:58","2017-01-18 09:04:27","3");

INSERT INTO tb_acesso VALUES("47","m81t3kb97h1ojj3dctbc7fvj35","2017-01-19 09:53:23","2017-01-19 10:46:30","1");

INSERT INTO tb_acesso VALUES("48","2f9akbd4dca75i33e5vbrq7jp4","2017-01-19 10:52:38","2017-01-19 11:33:02","1");

INSERT INTO tb_acesso VALUES("49","kda6mnc40viiei9c5g7ri5sq81","2017-01-19 10:53:09","2017-01-24 15:03:57","1");

INSERT INTO tb_acesso VALUES("50","h499upp1p4eepd0pke8hgut2i0","2017-01-19 12:03:58","2017-01-24 16:08:59","1");

INSERT INTO tb_acesso VALUES("51","arl5b4f0vk72q6p4cnu9psirj7","2017-01-26 10:46:28","2017-01-26 16:09:26","1");




DROP TABLE IF EXISTS tb_auditoria;


CREATE TABLE `tb_auditoria` (
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
) ENGINE=InnoDB AUTO_INCREMENT=761 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria VALUES("1","TB_PAGAMENTO","2017-01-09 17:33:40","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==5","","MASTER","1");

INSERT INTO tb_auditoria VALUES("2","TB_PAGAMENTO","2017-01-09 17:33:40","I","","co_pagamento==;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","MASTER","1");

INSERT INTO tb_auditoria VALUES("3","TB_ACESSO","2017-01-09 17:39:20","I","","dt_fim_acesso==2017-01-09 17:39:20","","MASTER","1");

INSERT INTO tb_auditoria VALUES("4","TB_ACESSO","2017-01-09 17:39:21","I","","dt_fim_acesso==2017-01-09 17:39:21","","MASTER","1");

INSERT INTO tb_auditoria VALUES("5","TB_ACESSO","2017-01-09 17:39:21","I","","dt_fim_acesso==2017-01-09 17:39:21","","MASTER","1");

INSERT INTO tb_auditoria VALUES("6","TB_ACESSO","2017-01-09 17:39:21","I","","dt_fim_acesso==2017-01-09 17:39:21","","MASTER","1");

INSERT INTO tb_auditoria VALUES("7","TB_ACESSO","2017-01-09 17:39:29","I","","ds_session_id==fdeb19041badd7f4887aa54b248bfc70;/co_usuario==1;/dt_inicio_acesso==2017-01-09 17:39:29;/dt_fim_acesso==2017-01-09 17:39:29","5","","0");

INSERT INTO tb_auditoria VALUES("8","TB_ENDERECO","2017-01-09 22:24:31","I","","ds_endereco==qr 403 conjunto 10 casa 28;/ds_complemento==Samambaia Norte;/ds_bairro==;/no_cidade==Brasília;/nu_cep==72319111;/sg_uf==DF","2","","0");

INSERT INTO tb_auditoria VALUES("9","TB_CONTATO","2017-01-09 22:24:31","I","","ds_email==leonardomcbessa@gmail.com;/nu_tel1==32423532532;/nu_tel2==","2","","0");

INSERT INTO tb_auditoria VALUES("10","TB_PESSOA","2017-01-09 22:24:31","I","","no_pessoa==LEONARDO BESSA;/nu_cpf==12345678909;/nu_rg==;/dt_nascimento==1999-01-13;/st_sexo==M;/dt_cadastro==2017-01-09 22:24:31;/co_endereco==2;/co_contato==2","2","","0");

INSERT INTO tb_auditoria VALUES("11","TB_INSCRICAO","2017-01-09 22:24:31","I","","co_pessoa==2;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==JOSE;/nu_tel_responsavel==32432566663","1","","0");

INSERT INTO tb_auditoria VALUES("12","TB_PAGAMENTO","2017-01-09 22:24:36","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==1","2","","0");

INSERT INTO tb_auditoria VALUES("13","TB_PAGAMENTO","2017-01-09 22:24:36","I","","co_pagamento==2;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("14","TB_ENDERECO","2017-01-09 22:26:25","I","","ds_endereco==qr 403 conjunto 10 casa 28;/ds_complemento==Samambaia Norte;/ds_bairro==;/no_cidade==Brasília;/nu_cep==72319111;/sg_uf==DF","3","","0");

INSERT INTO tb_auditoria VALUES("15","TB_CONTATO","2017-01-09 22:26:25","I","","ds_email==leonardomcbessa@gmail.com;/nu_tel1==34543633743;/nu_tel2==","3","","0");

INSERT INTO tb_auditoria VALUES("16","TB_PESSOA","2017-01-09 22:26:25","I","","no_pessoa==LEONARDO BESSA;/nu_cpf==12345678909;/nu_rg==;/dt_nascimento==1980-01-17;/st_sexo==M;/dt_cadastro==2017-01-09 22:26:25;/co_endereco==3;/co_contato==3","3","","0");

INSERT INTO tb_auditoria VALUES("17","TB_INSCRICAO","2017-01-09 22:26:25","I","","co_pessoa==3;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==6;/no_responsavel==JOSE;/nu_tel_responsavel==2321415525","2","","0");

INSERT INTO tb_auditoria VALUES("18","TB_PAGAMENTO","2017-01-09 22:26:29","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==2","3","","0");

INSERT INTO tb_auditoria VALUES("19","TB_PAGAMENTO","2017-01-09 22:26:29","I","","co_pagamento==3;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("20","TB_ENDERECO","2017-01-09 22:32:20","I","","ds_endereco==Qr 405 conjunto 13 casa 13;/ds_complemento==;/ds_bairro==Samambaia ;/no_cidade==Brasilia;/nu_cep==;/sg_uf==DF","4","","0");

INSERT INTO tb_auditoria VALUES("21","TB_CONTATO","2017-01-09 22:32:20","I","","ds_email==Linnekerlima@hotmail.com;/nu_tel1==61993259985;/nu_tel2==","4","","0");

INSERT INTO tb_auditoria VALUES("22","TB_IMAGEM","2017-01-09 22:32:20","I","","ds_caminho==linneker-lima-roberto-gomes-58742b946722b.JPG","2","","0");

INSERT INTO tb_auditoria VALUES("23","TB_PESSOA","2017-01-09 22:32:20","I","","no_pessoa==LINNEKER LIMA ROBERTO GOMES;/nu_cpf==04804195157;/nu_rg==;/dt_nascimento==1995-10-04;/st_sexo==M;/dt_cadastro==2017-01-09 22:32:20;/co_endereco==4;/co_contato==4","4","","0");

INSERT INTO tb_auditoria VALUES("24","TB_USUARIO","2017-01-09 22:32:20","I","","ds_senha==Maria10;/ds_code==VFdGeWFXRXhNQT09;/dt_cadastro==2017-01-09 22:32:20;/co_imagem==2;/co_pessoa==4","2","","0");

INSERT INTO tb_auditoria VALUES("25","TB_USUARIO_PERFIL","2017-01-09 22:32:20","I","","co_usuario==2;/co_perfil==3","2","","0");

INSERT INTO tb_auditoria VALUES("26","TB_ENDERECO","2017-01-09 22:35:24","I","","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","","0");

INSERT INTO tb_auditoria VALUES("27","TB_CONTATO","2017-01-09 22:35:24","I","","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","","0");

INSERT INTO tb_auditoria VALUES("28","TB_PESSOA","2017-01-09 22:35:24","I","","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-09 22:35:24;/co_endereco==5;/co_contato==5","5","","0");

INSERT INTO tb_auditoria VALUES("29","TB_INSCRICAO","2017-01-09 22:35:24","I","","co_pessoa==5;/ds_pastoral==Gej ;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","","0");

INSERT INTO tb_auditoria VALUES("30","TB_ACESSO","2017-01-09 22:35:40","I","","ds_session_id==1a70ac2c4f21b1474a21523525903f13;/co_usuario==1;/dt_inicio_acesso==2017-01-09 22:35:40;/dt_fim_acesso==2017-01-09 22:35:40","6","","0");

INSERT INTO tb_auditoria VALUES("31","TB_PAGAMENTO","2017-01-09 22:35:53","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==3","4","","0");

INSERT INTO tb_auditoria VALUES("32","TB_PAGAMENTO","2017-01-09 22:35:53","I","","co_pagamento==4;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("33","TB_ENDERECO","2017-01-09 22:36:13","I","","ds_endereco==Qr 405 conjunto 8 casa 15 ;/ds_complemento==00;/ds_bairro==Samambaia Norte ;/no_cidade==Brasília ;/nu_cep==72319208;/sg_uf==DF","6","","0");

INSERT INTO tb_auditoria VALUES("34","TB_CONTATO","2017-01-09 22:36:13","I","","ds_email==fehs2gomes@hotmail.com;/nu_tel1==6184995380;/nu_tel2==","6","","0");

INSERT INTO tb_auditoria VALUES("35","TB_IMAGEM","2017-01-09 22:36:13","I","","ds_caminho==fernanda-gomes-de-freitas-moura-58742c7ca470c.JPG","3","","0");

INSERT INTO tb_auditoria VALUES("36","TB_PESSOA","2017-01-09 22:36:13","I","","no_pessoa==FERNANDA GOMES DE FREITAS MOURA;/nu_cpf==05310353100;/nu_rg==3431295;/dt_nascimento==1998-11-25;/st_sexo==F;/dt_cadastro==2017-01-09 22:36:13;/co_endereco==6;/co_contato==6","6","","0");

INSERT INTO tb_auditoria VALUES("37","TB_USUARIO","2017-01-09 22:36:13","I","","ds_senha==Samambaia123;/ds_code==VTJGdFlXMWlZV2xoTVRJeg==;/dt_cadastro==2017-01-09 22:36:13;/co_imagem==3;/co_pessoa==6","3","","0");

INSERT INTO tb_auditoria VALUES("38","TB_USUARIO_PERFIL","2017-01-09 22:36:13","I","","co_usuario==3;/co_perfil==3","3","","0");

INSERT INTO tb_auditoria VALUES("39","TB_ENDERECO","2017-01-09 22:36:32","I","","ds_endereco==Qr 401 conjunto 09;/ds_complemento==30;/ds_bairro==Samambaia Norte;/no_cidade==Brasília Df;/nu_cep==72319009;/sg_uf==DF","7","","0");

INSERT INTO tb_auditoria VALUES("40","TB_CONTATO","2017-01-09 22:36:32","I","","ds_email==Lucasgontijomaria@hotmail.com;/nu_tel1==6194102650;/nu_tel2==6133585155","7","","0");

INSERT INTO tb_auditoria VALUES("41","TB_PESSOA","2017-01-09 22:36:32","I","","no_pessoa==LUCAS MIRANDA GONTIJO;/nu_cpf==06075765107;/nu_rg==3455230;/dt_nascimento==1996-11-09;/st_sexo==M;/dt_cadastro==2017-01-09 22:36:32;/co_endereco==7;/co_contato==7","7","","0");

INSERT INTO tb_auditoria VALUES("42","TB_INSCRICAO","2017-01-09 22:36:32","I","","co_pessoa==7;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==JOSé BENTO;/nu_tel_responsavel==6133585155","4","","0");

INSERT INTO tb_auditoria VALUES("43","TB_ENDERECO","2017-01-09 22:38:21","I","","ds_endereco==Qr 405 conjunto 13 casa 13;/ds_complemento==;/ds_bairro==Samambaia N;/no_cidade==Brasília ;/nu_cep==72319213;/sg_uf==DF","8","","0");

INSERT INTO tb_auditoria VALUES("44","TB_CONTATO","2017-01-09 22:38:21","I","","ds_email==Linnekerlima@hotmail.con;/nu_tel1==6193259985;/nu_tel2==","8","","0");

INSERT INTO tb_auditoria VALUES("45","TB_IMAGEM","2017-01-09 22:38:21","I","","ds_caminho==linneker-maria-58742cfcecb4b.JPG","4","","0");

INSERT INTO tb_auditoria VALUES("46","TB_PESSOA","2017-01-09 22:38:21","I","","no_pessoa==LINNEKER MARIA;/nu_cpf==04804195157;/nu_rg==;/dt_nascimento==1995-10-04;/st_sexo==M;/dt_cadastro==2017-01-09 22:38:21;/co_endereco==8;/co_contato==8","8","","0");

INSERT INTO tb_auditoria VALUES("47","TB_USUARIO","2017-01-09 22:38:21","I","","ds_senha==Maria10;/ds_code==VFdGeWFXRXhNQT09;/dt_cadastro==2017-01-09 22:38:21;/co_imagem==4;/co_pessoa==8","4","","0");

INSERT INTO tb_auditoria VALUES("48","TB_USUARIO_PERFIL","2017-01-09 22:38:21","I","","co_usuario==4;/co_perfil==3","4","","0");

INSERT INTO tb_auditoria VALUES("49","TB_ENDERECO","2017-01-09 22:40:04","I","","ds_endereco==QR 403 CONJUNTO 10 CASA 2I;/ds_complemento==28;/ds_bairro==Samambaia;/no_cidade==Brasília;/nu_cep==72319111;/sg_uf==DF","9","","0");

INSERT INTO tb_auditoria VALUES("50","TB_CONTATO","2017-01-09 22:40:04","I","","ds_email==lililasp@gmail.com;/nu_tel1==55619106624;/nu_tel2==55619106624","9","","0");

INSERT INTO tb_auditoria VALUES("51","TB_PESSOA","2017-01-09 22:40:04","I","","no_pessoa==LILIAN MACHADO CARVALHO BESSA;/nu_cpf==02351127129;/nu_rg==2529020;/dt_nascimento==1988-10-31;/st_sexo==F;/dt_cadastro==2017-01-09 22:40:04;/co_endereco==9;/co_contato==9","9","","0");

INSERT INTO tb_auditoria VALUES("52","TB_INSCRICAO","2017-01-09 22:40:04","I","","co_pessoa==9;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==4;/no_responsavel==LETíCIA;/nu_tel_responsavel==61991066240","5","","0");

INSERT INTO tb_auditoria VALUES("53","TB_PAGAMENTO","2017-01-09 22:40:39","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==5","5","","0");

INSERT INTO tb_auditoria VALUES("54","TB_PAGAMENTO","2017-01-09 22:40:39","I","","co_pagamento==5;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("55","TB_ENDERECO","2017-01-09 22:41:47","I","","ds_endereco==Qr 425 Cj 27 Casa 05 Samambaia Norte ;/ds_complemento==;/ds_bairro==Samambaia ;/no_cidade==Brasília ;/nu_cep==72327028;/sg_uf==DF","10","","0");

INSERT INTO tb_auditoria VALUES("56","TB_CONTATO","2017-01-09 22:41:47","I","","ds_email==fhms1996@gmail.com;/nu_tel1==61995479913;/nu_tel2==6133595307","10","","0");

INSERT INTO tb_auditoria VALUES("57","TB_PESSOA","2017-01-09 22:41:47","I","","no_pessoa==FRANCISCO HENRIQUE MOTA DE SOUZA;/nu_cpf==04337020365;/nu_rg==5879927;/dt_nascimento==1996-01-30;/st_sexo==M;/dt_cadastro==2017-01-09 22:41:47;/co_endereco==10;/co_contato==10","10","","0");

INSERT INTO tb_auditoria VALUES("58","TB_INSCRICAO","2017-01-09 22:41:47","I","","co_pessoa==10;/ds_pastoral==GEJ Dom Bosco ;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==DILVA;/nu_tel_responsavel==6133595307","6","","0");

INSERT INTO tb_auditoria VALUES("59","TB_ENDERECO","2017-01-09 22:42:31","I","","ds_endereco==Qr 405 conjunto 13 casa 13;/ds_complemento==;/ds_bairro==Samambaia ;/no_cidade==Brasília ;/nu_cep==;/sg_uf==DF","11","","0");

INSERT INTO tb_auditoria VALUES("60","TB_CONTATO","2017-01-09 22:42:31","I","","ds_email==Linnekerlima@hotmail.com;/nu_tel1==61993259985;/nu_tel2==6193259985","11","","0");

INSERT INTO tb_auditoria VALUES("61","TB_PESSOA","2017-01-09 22:42:31","I","","no_pessoa==LINNEKER;/nu_cpf==04804195157;/nu_rg==;/dt_nascimento==1995-10-04;/st_sexo==M;/dt_cadastro==2017-01-09 22:42:31;/co_endereco==11;/co_contato==11","11","","0");

INSERT INTO tb_auditoria VALUES("62","TB_INSCRICAO","2017-01-09 22:42:31","I","","co_pessoa==11;/ds_pastoral==GEJ ;/ds_membro_ativo==S;/nu_camisa==9;/no_responsavel==ELIENE;/nu_tel_responsavel==6134594937","7","","0");

INSERT INTO tb_auditoria VALUES("63","TB_PAGAMENTO","2017-01-09 22:42:42","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==6","6","","0");

INSERT INTO tb_auditoria VALUES("64","TB_PAGAMENTO","2017-01-09 22:42:42","I","","co_pagamento==6;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("65","TB_ENDERECO","2017-01-09 22:43:40","I","","ds_endereco==Qr 401 Conjunto 20;/ds_complemento==Casa 07;/ds_bairro==Samambaia Norte;/no_cidade==Samambaia;/nu_cep==72319020;/sg_uf==DF","12","","0");

INSERT INTO tb_auditoria VALUES("66","TB_CONTATO","2017-01-09 22:43:40","I","","ds_email==paulovitor3005@gmail.com;/nu_tel1==61996309365;/nu_tel2==61984625249","12","","0");

INSERT INTO tb_auditoria VALUES("67","TB_PESSOA","2017-01-09 22:43:40","I","","no_pessoa==PAULO VITOR RODRIGUES DE OLIVEIRA;/nu_cpf==05948792137;/nu_rg==3340445;/dt_nascimento==1997-05-30;/st_sexo==M;/dt_cadastro==2017-01-09 22:43:40;/co_endereco==12;/co_contato==12","12","","0");

INSERT INTO tb_auditoria VALUES("68","TB_INSCRICAO","2017-01-09 22:43:40","I","","co_pessoa==12;/ds_pastoral==Gej Dom Bosco;/ds_membro_ativo==S;/nu_camisa==6;/no_responsavel==ANTONIA IEDA;/nu_tel_responsavel==61984625249","8","","0");

INSERT INTO tb_auditoria VALUES("69","TB_PAGAMENTO","2017-01-09 22:43:48","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==7","7","","0");

INSERT INTO tb_auditoria VALUES("70","TB_PAGAMENTO","2017-01-09 22:43:48","I","","co_pagamento==7;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("71","TB_PAGAMENTO","2017-01-09 22:44:18","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==8","8","","0");

INSERT INTO tb_auditoria VALUES("72","TB_PAGAMENTO","2017-01-09 22:44:18","I","","co_pagamento==8;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("73","TB_ENDERECO","2017-01-09 22:46:32","I","","ds_endereco==Qr 405 conjunto 8 casa 15;/ds_complemento==00;/ds_bairro==Samambaia Norte ;/no_cidade==Brasília ;/nu_cep==72319208;/sg_uf==DF","13","","0");

INSERT INTO tb_auditoria VALUES("74","TB_CONTATO","2017-01-09 22:46:32","I","","ds_email==fehs2gomes@hotmail.com;/nu_tel1==6184995380;/nu_tel2==","13","","0");

INSERT INTO tb_auditoria VALUES("75","TB_PESSOA","2017-01-09 22:46:32","I","","no_pessoa==FERNANDA GOMES DE FREITAS MOURA;/nu_cpf==05310353100;/nu_rg==3431295;/dt_nascimento==1998-11-25;/st_sexo==F;/dt_cadastro==2017-01-09 22:46:32;/co_endereco==13;/co_contato==13","13","","0");

INSERT INTO tb_auditoria VALUES("76","TB_INSCRICAO","2017-01-09 22:46:32","I","","co_pessoa==13;/ds_pastoral==Gej dom Bosco ;/ds_membro_ativo==S;/nu_camisa==4;/no_responsavel==GENI GOMES;/nu_tel_responsavel==6184008088","9","","0");

INSERT INTO tb_auditoria VALUES("77","TB_ENDERECO","2017-01-09 22:47:23","I","","ds_endereco==Qr. 523 cj.5 casa 18;/ds_complemento==;/ds_bairro==;/no_cidade==Samambaia sul;/nu_cep==72317105;/sg_uf==DF","14","","0");

INSERT INTO tb_auditoria VALUES("78","TB_CONTATO","2017-01-09 22:47:23","I","","ds_email==higorodrigues.78o@hotmail.com;/nu_tel1==61992841480;/nu_tel2==","14","","0");

INSERT INTO tb_auditoria VALUES("79","TB_PESSOA","2017-01-09 22:47:23","I","","no_pessoa==HIGOR RODRIGUES DIAS;/nu_cpf==07606595160;/nu_rg==3795126;/dt_nascimento==2002-08-15;/st_sexo==M;/dt_cadastro==2017-01-09 22:47:23;/co_endereco==14;/co_contato==14","14","","0");

INSERT INTO tb_auditoria VALUES("80","TB_INSCRICAO","2017-01-09 22:47:23","I","","co_pessoa==14;/ds_pastoral==Gej Dom Bosco;/ds_membro_ativo==S;/nu_camisa==9;/no_responsavel==SOLANGE  DIAS;/nu_tel_responsavel==9133596768","10","","0");

INSERT INTO tb_auditoria VALUES("81","TB_FUNCIONALIDADE","2017-01-09 22:50:28","I","","no_funcionalidade==Admin/Inscricao/ListarInscricao;/ds_rota==Listar Inscrição","12","Master","1");

INSERT INTO tb_auditoria VALUES("82","TB_PERFIL","2017-01-09 22:50:41","I","","no_perfil==COMISSÃO","4","Master","1");

INSERT INTO tb_auditoria VALUES("83","TB_PAGAMENTO","2017-01-09 22:50:44","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==10","9","","0");

INSERT INTO tb_auditoria VALUES("84","TB_PAGAMENTO","2017-01-09 22:50:44","I","","co_pagamento==9;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("85","TB_PAGAMENTO","2017-01-09 22:50:47","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==9","10","","0");

INSERT INTO tb_auditoria VALUES("86","TB_PAGAMENTO","2017-01-09 22:50:47","I","","co_pagamento==10;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("87","TB_PERFIL_FUNCIONALIDADE","2017-01-09 22:50:54","D","","","","Master","1");

INSERT INTO tb_auditoria VALUES("88","TB_PERFIL_FUNCIONALIDADE","2017-01-09 22:50:54","I","","co_perfil==4;/co_funcionalidade==6","5","Master","1");

INSERT INTO tb_auditoria VALUES("89","TB_PERFIL_FUNCIONALIDADE","2017-01-09 22:50:54","I","","co_perfil==4;/co_funcionalidade==12","6","Master","1");

INSERT INTO tb_auditoria VALUES("90","TB_ENDERECO","2017-01-09 22:53:24","I","","ds_endereco==Qr 405 conjunto 25 casa 05;/ds_complemento==;/ds_bairro==Samambaia norte ;/no_cidade==Brasília ;/nu_cep==72319225;/sg_uf==DF","15","","0");

INSERT INTO tb_auditoria VALUES("91","TB_CONTATO","2017-01-09 22:53:24","I","","ds_email==Kamilaf.silva@hotmail.com;/nu_tel1==61985539668;/nu_tel2==61986130447","15","","0");

INSERT INTO tb_auditoria VALUES("92","TB_IMAGEM","2017-01-09 22:53:24","I","","ds_caminho==kamila-silva-587430847f393.JPG","5","","0");

INSERT INTO tb_auditoria VALUES("93","TB_PESSOA","2017-01-09 22:53:24","I","","no_pessoa==KAMILA SILVA;/nu_cpf==06244035135;/nu_rg==3433351;/dt_nascimento==1999-01-17;/st_sexo==F;/dt_cadastro==2017-01-09 22:53:24;/co_endereco==15;/co_contato==15","15","","0");

INSERT INTO tb_auditoria VALUES("94","TB_USUARIO","2017-01-09 22:53:24","I","","ds_senha==frangofritoS2;/ds_code==Wm5KaGJtZHZabkpwZEc5VE1nPT0=;/dt_cadastro==2017-01-09 22:53:24;/co_imagem==5;/co_pessoa==15","5","","0");

INSERT INTO tb_auditoria VALUES("95","TB_USUARIO_PERFIL","2017-01-09 22:53:24","I","","co_usuario==5;/co_perfil==3","5","","0");

INSERT INTO tb_auditoria VALUES("96","TB_ACESSO","2017-01-09 22:54:07","I","","ds_session_id==8ff3b45184016577538853f7e17694da;/co_usuario==2;/dt_inicio_acesso==2017-01-09 22:54:07;/dt_fim_acesso==2017-01-09 22:54:07","7","","0");

INSERT INTO tb_auditoria VALUES("97","TB_ENDERECO","2017-01-09 22:55:00","I","","ds_endereco==Qr 401 conj 14 casa 11;/ds_complemento==;/ds_bairro==Samambaia Norte;/no_cidade==Brasilia;/nu_cep==72319115;/sg_uf==DF","16","","0");

INSERT INTO tb_auditoria VALUES("98","TB_CONTATO","2017-01-09 22:55:00","I","","ds_email==ceifadorlouco17@gmail.com;/nu_tel1==6186548474;/nu_tel2==","16","","0");

INSERT INTO tb_auditoria VALUES("99","TB_PESSOA","2017-01-09 22:55:00","I","","no_pessoa==DANIEL MARLEY SILVA DE LIMA;/nu_cpf==07747966180;/nu_rg==3872338;/dt_nascimento==2001-02-20;/st_sexo==M;/dt_cadastro==2017-01-09 22:55:00;/co_endereco==16;/co_contato==16","16","","0");

INSERT INTO tb_auditoria VALUES("100","TB_INSCRICAO","2017-01-09 22:55:00","I","","co_pessoa==16;/ds_pastoral==Gej;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ANGELINA COSTA DA SILVA;/nu_tel_responsavel==6133589483","11","","0");

INSERT INTO tb_auditoria VALUES("101","TB_PAGAMENTO","2017-01-09 22:55:23","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==11","11","","0");

INSERT INTO tb_auditoria VALUES("102","TB_PAGAMENTO","2017-01-09 22:55:23","I","","co_pagamento==11;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("103","TB_PERFIL_FUNCIONALIDADE","2017-01-09 22:56:44","D","co_perfil_funcionalidade==5;/co_perfil==4;/co_funcionalidade==6","","5","Master","1");

INSERT INTO tb_auditoria VALUES("104","TB_PERFIL_FUNCIONALIDADE","2017-01-09 22:56:44","I","","co_perfil==4;/co_funcionalidade==6","7","Master","1");

INSERT INTO tb_auditoria VALUES("105","TB_PERFIL_FUNCIONALIDADE","2017-01-09 22:56:44","I","","co_perfil==4;/co_funcionalidade==12","8","Master","1");

INSERT INTO tb_auditoria VALUES("106","TB_ACESSO","2017-01-09 23:00:00","I","","ds_session_id==b9940915eff7ce11ef072cecb52a4168;/co_usuario==2;/dt_inicio_acesso==2017-01-09 23:00:00;/dt_fim_acesso==2017-01-09 23:00:00","8","","0");

INSERT INTO tb_auditoria VALUES("107","TB_ENDERECO","2017-01-09 23:01:08","I","","ds_endereco==Qr 405 conjunto 25 casa 05;/ds_complemento==;/ds_bairro==Samambaia ;/no_cidade==BRASILIA;/nu_cep==72319225;/sg_uf==DF","17","","0");

INSERT INTO tb_auditoria VALUES("108","TB_CONTATO","2017-01-09 23:01:08","I","","ds_email==kamilaf.silva@hotmail.com;/nu_tel1==61986130447;/nu_tel2==","17","","0");

INSERT INTO tb_auditoria VALUES("109","TB_IMAGEM","2017-01-09 23:01:08","I","","ds_caminho==kamila-silva-5874325411644.jpeg","6","","0");

INSERT INTO tb_auditoria VALUES("110","TB_PESSOA","2017-01-09 23:01:08","I","","no_pessoa==KAMILA SILVA;/nu_cpf==06244035135;/nu_rg==3433351;/dt_nascimento==1999-01-17;/st_sexo==F;/dt_cadastro==2017-01-09 23:01:08;/co_endereco==17;/co_contato==17","17","","0");

INSERT INTO tb_auditoria VALUES("111","TB_USUARIO","2017-01-09 23:01:08","I","","ds_senha==frangofritoS2;/ds_code==Wm5KaGJtZHZabkpwZEc5VE1nPT0=;/dt_cadastro==2017-01-09 23:01:08;/co_imagem==6;/co_pessoa==17","6","","0");

INSERT INTO tb_auditoria VALUES("112","TB_USUARIO_PERFIL","2017-01-09 23:01:08","I","","co_usuario==6;/co_perfil==3","6","","0");

INSERT INTO tb_auditoria VALUES("113","TB_ENDERECO","2017-01-09 23:02:47","I","","ds_endereco==qr 421 conjunto 16 casa 03;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==72325119;/sg_uf==DF","18","","0");

INSERT INTO tb_auditoria VALUES("114","TB_CONTATO","2017-01-09 23:02:47","I","","ds_email==fabriceras15@gmail.com;/nu_tel1==61994108557;/nu_tel2==61982701888","18","","0");

INSERT INTO tb_auditoria VALUES("115","TB_PESSOA","2017-01-09 23:02:47","I","","no_pessoa==FABRíCIO ALVES OLIVEIRA;/nu_cpf==02858427143;/nu_rg==3558631;/dt_nascimento==2001-07-05;/st_sexo==M;/dt_cadastro==2017-01-09 23:02:47;/co_endereco==18;/co_contato==18","18","","0");

INSERT INTO tb_auditoria VALUES("116","TB_INSCRICAO","2017-01-09 23:02:47","I","","co_pessoa==18;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==9;/no_responsavel==PAI;/nu_tel_responsavel==61982701888","12","","0");

INSERT INTO tb_auditoria VALUES("117","TB_PAGAMENTO","2017-01-09 23:02:59","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==12","12","","0");

INSERT INTO tb_auditoria VALUES("118","TB_PAGAMENTO","2017-01-09 23:02:59","I","","co_pagamento==12;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("119","TB_ENDERECO","2017-01-09 23:03:10","I","","ds_endereco==Qr 401 Conj 15 Casa 05;/ds_complemento==;/ds_bairro==;/no_cidade==Samambaia Norte ;/nu_cep==72319015;/sg_uf==DF","19","","0");

INSERT INTO tb_auditoria VALUES("120","TB_CONTATO","2017-01-09 23:03:10","I","","ds_email==kelvissondf@gmail.com;/nu_tel1==61985683988;/nu_tel2==61984361032","19","","0");

INSERT INTO tb_auditoria VALUES("121","TB_PESSOA","2017-01-09 23:03:10","I","","no_pessoa==KELVISSON NASCIMENTO SILVA;/nu_cpf==07164674108;/nu_rg==3695033;/dt_nascimento==2000-09-22;/st_sexo==M;/dt_cadastro==2017-01-09 23:03:10;/co_endereco==19;/co_contato==19","19","","0");

INSERT INTO tb_auditoria VALUES("122","TB_INSCRICAO","2017-01-09 23:03:10","I","","co_pessoa==19;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==8;/no_responsavel==MARA RUBIA;/nu_tel_responsavel==61985683988","13","","0");

INSERT INTO tb_auditoria VALUES("123","TB_ACESSO","2017-01-09 23:03:54","I","","ds_session_id==42c428771a2361a7367d6a97d71fe52c;/co_usuario==1;/dt_inicio_acesso==2017-01-09 23:03:54;/dt_fim_acesso==2017-01-09 23:03:54","9","","0");

INSERT INTO tb_auditoria VALUES("124","TB_PAGAMENTO","2017-01-09 23:06:08","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==13","13","","0");

INSERT INTO tb_auditoria VALUES("125","TB_PAGAMENTO","2017-01-09 23:06:08","I","","co_pagamento==13;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("126","TB_ENDERECO","2017-01-09 23:06:15","I","","ds_endereco==Qr 405 conjunto 25 casa 05;/ds_complemento==;/ds_bairro==Samambaia ;/no_cidade==Brasilia;/nu_cep==72319225;/sg_uf==DF","20","","0");

INSERT INTO tb_auditoria VALUES("127","TB_CONTATO","2017-01-09 23:06:15","I","","ds_email==kamilaf.silva@hotmail.com;/nu_tel1==61985539668;/nu_tel2==","20","","0");

INSERT INTO tb_auditoria VALUES("128","TB_IMAGEM","2017-01-09 23:06:15","I","","ds_caminho==kamila-silva-5874338737ffa.jpeg","7","","0");

INSERT INTO tb_auditoria VALUES("129","TB_PESSOA","2017-01-09 23:06:15","I","","no_pessoa==KAMILA SILVA;/nu_cpf==06244035135;/nu_rg==3433351;/dt_nascimento==1999-01-17;/st_sexo==F;/dt_cadastro==2017-01-09 23:06:15;/co_endereco==20;/co_contato==20","20","","0");

INSERT INTO tb_auditoria VALUES("130","TB_USUARIO","2017-01-09 23:06:15","I","","ds_senha==frangofritoS2;/ds_code==Wm5KaGJtZHZabkpwZEc5VE1nPT0=;/dt_cadastro==2017-01-09 23:06:15;/co_imagem==7;/co_pessoa==20","7","","0");

INSERT INTO tb_auditoria VALUES("131","TB_USUARIO_PERFIL","2017-01-09 23:06:15","I","","co_usuario==7;/co_perfil==3","7","","0");

INSERT INTO tb_auditoria VALUES("132","TB_ENDERECO","2017-01-09 23:08:40","I","","ds_endereco==Qr 215 conjunto 1 casa 21;/ds_complemento==;/ds_bairro==Norte ;/no_cidade==Samambaia ;/nu_cep==71343201;/sg_uf==DF","21","","0");

INSERT INTO tb_auditoria VALUES("133","TB_CONTATO","2017-01-09 23:08:40","I","","ds_email==Windsor.alexandre@gmail.com;/nu_tel1==61991148026;/nu_tel2==61991452408","21","","0");

INSERT INTO tb_auditoria VALUES("134","TB_PESSOA","2017-01-09 23:08:40","I","","no_pessoa==WINDSOR ALEXANDRE DOS SANTOS SOUZA;/nu_cpf==04268513159;/nu_rg==3045945;/dt_nascimento==1993-06-06;/st_sexo==M;/dt_cadastro==2017-01-09 23:08:40;/co_endereco==21;/co_contato==21","21","","0");

INSERT INTO tb_auditoria VALUES("135","TB_INSCRICAO","2017-01-09 23:08:40","I","","co_pessoa==21;/ds_pastoral==Gej e ajuc ;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==MARIA BATISTA;/nu_tel_responsavel==6133594931","14","","0");

INSERT INTO tb_auditoria VALUES("136","TB_PAGAMENTO","2017-01-09 23:08:53","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==14","14","","0");

INSERT INTO tb_auditoria VALUES("137","TB_PAGAMENTO","2017-01-09 23:08:53","I","","co_pagamento==14;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("138","TB_ACESSO","2017-01-09 23:11:03","I","","ds_session_id==8aad519fa257c0c46a5bad4efb4d4b35;/co_usuario==2;/dt_inicio_acesso==2017-01-09 23:11:03;/dt_fim_acesso==2017-01-09 23:11:03","10","","0");

INSERT INTO tb_auditoria VALUES("139","TB_ACESSO","2017-01-09 23:16:17","I","","ds_session_id==5b38d607fafca5774e2db57c164cd773;/co_usuario==5;/dt_inicio_acesso==2017-01-09 23:16:17;/dt_fim_acesso==2017-01-09 23:16:17","11","","0");

INSERT INTO tb_auditoria VALUES("140","TB_ENDERECO","2017-01-09 23:16:35","I","","ds_endereco==Qr  603 chácara 39 casa 30 B Rua 3;/ds_complemento==Condomínio ;/ds_bairro==Samambaia;/no_cidade==Samambaia Norte;/nu_cep==72331100;/sg_uf==DF","22","","0");

INSERT INTO tb_auditoria VALUES("141","TB_CONTATO","2017-01-09 23:16:35","I","","ds_email==sirlei_arq@hotmail.com;/nu_tel1==6181214179;/nu_tel2==6184017340","22","","0");

INSERT INTO tb_auditoria VALUES("142","TB_PESSOA","2017-01-09 23:16:35","I","","no_pessoa==ISABELA ARAúJO DOS SANTOS;/nu_cpf==07128618155;/nu_rg==3694689;/dt_nascimento==2001-07-14;/st_sexo==F;/dt_cadastro==2017-01-09 23:16:35;/co_endereco==22;/co_contato==22","22","","0");

INSERT INTO tb_auditoria VALUES("143","TB_INSCRICAO","2017-01-09 23:16:35","I","","co_pessoa==22;/ds_pastoral==GEJ Dom Bosco;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==SIRLEIANE FERREIRA DOS SANTOS;/nu_tel_responsavel==6181214179","15","","0");

INSERT INTO tb_auditoria VALUES("144","TB_ACESSO","2017-01-09 23:16:46","I","","ds_session_id==b82089b79f2340ec63f119255d5f8686;/co_usuario==2;/dt_inicio_acesso==2017-01-09 23:16:46;/dt_fim_acesso==2017-01-09 23:16:46","12","","0");

INSERT INTO tb_auditoria VALUES("145","TB_PERFIL","2017-01-09 23:20:17","U","co_perfil==2;/no_perfil==Coordenador;/st_status==A","no_perfil==Coordenador","2","Master","2");

INSERT INTO tb_auditoria VALUES("146","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:36","D","co_perfil_funcionalidade==2;/co_perfil==2;/co_funcionalidade==5","","2","Master","2");

INSERT INTO tb_auditoria VALUES("147","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==1","9","Master","2");

INSERT INTO tb_auditoria VALUES("148","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==2","10","Master","2");

INSERT INTO tb_auditoria VALUES("149","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==3","11","Master","2");

INSERT INTO tb_auditoria VALUES("150","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==4","12","Master","2");

INSERT INTO tb_auditoria VALUES("151","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==5","13","Master","2");

INSERT INTO tb_auditoria VALUES("152","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==6","14","Master","2");

INSERT INTO tb_auditoria VALUES("153","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==7","15","Master","2");

INSERT INTO tb_auditoria VALUES("154","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==8","16","Master","2");

INSERT INTO tb_auditoria VALUES("155","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==9","17","Master","2");

INSERT INTO tb_auditoria VALUES("156","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==10","18","Master","2");

INSERT INTO tb_auditoria VALUES("157","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==11","19","Master","2");

INSERT INTO tb_auditoria VALUES("158","TB_PERFIL_FUNCIONALIDADE","2017-01-09 23:20:37","I","","co_perfil==2;/co_funcionalidade==12","20","Master","2");

INSERT INTO tb_auditoria VALUES("159","TB_PAGAMENTO","2017-01-09 23:20:52","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==15","15","","0");

INSERT INTO tb_auditoria VALUES("160","TB_PAGAMENTO","2017-01-09 23:20:52","I","","co_pagamento==15;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-09","","","0");

INSERT INTO tb_auditoria VALUES("161","TB_PERFIL","2017-01-09 23:21:07","U","co_perfil==4;/no_perfil==Comissão;/st_status==A","no_perfil==Comissão","4","Master","2");

INSERT INTO tb_auditoria VALUES("162","TB_PERFIL","2017-01-09 23:21:41","U","co_perfil==2;/no_perfil==Coordenador;/st_status==A","no_perfil==Coordenador","2","Master","2");

INSERT INTO tb_auditoria VALUES("163","TB_ACESSO","2017-01-09 23:22:05","I","","ds_session_id==87f20ce1239186a0a7a2d4ab94a0e3d7;/co_usuario==3;/dt_inicio_acesso==2017-01-09 23:22:05;/dt_fim_acesso==2017-01-09 23:22:05","13","","0");

INSERT INTO tb_auditoria VALUES("164","TB_ACESSO","2017-01-09 23:50:30","I","","ds_session_id==b8dbe0b4ee2e6c8cea4331c30ed36781;/co_usuario==5;/dt_inicio_acesso==2017-01-09 23:50:30;/dt_fim_acesso==2017-01-09 23:50:30","14","","0");

INSERT INTO tb_auditoria VALUES("165","TB_ENDERECO","2017-01-10 00:49:37","I","","ds_endereco==QR 405 conjunto 12 casa 08;/ds_complemento==;/ds_bairro==Samambaia;/no_cidade==Brasilia;/nu_cep==72319212;/sg_uf==DF","23","","0");

INSERT INTO tb_auditoria VALUES("166","TB_CONTATO","2017-01-10 00:49:37","I","","ds_email==Soaresbruna222@gmail.com;/nu_tel1==6199915080;/nu_tel2==","23","","0");

INSERT INTO tb_auditoria VALUES("167","TB_PESSOA","2017-01-10 00:49:37","I","","no_pessoa==BRUNA STEPHANIE LEITãO LIMA;/nu_cpf==05728945112;/nu_rg==3348331;/dt_nascimento==2000-07-03;/st_sexo==F;/dt_cadastro==2017-01-10 00:49:37;/co_endereco==23;/co_contato==23","23","","0");

INSERT INTO tb_auditoria VALUES("168","TB_INSCRICAO","2017-01-10 00:49:37","I","","co_pessoa==23;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==4;/no_responsavel==LUCELIA SOARES;/nu_tel_responsavel==6133592693","16","","0");

INSERT INTO tb_auditoria VALUES("169","TB_PAGAMENTO","2017-01-10 00:56:56","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==16","16","","0");

INSERT INTO tb_auditoria VALUES("170","TB_PAGAMENTO","2017-01-10 00:56:56","I","","co_pagamento==16;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("171","TB_ENDERECO","2017-01-10 01:34:20","I","","ds_endereco==Qr 405 conjunto13 casa13;/ds_complemento==12;/ds_bairro==Samambaia Norte ;/no_cidade==Samambaia ;/nu_cep==72319213;/sg_uf==DF","24","","0");

INSERT INTO tb_auditoria VALUES("172","TB_CONTATO","2017-01-10 01:34:20","I","","ds_email==maria_eduarda.lrg@hotmail.com;/nu_tel1==6186446915;/nu_tel2==6186446915","24","","0");

INSERT INTO tb_auditoria VALUES("173","TB_PESSOA","2017-01-10 01:34:20","I","","no_pessoa==MARIA EDUARDA LIMA ROBERTO GOMES;/nu_cpf==06047323170;/nu_rg==;/dt_nascimento==2001-04-11;/st_sexo==F;/dt_cadastro==2017-01-10 01:34:20;/co_endereco==24;/co_contato==24","24","","0");

INSERT INTO tb_auditoria VALUES("174","TB_INSCRICAO","2017-01-10 01:34:20","I","","co_pessoa==24;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==ELIENE;/nu_tel_responsavel==6134594937","17","","0");

INSERT INTO tb_auditoria VALUES("175","TB_ACESSO","2017-01-10 07:36:03","I","","ds_session_id==fbace6010fb9edefdb5c1ec423f9e4c1;/co_usuario==1;/dt_inicio_acesso==2017-01-10 07:36:03;/dt_fim_acesso==2017-01-10 07:36:03","15","","0");

INSERT INTO tb_auditoria VALUES("176","TB_ENDERECO","2017-01-10 07:57:27","I","","ds_endereco==Qr 207 conjunto 01 casa 26;/ds_complemento==;/ds_bairro==Samambaia ;/no_cidade==Samambaia Norte;/nu_cep==72341301;/sg_uf==DF","25","","0");

INSERT INTO tb_auditoria VALUES("177","TB_CONTATO","2017-01-10 07:57:27","I","","ds_email==suyane.tallita@outlook.com;/nu_tel1==61993001679;/nu_tel2==61984774148","25","","0");

INSERT INTO tb_auditoria VALUES("178","TB_PESSOA","2017-01-10 07:57:27","I","","no_pessoa==SUYANE TALLITA REIS SILVA;/nu_cpf==06352478107;/nu_rg==3460572;/dt_nascimento==1998-07-11;/st_sexo==F;/dt_cadastro==2017-01-10 07:57:27;/co_endereco==25;/co_contato==25","25","","0");

INSERT INTO tb_auditoria VALUES("179","TB_INSCRICAO","2017-01-10 07:57:27","I","","co_pessoa==25;/ds_pastoral==GEJ DOM BOSCO;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==MãE;/nu_tel_responsavel==61984774148","18","","0");

INSERT INTO tb_auditoria VALUES("180","TB_PAGAMENTO","2017-01-10 07:57:40","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==18","17","","0");

INSERT INTO tb_auditoria VALUES("181","TB_PAGAMENTO","2017-01-10 07:57:40","I","","co_pagamento==17;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("182","TB_ACESSO","2017-01-10 08:06:52","I","","ds_session_id==3d72be12e587c84e573d00917f1f762f;/co_usuario==2;/dt_inicio_acesso==2017-01-10 08:06:52;/dt_fim_acesso==2017-01-10 08:06:52","16","","0");

INSERT INTO tb_auditoria VALUES("183","TB_ENDERECO","2017-01-10 08:33:48","I","","ds_endereco==Qs 301 conj 07 apart 1005 ;/ds_complemento==Bloco A Cond. Via Tropical ;/ds_bairro==Samambaia Sul;/no_cidade==Samambaia;/nu_cep==72300543;/sg_uf==DF","26","","0");

INSERT INTO tb_auditoria VALUES("184","TB_CONTATO","2017-01-10 08:33:48","I","","ds_email==leticiapsilva03@gmail.com;/nu_tel1==61992771024;/nu_tel2==","26","","0");

INSERT INTO tb_auditoria VALUES("185","TB_PESSOA","2017-01-10 08:33:48","I","","no_pessoa==LETICIA PEREIRA DA SILVA;/nu_cpf==04321849101;/nu_rg==3002886;/dt_nascimento==1999-08-03;/st_sexo==F;/dt_cadastro==2017-01-10 08:33:48;/co_endereco==26;/co_contato==26","26","","0");

INSERT INTO tb_auditoria VALUES("186","TB_INSCRICAO","2017-01-10 08:33:48","I","","co_pessoa==26;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==JOELMA;/nu_tel_responsavel==61992419993","19","","0");

INSERT INTO tb_auditoria VALUES("187","TB_ACESSO","2017-01-10 09:44:57","I","","ds_session_id==b2e70a69527c0e660beeb587bc12c3e7;/co_usuario==5;/dt_inicio_acesso==2017-01-10 09:44:57;/dt_fim_acesso==2017-01-10 09:44:57","17","","0");

INSERT INTO tb_auditoria VALUES("188","TB_ENDERECO","2017-01-10 11:00:11","I","","ds_endereco==Qs 301 conj 07 apart 1005 ;/ds_complemento==Bloco A Cond. Via Tropical ;/ds_bairro==Samambaia Sul;/no_cidade==Samambaia;/nu_cep==72300543;/sg_uf==DF","27","","0");

INSERT INTO tb_auditoria VALUES("189","TB_CONTATO","2017-01-10 11:00:11","I","","ds_email==leticiapsilva03@gmail.com;/nu_tel1==61992771024;/nu_tel2==","27","","0");

INSERT INTO tb_auditoria VALUES("190","TB_PESSOA","2017-01-10 11:00:11","I","","no_pessoa==LETICIA PEREIRA DA SILVA;/nu_cpf==04321849101;/nu_rg==3002886;/dt_nascimento==1999-08-03;/st_sexo==F;/dt_cadastro==2017-01-10 11:00:11;/co_endereco==27;/co_contato==27","27","","0");

INSERT INTO tb_auditoria VALUES("191","TB_INSCRICAO","2017-01-10 11:00:11","I","","co_pessoa==27;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==JOELMA;/nu_tel_responsavel==61992419993","20","","0");

INSERT INTO tb_auditoria VALUES("192","TB_PAGAMENTO","2017-01-10 11:00:20","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==20","18","","0");

INSERT INTO tb_auditoria VALUES("193","TB_PAGAMENTO","2017-01-10 11:00:20","I","","co_pagamento==18;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("194","TB_ENDERECO","2017-01-10 11:20:20","I","","ds_endereco==QR 410 conjunto 4 casa 13;/ds_complemento==;/ds_bairro==Samambaia Norte;/no_cidade==Brasilia;/nu_cep==;/sg_uf==DF","28","","0");

INSERT INTO tb_auditoria VALUES("195","TB_CONTATO","2017-01-10 11:20:20","I","","ds_email==Purroosso08@gmail.com;/nu_tel1==6184152353;/nu_tel2==","28","","0");

INSERT INTO tb_auditoria VALUES("196","TB_PESSOA","2017-01-10 11:20:20","I","","no_pessoa==PEDRO HENRIQUE CARDOSO RAMOS;/nu_cpf==05778329130;/nu_rg==3679085;/dt_nascimento==2000-11-22;/st_sexo==M;/dt_cadastro==2017-01-10 11:20:20;/co_endereco==28;/co_contato==28","28","","0");

INSERT INTO tb_auditoria VALUES("197","TB_INSCRICAO","2017-01-10 11:20:20","I","","co_pessoa==28;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==CLáUDIA PATRíCIA CARDOSO RAMOS;/nu_tel_responsavel==6133587688","21","","0");

INSERT INTO tb_auditoria VALUES("198","TB_PAGAMENTO","2017-01-10 11:21:40","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==21","19","","0");

INSERT INTO tb_auditoria VALUES("199","TB_PAGAMENTO","2017-01-10 11:21:40","I","","co_pagamento==19;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("200","TB_ENDERECO","2017-01-10 12:02:16","I","","ds_endereco==Qn 211-01_35;/ds_complemento==;/ds_bairro==Samambaia;/no_cidade==Brasília;/nu_cep==;/sg_uf==DF","29","","0");

INSERT INTO tb_auditoria VALUES("201","TB_CONTATO","2017-01-10 12:02:16","I","","ds_email==Raulmiran@hotmail.com;/nu_tel1==61995121814;/nu_tel2==","29","","0");

INSERT INTO tb_auditoria VALUES("202","TB_PESSOA","2017-01-10 12:02:16","I","","no_pessoa==RAUL DIAS MIRANDA CARDOSO;/nu_cpf==06597113110;/nu_rg==3374856;/dt_nascimento==2001-04-27;/st_sexo==M;/dt_cadastro==2017-01-10 12:02:16;/co_endereco==29;/co_contato==29","29","","0");

INSERT INTO tb_auditoria VALUES("203","TB_INSCRICAO","2017-01-10 12:02:16","I","","co_pessoa==29;/ds_pastoral==GEJ Dom Bosco;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==MARIA CELIS MIRANDA DOS SANTOS;/nu_tel_responsavel==6133598257","22","","0");

INSERT INTO tb_auditoria VALUES("204","TB_PAGAMENTO","2017-01-10 12:03:32","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==22","20","","0");

INSERT INTO tb_auditoria VALUES("205","TB_PAGAMENTO","2017-01-10 12:03:32","I","","co_pagamento==20;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("206","TB_ACESSO","2017-01-10 12:06:29","I","","ds_session_id==50974d9deb80c293f36af446ec7ff8af;/co_usuario==1;/dt_inicio_acesso==2017-01-10 12:06:29;/dt_fim_acesso==2017-01-10 12:06:29","18","","0");

INSERT INTO tb_auditoria VALUES("207","TB_ENDERECO","2017-01-10 13:59:11","I","","ds_endereco==QR 429 conjunto 20 casa 15;/ds_complemento==expansão ;/ds_bairro==;/no_cidade==Samambaia Norte;/nu_cep==72329020;/sg_uf==DF","30","","0");

INSERT INTO tb_auditoria VALUES("208","TB_CONTATO","2017-01-10 13:59:11","I","","ds_email==thaysr_@hotmail.com;/nu_tel1==61991326206;/nu_tel2==6134598312","30","","0");

INSERT INTO tb_auditoria VALUES("209","TB_PESSOA","2017-01-10 13:59:11","I","","no_pessoa==THAIS RIBEIRO DOS SANTOS;/nu_cpf==01174110198;/nu_rg==3218196;/dt_nascimento==1996-10-01;/st_sexo==F;/dt_cadastro==2017-01-10 13:59:11;/co_endereco==30;/co_contato==30","30","","0");

INSERT INTO tb_auditoria VALUES("210","TB_INSCRICAO","2017-01-10 13:59:12","I","","co_pessoa==30;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==MÃE;/nu_tel_responsavel==61985641290","23","","0");

INSERT INTO tb_auditoria VALUES("211","TB_PAGAMENTO","2017-01-10 14:02:22","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==23","21","","0");

INSERT INTO tb_auditoria VALUES("212","TB_PAGAMENTO","2017-01-10 14:02:22","I","","co_pagamento==21;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("213","TB_ENDERECO","2017-01-10 14:15:43","I","","ds_endereco==Qr 421 conjunto 18 casa 04;/ds_complemento==;/ds_bairro==;/no_cidade==Samambaia norte ;/nu_cep==72325121;/sg_uf==DF","31","","0");

INSERT INTO tb_auditoria VALUES("214","TB_CONTATO","2017-01-10 14:15:43","I","","ds_email==alexandrensm10@gmail.com;/nu_tel1==61995800247;/nu_tel2==6133596322","31","","0");

INSERT INTO tb_auditoria VALUES("215","TB_PESSOA","2017-01-10 14:15:43","I","","no_pessoa==ALEXANDRE DO NASCIMENTO BARBOSA;/nu_cpf==03369852152;/nu_rg==2986217;/dt_nascimento==1994-11-07;/st_sexo==M;/dt_cadastro==2017-01-10 14:15:43;/co_endereco==31;/co_contato==31","31","","0");

INSERT INTO tb_auditoria VALUES("216","TB_INSCRICAO","2017-01-10 14:15:43","I","","co_pessoa==31;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==SILVIA;/nu_tel_responsavel==6133596322","24","","0");

INSERT INTO tb_auditoria VALUES("217","TB_PAGAMENTO","2017-01-10 14:22:29","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==24","22","","0");

INSERT INTO tb_auditoria VALUES("218","TB_PAGAMENTO","2017-01-10 14:22:29","I","","co_pagamento==22;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("219","TB_ENDERECO","2017-01-10 16:46:22","I","","ds_endereco==QR 415 CNJ 02 ;/ds_complemento==CASA 28;/ds_bairro==SAMAMBAIA;/no_cidade==DF;/nu_cep==;/sg_uf==DF","32","","0");

INSERT INTO tb_auditoria VALUES("220","TB_CONTATO","2017-01-10 16:46:22","I","","ds_email==grazielesousa972@hotmail.com;/nu_tel1==61991707767;/nu_tel2==61995975377","32","","0");

INSERT INTO tb_auditoria VALUES("221","TB_PESSOA","2017-01-10 16:46:22","I","","no_pessoa==GRAZIELE DE SOUSA NASCIMENTO;/nu_cpf==07187450192;/nu_rg==3720240;/dt_nascimento==1999-08-07;/st_sexo==F;/dt_cadastro==2017-01-10 16:46:22;/co_endereco==32;/co_contato==32","32","","0");

INSERT INTO tb_auditoria VALUES("222","TB_INSCRICAO","2017-01-10 16:46:22","I","","co_pessoa==32;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==JUSIANE MARIA DE SOUSA;/nu_tel_responsavel==61995975377","25","","0");

INSERT INTO tb_auditoria VALUES("223","TB_PAGAMENTO","2017-01-10 16:54:13","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==25","23","","0");

INSERT INTO tb_auditoria VALUES("224","TB_PAGAMENTO","2017-01-10 16:54:13","I","","co_pagamento==23;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("225","TB_ACESSO","2017-01-10 17:12:34","I","","ds_session_id==57dc548da5d5349742bd82041968ae10;/co_usuario==2;/dt_inicio_acesso==2017-01-10 17:12:34;/dt_fim_acesso==2017-01-10 17:12:34","19","","0");

INSERT INTO tb_auditoria VALUES("226","TB_PAGAMENTO","2017-01-10 17:14:16","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==25","24","","0");

INSERT INTO tb_auditoria VALUES("227","TB_PAGAMENTO","2017-01-10 17:14:16","I","","co_pagamento==24;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("228","TB_ACESSO","2017-01-10 19:08:48","I","","ds_session_id==79c403b45aa051c76996dcc14e12aa1e;/co_usuario==1;/dt_inicio_acesso==2017-01-10 19:08:48;/dt_fim_acesso==2017-01-10 19:08:48","20","","0");

INSERT INTO tb_auditoria VALUES("229","TB_PAGAMENTO","2017-01-10 19:44:04","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==14","25","","0");

INSERT INTO tb_auditoria VALUES("230","TB_PAGAMENTO","2017-01-10 19:44:04","I","","co_pagamento==25;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("231","TB_ENDERECO","2017-01-10 20:21:21","I","","ds_endereco==Qnf 08 LT 35 casa 4;/ds_complemento==fundos entrada pela qnf 06;/ds_bairro==Taguatinga Norte;/no_cidade==Taguatinga;/nu_cep==72125580;/sg_uf==DF","33","","0");

INSERT INTO tb_auditoria VALUES("232","TB_CONTATO","2017-01-10 20:21:21","I","","ds_email==thandresya-bianca@hotmail.com;/nu_tel1==61991931190;/nu_tel2==61991621818","33","","0");

INSERT INTO tb_auditoria VALUES("233","TB_PESSOA","2017-01-10 20:21:21","I","","no_pessoa==THANDRESYA BIANCA PEREIRA PINHEIRO;/nu_cpf==03925892575;/nu_rg==;/dt_nascimento==1992-07-21;/st_sexo==F;/dt_cadastro==2017-01-10 20:21:21;/co_endereco==33;/co_contato==33","33","","0");

INSERT INTO tb_auditoria VALUES("234","TB_INSCRICAO","2017-01-10 20:21:21","I","","co_pessoa==33;/ds_pastoral==Catequese;/ds_membro_ativo==S;/nu_camisa==4;/no_responsavel==NEIDE;/nu_tel_responsavel==61991621818","26","","0");

INSERT INTO tb_auditoria VALUES("235","TB_PAGAMENTO","2017-01-10 20:24:20","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==26","26","","0");

INSERT INTO tb_auditoria VALUES("236","TB_PAGAMENTO","2017-01-10 20:24:20","I","","co_pagamento==26;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("237","TB_ACESSO","2017-01-10 20:39:43","I","","ds_session_id==6b5a484c5b73772bf1e3b3f459e63165;/co_usuario==1;/dt_inicio_acesso==2017-01-10 20:39:43;/dt_fim_acesso==2017-01-10 20:39:43","21","","0");

INSERT INTO tb_auditoria VALUES("238","TB_ENDERECO","2017-01-10 20:50:17","I","","ds_endereco==Qr 205 conjunto 06 casa 08 ;/ds_complemento==;/ds_bairro==Samambaia norte;/no_cidade==Brasília ;/nu_cep==;/sg_uf==DF","34","","0");

INSERT INTO tb_auditoria VALUES("239","TB_CONTATO","2017-01-10 20:50:17","I","","ds_email==andressa110416@gmail.com;/nu_tel1==6185719753;/nu_tel2==","34","","0");

INSERT INTO tb_auditoria VALUES("240","TB_PESSOA","2017-01-10 20:50:17","I","","no_pessoa==ANDRESSA CRISTINA Dá SILVA FEITOZA;/nu_cpf==07118077100;/nu_rg==3684599;/dt_nascimento==2000-07-31;/st_sexo==F;/dt_cadastro==2017-01-10 20:50:17;/co_endereco==34;/co_contato==34","34","","0");

INSERT INTO tb_auditoria VALUES("241","TB_INSCRICAO","2017-01-10 20:50:17","I","","co_pessoa==34;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==WALDIRIA;/nu_tel_responsavel==6233593693","27","","0");

INSERT INTO tb_auditoria VALUES("242","TB_ENDERECO","2017-01-10 20:56:47","I","","ds_endereco==QR 403 CONJUNTO 07 CASA 10;/ds_complemento==10;/ds_bairro==Samambaia Norte;/no_cidade==Brasília;/nu_cep==72319108;/sg_uf==DF","35","","0");

INSERT INTO tb_auditoria VALUES("243","TB_CONTATO","2017-01-10 20:56:47","I","","ds_email==laura.baastosd@gmail.com;/nu_tel1==61984876065;/nu_tel2==","35","","0");

INSERT INTO tb_auditoria VALUES("244","TB_PESSOA","2017-01-10 20:56:47","I","","no_pessoa==LAURA BASTOS;/nu_cpf==04897673119;/nu_rg==3174535;/dt_nascimento==1995-03-28;/st_sexo==F;/dt_cadastro==2017-01-10 20:56:47;/co_endereco==35;/co_contato==35","35","","0");

INSERT INTO tb_auditoria VALUES("245","TB_INSCRICAO","2017-01-10 20:56:47","I","","co_pessoa==35;/ds_pastoral==Gej, Catequese;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==CEIçA;/nu_tel_responsavel==61984499903","28","","0");

INSERT INTO tb_auditoria VALUES("246","TB_PAGAMENTO","2017-01-10 20:57:17","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==28","27","","0");

INSERT INTO tb_auditoria VALUES("247","TB_PAGAMENTO","2017-01-10 20:57:17","I","","co_pagamento==27;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("248","TB_PAGAMENTO","2017-01-10 20:57:34","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==28","28","","0");

INSERT INTO tb_auditoria VALUES("249","TB_PAGAMENTO","2017-01-10 20:57:34","I","","co_pagamento==28;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("250","TB_ENDERECO","2017-01-10 20:57:38","I","","ds_endereco==QR 403 CONJUNTO 07 CASA 10;/ds_complemento==10;/ds_bairro==Samambaia Norte;/no_cidade==Brasília;/nu_cep==72319108;/sg_uf==DF","36","","0");

INSERT INTO tb_auditoria VALUES("251","TB_CONTATO","2017-01-10 20:57:38","I","","ds_email==laura.baastosd@gmail.com;/nu_tel1==61984876065;/nu_tel2==","36","","0");

INSERT INTO tb_auditoria VALUES("252","TB_PESSOA","2017-01-10 20:57:38","I","","no_pessoa==LAURA BASTOS;/nu_cpf==04897673119;/nu_rg==3174535;/dt_nascimento==1995-03-28;/st_sexo==F;/dt_cadastro==2017-01-10 20:57:38;/co_endereco==36;/co_contato==36","36","","0");

INSERT INTO tb_auditoria VALUES("253","TB_INSCRICAO","2017-01-10 20:57:38","I","","co_pessoa==36;/ds_pastoral==Gej, Catequese;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==CEIçA;/nu_tel_responsavel==61984499903","29","","0");

INSERT INTO tb_auditoria VALUES("254","TB_PAGAMENTO","2017-01-10 20:58:50","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==29","29","","0");

INSERT INTO tb_auditoria VALUES("255","TB_PAGAMENTO","2017-01-10 20:58:50","I","","co_pagamento==29;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("256","TB_ENDERECO","2017-01-10 21:04:40","I","","ds_endereco==QR 403 CONJUNTO 07 CASA 10;/ds_complemento==10;/ds_bairro==Samambaia Norte;/no_cidade==BrasÃ­lia;/nu_cep==72319108;/sg_uf==DF","37","","0");

INSERT INTO tb_auditoria VALUES("257","TB_CONTATO","2017-01-10 21:04:41","I","","ds_email==laura.baastosd@gmail.com;/nu_tel1==61984876065;/nu_tel2==","37","","0");

INSERT INTO tb_auditoria VALUES("258","TB_PESSOA","2017-01-10 21:04:41","I","","no_pessoa==LAURA BASTOS;/nu_cpf==04897673119;/nu_rg==3174535;/dt_nascimento==1995-03-28;/st_sexo==F;/dt_cadastro==2017-01-10 21:04:40;/co_endereco==37;/co_contato==37","37","","0");

INSERT INTO tb_auditoria VALUES("259","TB_INSCRICAO","2017-01-10 21:04:41","I","","co_pessoa==37;/ds_pastoral==Gej, Catequese;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==CEIÃ§A;/nu_tel_responsavel==61984499903","30","","0");

INSERT INTO tb_auditoria VALUES("260","TB_ENDERECO","2017-01-10 21:07:08","I","","ds_endereco==CNF 2 lote 2 aprt 102 ;/ds_complemento==Sandy norte ;/ds_bairro==Taguatinga norte ;/no_cidade==Brasília ;/nu_cep==71212525;/sg_uf==DF","38","","0");

INSERT INTO tb_auditoria VALUES("261","TB_CONTATO","2017-01-10 21:07:08","I","","ds_email==tata_sinha_18@hotmail.com;/nu_tel1==61993314057;/nu_tel2==","38","","0");

INSERT INTO tb_auditoria VALUES("262","TB_PESSOA","2017-01-10 21:07:08","I","","no_pessoa==TAíS ALMEIDA DA SILVA;/nu_cpf==04416571178;/nu_rg==;/dt_nascimento==1992-12-18;/st_sexo==F;/dt_cadastro==2017-01-10 21:07:08;/co_endereco==38;/co_contato==38","38","","0");

INSERT INTO tb_auditoria VALUES("263","TB_INSCRICAO","2017-01-10 21:07:08","I","","co_pessoa==38;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==MAE NALVA;/nu_tel_responsavel==6130263045","31","","0");

INSERT INTO tb_auditoria VALUES("264","TB_PAGAMENTO","2017-01-10 21:07:24","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==31","30","","0");

INSERT INTO tb_auditoria VALUES("265","TB_PAGAMENTO","2017-01-10 21:07:24","I","","co_pagamento==30;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("266","TB_ENDERECO","2017-01-10 21:07:52","I","","ds_endereco==Qr 212 conjunto 14;/ds_complemento==Casa 15;/ds_bairro==Samambaia ;/no_cidade==Samambaia Norte;/nu_cep==72316314;/sg_uf==DF","39","","0");

INSERT INTO tb_auditoria VALUES("267","TB_CONTATO","2017-01-10 21:07:52","I","","ds_email==thaisksm23@gmail.com;/nu_tel1==61992971837;/nu_tel2==","39","","0");

INSERT INTO tb_auditoria VALUES("268","TB_PESSOA","2017-01-10 21:07:52","I","","no_pessoa==THAIS OLIVEIRA DA COSTA MAIA;/nu_cpf==03894443162;/nu_rg==2950728;/dt_nascimento==1993-04-23;/st_sexo==F;/dt_cadastro==2017-01-10 21:07:52;/co_endereco==39;/co_contato==39","39","","0");

INSERT INTO tb_auditoria VALUES("269","TB_INSCRICAO","2017-01-10 21:07:52","I","","co_pessoa==39;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==4;/no_responsavel==IVANILDES;/nu_tel_responsavel==6134586671","32","","0");

INSERT INTO tb_auditoria VALUES("270","TB_PAGAMENTO","2017-01-10 21:08:10","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==32","31","","0");

INSERT INTO tb_auditoria VALUES("271","TB_PAGAMENTO","2017-01-10 21:08:10","I","","co_pagamento==31;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("272","TB_ENDERECO","2017-01-10 21:16:18","I","","ds_endereco==CLN 307 bloco D atpo 218 ;/ds_complemento==Comercial ;/ds_bairro==Asa Norte ;/no_cidade==Brasília ;/nu_cep==70746540;/sg_uf==DF","40","","0");

INSERT INTO tb_auditoria VALUES("273","TB_CONTATO","2017-01-10 21:16:18","I","","ds_email==Jadediasss@gmail.com;/nu_tel1==61983206157;/nu_tel2==","40","","0");

INSERT INTO tb_auditoria VALUES("274","TB_PESSOA","2017-01-10 21:16:18","I","","no_pessoa==JADE DA SILVA SANTOS;/nu_cpf==01801453128;/nu_rg==2875190;/dt_nascimento==1997-10-28;/st_sexo==F;/dt_cadastro==2017-01-10 21:16:18;/co_endereco==40;/co_contato==40","40","","0");

INSERT INTO tb_auditoria VALUES("275","TB_INSCRICAO","2017-01-10 21:16:18","I","","co_pessoa==40;/ds_pastoral==Nossa Senhora da Esperança ;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==GERALDA;/nu_tel_responsavel==61991299487","33","","0");

INSERT INTO tb_auditoria VALUES("276","TB_ENDERECO","2017-01-10 21:26:52","I","","ds_endereco==Quadra QR 413 conjunto 06 casa 23;/ds_complemento==;/ds_bairro==Samambaia;/no_cidade==Samambaia norte;/nu_cep==72321306;/sg_uf==DF","41","","0");

INSERT INTO tb_auditoria VALUES("277","TB_CONTATO","2017-01-10 21:26:52","I","","ds_email==Carolinadossantoscfds@outlook.com;/nu_tel1==61986645039;/nu_tel2==61985609412","41","","0");

INSERT INTO tb_auditoria VALUES("278","TB_PESSOA","2017-01-10 21:26:52","I","","no_pessoa==CAROLINA FRANçA DOS SANTOS;/nu_cpf==07048585170;/nu_rg==3680244;/dt_nascimento==2000-06-27;/st_sexo==F;/dt_cadastro==2017-01-10 21:26:52;/co_endereco==41;/co_contato==41","41","","0");

INSERT INTO tb_auditoria VALUES("279","TB_INSCRICAO","2017-01-10 21:26:52","I","","co_pessoa==41;/ds_pastoral==São João Evangelista;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==MARINEIDE;/nu_tel_responsavel==6133508986","34","","0");

INSERT INTO tb_auditoria VALUES("280","TB_ENDERECO","2017-01-10 21:44:34","I","","ds_endereco==Qr 209 conj 07 casa 06;/ds_complemento==06;/ds_bairro==;/no_cidade==Samambaia;/nu_cep==72141407;/sg_uf==DF","42","","0");

INSERT INTO tb_auditoria VALUES("281","TB_CONTATO","2017-01-10 21:44:34","I","","ds_email==savinhosba@gmail.com;/nu_tel1==6130835505;/nu_tel2==6194191238","42","","0");

INSERT INTO tb_auditoria VALUES("282","TB_IMAGEM","2017-01-10 21:44:34","I","","ds_caminho==savio-bispo-reis-587571e2649ef.png","8","","0");

INSERT INTO tb_auditoria VALUES("283","TB_PESSOA","2017-01-10 21:44:34","I","","no_pessoa==SáVIO BISPO REIS;/nu_cpf==07275083183;/nu_rg==;/dt_nascimento==2000-09-04;/st_sexo==M;/dt_cadastro==2017-01-10 21:44:34;/co_endereco==42;/co_contato==42","42","","0");

INSERT INTO tb_auditoria VALUES("284","TB_USUARIO","2017-01-10 21:44:34","I","","ds_senha==pio2221305maria*;/ds_code==Y0dsdk1qSXlNVE13TlcxaGNtbGhLZz09;/dt_cadastro==2017-01-10 21:44:34;/co_imagem==8;/co_pessoa==42","8","","0");

INSERT INTO tb_auditoria VALUES("285","TB_USUARIO_PERFIL","2017-01-10 21:44:34","I","","co_usuario==8;/co_perfil==3","8","","0");

INSERT INTO tb_auditoria VALUES("286","TB_ENDERECO","2017-01-10 21:46:20","I","","ds_endereco==Qr 413 conjunto 06 casa 23;/ds_complemento==;/ds_bairro==;/no_cidade==samambaia norte;/nu_cep==72321306;/sg_uf==DF","43","","0");

INSERT INTO tb_auditoria VALUES("287","TB_CONTATO","2017-01-10 21:46:20","I","","ds_email==carolinadossantoscfds@outlook.com;/nu_tel1==61986645039;/nu_tel2==61985609412","43","","0");

INSERT INTO tb_auditoria VALUES("288","TB_PESSOA","2017-01-10 21:46:20","I","","no_pessoa==CAROLINA FRANçA DOS SANTOS;/nu_cpf==07048585170;/nu_rg==;/dt_nascimento==2000-06-27;/st_sexo==F;/dt_cadastro==2017-01-10 21:46:20;/co_endereco==43;/co_contato==43","43","","0");

INSERT INTO tb_auditoria VALUES("289","TB_INSCRICAO","2017-01-10 21:46:20","I","","co_pessoa==43;/ds_pastoral==São JoãoEevangelista;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==MARINEIDE;/nu_tel_responsavel==61985609412","35","","0");

INSERT INTO tb_auditoria VALUES("290","TB_PAGAMENTO","2017-01-10 21:48:23","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==35","32","","0");

INSERT INTO tb_auditoria VALUES("291","TB_PAGAMENTO","2017-01-10 21:48:23","I","","co_pagamento==32;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("292","TB_ENDERECO","2017-01-10 22:38:46","I","","ds_endereco==Qr 205 conjunto 06 casa 08 ;/ds_complemento==;/ds_bairro==Samambaia norte;/no_cidade==Brasilia ;/nu_cep==;/sg_uf==DF","44","","0");

INSERT INTO tb_auditoria VALUES("293","TB_CONTATO","2017-01-10 22:38:46","I","","ds_email==andressa110416@gmail.com;/nu_tel1==6185719753;/nu_tel2==","44","","0");

INSERT INTO tb_auditoria VALUES("294","TB_PESSOA","2017-01-10 22:38:46","I","","no_pessoa==ANDRESSA CRISTINA Dá SILVA FEITOZA;/nu_cpf==07118077100;/nu_rg==;/dt_nascimento==2000-07-31;/st_sexo==F;/dt_cadastro==2017-01-10 22:38:46;/co_endereco==44;/co_contato==44","44","","0");

INSERT INTO tb_auditoria VALUES("295","TB_INSCRICAO","2017-01-10 22:38:46","I","","co_pessoa==44;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==WALDIRIA;/nu_tel_responsavel==6133593693","36","","0");

INSERT INTO tb_auditoria VALUES("296","TB_PAGAMENTO","2017-01-10 22:39:14","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==36","33","","0");

INSERT INTO tb_auditoria VALUES("297","TB_PAGAMENTO","2017-01-10 22:39:14","I","","co_pagamento==33;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("298","TB_ENDERECO","2017-01-10 22:41:26","I","","ds_endereco==QR 319 CONJ 04 ;/ds_complemento==Casa 19;/ds_bairro==Samambaia;/no_cidade==Samambaia Sul;/nu_cep==72309104;/sg_uf==DF","45","","0");

INSERT INTO tb_auditoria VALUES("299","TB_CONTATO","2017-01-10 22:41:26","I","","ds_email==taianesouto508@gmail.com;/nu_tel1==61981432338;/nu_tel2==61993687908","45","","0");

INSERT INTO tb_auditoria VALUES("300","TB_PESSOA","2017-01-10 22:41:26","I","","no_pessoa==TAIANE FERREIRA SOUTO;/nu_cpf==06368979151;/nu_rg==3295046;/dt_nascimento==1999-02-26;/st_sexo==F;/dt_cadastro==2017-01-10 22:41:26;/co_endereco==45;/co_contato==45","45","","0");

INSERT INTO tb_auditoria VALUES("301","TB_INSCRICAO","2017-01-10 22:41:26","I","","co_pessoa==45;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==4;/no_responsavel==MARIA DO SOCORRO;/nu_tel_responsavel==61981456696","37","","0");

INSERT INTO tb_auditoria VALUES("302","TB_PAGAMENTO","2017-01-10 22:44:29","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==37","34","","0");

INSERT INTO tb_auditoria VALUES("303","TB_PAGAMENTO","2017-01-10 22:44:29","I","","co_pagamento==34;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("304","TB_ACESSO","2017-01-10 23:02:47","I","","ds_session_id==79c241cd933e8a6b6ec3435d382f2e33;/co_usuario==2;/dt_inicio_acesso==2017-01-10 23:02:47;/dt_fim_acesso==2017-01-10 23:02:47","22","","0");

INSERT INTO tb_auditoria VALUES("305","TB_ENDERECO","2017-01-10 23:17:53","I","","ds_endereco==Qr 431 Conj 05 Casa 13;/ds_complemento==;/ds_bairro==Samambaia Norte ;/no_cidade==Samambaia ;/nu_cep==72329105;/sg_uf==DF","46","","0");

INSERT INTO tb_auditoria VALUES("306","TB_CONTATO","2017-01-10 23:17:53","I","","ds_email==max.xyxa431@gmail.com;/nu_tel1==61986744401;/nu_tel2==","46","","0");

INSERT INTO tb_auditoria VALUES("307","TB_PESSOA","2017-01-10 23:17:53","I","","no_pessoa==MAXSUEL IGOR DA SILVA RIBEIRO;/nu_cpf==05842022109;/nu_rg==3158472;/dt_nascimento==1996-04-01;/st_sexo==M;/dt_cadastro==2017-01-10 23:17:53;/co_endereco==46;/co_contato==46","46","","0");

INSERT INTO tb_auditoria VALUES("308","TB_INSCRICAO","2017-01-10 23:17:53","I","","co_pessoa==46;/ds_pastoral==Acólitos, Pastoral de Artes e Pastoral da Música ;/ds_membro_ativo==S;/nu_camisa==8;/no_responsavel==BERNADETE;/nu_tel_responsavel==61985730392","38","","0");

INSERT INTO tb_auditoria VALUES("309","TB_PAGAMENTO","2017-01-10 23:18:26","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==38","35","","0");

INSERT INTO tb_auditoria VALUES("310","TB_PAGAMENTO","2017-01-10 23:18:26","I","","co_pagamento==35;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-10","","","0");

INSERT INTO tb_auditoria VALUES("311","TB_ACESSO","2017-01-11 07:45:39","I","","ds_session_id==965399ba0e593bf5220246191cdd616e;/co_usuario==2;/dt_inicio_acesso==2017-01-11 07:45:39;/dt_fim_acesso==2017-01-11 07:45:39","23","","0");

INSERT INTO tb_auditoria VALUES("312","TB_INSCRICAO","2017-01-11 07:46:10","D","co_inscricao==20;/ds_pastoral==;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==3;/no_responsavel==JOELMA;/nu_tel_responsavel==61992419993;/ds_descricao==;/co_pessoa==27","","20","Master","2");

INSERT INTO tb_auditoria VALUES("313","TB_INSCRICAO","2017-01-11 07:46:23","D","co_inscricao==20;/ds_pastoral==;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==3;/no_responsavel==JOELMA;/nu_tel_responsavel==61992419993;/ds_descricao==;/co_pessoa==27","","20","Master","2");

INSERT INTO tb_auditoria VALUES("314","TB_ENDERECO","2017-01-11 09:36:44","I","","ds_endereco==QR 101 conj 3;/ds_complemento==Lote 3-10 torre 3 apt 611;/ds_bairro==Samambaia Sul ;/no_cidade==Taguatinga ;/nu_cep==72300505;/sg_uf==DF","47","","0");

INSERT INTO tb_auditoria VALUES("315","TB_CONTATO","2017-01-11 09:36:44","I","","ds_email==Giovana.Araujo77@icloud.com;/nu_tel1==6182767266;/nu_tel2==61982671075","47","","0");

INSERT INTO tb_auditoria VALUES("316","TB_PESSOA","2017-01-11 09:36:44","I","","no_pessoa==GIOVANA DE ARAúJO SILVA;/nu_cpf==09275164460;/nu_rg==3930988;/dt_nascimento==2001-02-08;/st_sexo==F;/dt_cadastro==2017-01-11 09:36:44;/co_endereco==47;/co_contato==47","47","","0");

INSERT INTO tb_auditoria VALUES("317","TB_INSCRICAO","2017-01-11 09:36:44","I","","co_pessoa==47;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==4;/no_responsavel==TATIANE MãE;/nu_tel_responsavel==6133331610","39","","0");

INSERT INTO tb_auditoria VALUES("318","TB_PAGAMENTO","2017-01-11 09:36:58","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==39","36","","0");

INSERT INTO tb_auditoria VALUES("319","TB_PAGAMENTO","2017-01-11 09:36:58","I","","co_pagamento==36;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-11","","","0");

INSERT INTO tb_auditoria VALUES("320","TB_PAGAMENTO","2017-01-11 09:37:57","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==39","37","","0");

INSERT INTO tb_auditoria VALUES("321","TB_PAGAMENTO","2017-01-11 09:37:57","I","","co_pagamento==37;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-11","","","0");

INSERT INTO tb_auditoria VALUES("322","TB_PAGAMENTO","2017-01-11 09:39:35","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==39","38","","0");

INSERT INTO tb_auditoria VALUES("323","TB_PAGAMENTO","2017-01-11 09:39:35","I","","co_pagamento==38;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-11","","","0");

INSERT INTO tb_auditoria VALUES("324","TB_ENDERECO","2017-01-11 09:39:45","I","","ds_endereco==QR 101 conj 3;/ds_complemento==Lote 3-10 torre 3 apt 611;/ds_bairro==Samambaia Sul ;/no_cidade==Taguatinga ;/nu_cep==72300505;/sg_uf==DF","48","","0");

INSERT INTO tb_auditoria VALUES("325","TB_CONTATO","2017-01-11 09:39:45","I","","ds_email==Giovana.Araujo77@icloud.com;/nu_tel1==6182767266;/nu_tel2==61982671075","48","","0");

INSERT INTO tb_auditoria VALUES("326","TB_PESSOA","2017-01-11 09:39:45","I","","no_pessoa==GIOVANA DE ARAúJO SILVA;/nu_cpf==09275164460;/nu_rg==3930988;/dt_nascimento==2001-02-08;/st_sexo==F;/dt_cadastro==2017-01-11 09:39:45;/co_endereco==48;/co_contato==48","48","","0");

INSERT INTO tb_auditoria VALUES("327","TB_INSCRICAO","2017-01-11 09:39:45","I","","co_pessoa==48;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==4;/no_responsavel==TATIANE MãE;/nu_tel_responsavel==6133331610","40","","0");

INSERT INTO tb_auditoria VALUES("328","TB_INSCRICAO","2017-01-11 09:47:46","D","co_inscricao==20;/ds_pastoral==;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==3;/no_responsavel==JOELMA;/nu_tel_responsavel==61992419993;/ds_descricao==;/co_pessoa==27","","20","Master","1");

INSERT INTO tb_auditoria VALUES("329","TB_ACESSO","2017-01-11 10:20:16","I","","ds_session_id==fdeb19041badd7f4887aa54b248bfc70;/co_usuario==8;/dt_inicio_acesso==2017-01-11 10:20:16;/dt_fim_acesso==2017-01-11 10:20:16","24","","0");

INSERT INTO tb_auditoria VALUES("330","TB_ENDERECO","2017-01-11 10:44:33","I","","ds_endereco==403 06 05 ;/ds_complemento==;/ds_bairro==Samambaia ;/no_cidade==Brasília ;/nu_cep==72319107;/sg_uf==DF","49","","0");

INSERT INTO tb_auditoria VALUES("331","TB_CONTATO","2017-01-11 10:44:34","I","","ds_email==Juliafernanda16@hotmail.com;/nu_tel1==61984994010;/nu_tel2==","49","","0");

INSERT INTO tb_auditoria VALUES("332","TB_PESSOA","2017-01-11 10:44:34","I","","no_pessoa==JULIA FERNANDA BRAGA DA SILVA;/nu_cpf==06556829102;/nu_rg==3510490;/dt_nascimento==1999-11-30;/st_sexo==F;/dt_cadastro==2017-01-11 10:44:33;/co_endereco==49;/co_contato==49","49","","0");

INSERT INTO tb_auditoria VALUES("333","TB_INSCRICAO","2017-01-11 10:44:34","I","","co_pessoa==49;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==MARIA JOANA;/nu_tel_responsavel==6130825058","41","","0");

INSERT INTO tb_auditoria VALUES("334","TB_PAGAMENTO","2017-01-11 10:45:58","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==41","39","","0");

INSERT INTO tb_auditoria VALUES("335","TB_PAGAMENTO","2017-01-11 10:45:58","I","","co_pagamento==39;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-11","","","0");

INSERT INTO tb_auditoria VALUES("336","TB_ENDERECO","2017-01-11 11:42:04","I","","ds_endereco==QR 609 conj 01 casa 02;/ds_complemento==;/ds_bairro==Samambaia norte ;/no_cidade==;/nu_cep==72331401;/sg_uf==DF","50","","0");

INSERT INTO tb_auditoria VALUES("337","TB_CONTATO","2017-01-11 11:42:04","I","","ds_email==Joyce.lopes@gmail.com;/nu_tel1==6193826548;/nu_tel2==","50","","0");

INSERT INTO tb_auditoria VALUES("338","TB_PESSOA","2017-01-11 11:42:04","I","","no_pessoa==JOYCE LOPES FERREIRA;/nu_cpf==04894739119;/nu_rg==3282431;/dt_nascimento==1998-10-28;/st_sexo==F;/dt_cadastro==2017-01-11 11:42:04;/co_endereco==50;/co_contato==50","50","","0");

INSERT INTO tb_auditoria VALUES("339","TB_INSCRICAO","2017-01-11 11:42:04","I","","co_pessoa==50;/ds_pastoral==Grupo de oração - rcc;/ds_membro_ativo==S;/nu_camisa==4;/no_responsavel==JANAíNA MAE;/nu_tel_responsavel==6134593241","42","","0");

INSERT INTO tb_auditoria VALUES("340","TB_PAGAMENTO","2017-01-11 11:42:34","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==42","40","","0");

INSERT INTO tb_auditoria VALUES("341","TB_PAGAMENTO","2017-01-11 11:42:34","I","","co_pagamento==40;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-11","","","0");

INSERT INTO tb_auditoria VALUES("342","TB_PAGAMENTO","2017-01-11 12:00:15","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==41","41","","0");

INSERT INTO tb_auditoria VALUES("343","TB_PAGAMENTO","2017-01-11 12:00:15","I","","co_pagamento==41;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-11","","","0");

INSERT INTO tb_auditoria VALUES("344","TB_ACESSO","2017-01-11 12:35:51","I","","ds_session_id==a252d2337196b8761b259311bb9857da;/co_usuario==3;/dt_inicio_acesso==2017-01-11 12:35:51;/dt_fim_acesso==2017-01-11 12:35:51","25","","0");

INSERT INTO tb_auditoria VALUES("345","TB_ACESSO","2017-01-11 13:01:17","I","","ds_session_id==eb8b5ca91b2ff9768d973cc8e9dd4ce6;/co_usuario==2;/dt_inicio_acesso==2017-01-11 13:01:17;/dt_fim_acesso==2017-01-11 13:01:17","26","","0");

INSERT INTO tb_auditoria VALUES("346","TB_ENDERECO","2017-01-11 13:50:30","I","","ds_endereco==Qr 407 conjunto 2 casa 6;/ds_complemento==;/ds_bairro==Samambaia Norte;/no_cidade==Brasília;/nu_cep==72321002;/sg_uf==DF","51","","0");

INSERT INTO tb_auditoria VALUES("347","TB_CONTATO","2017-01-11 13:50:30","I","","ds_email==maysapd@hotmail.com;/nu_tel1==61996681204;/nu_tel2==","51","","0");

INSERT INTO tb_auditoria VALUES("348","TB_PESSOA","2017-01-11 13:50:30","I","","no_pessoa==MAYSA PEREIRA DIAS;/nu_cpf==00792679121;/nu_rg==3161236;/dt_nascimento==1997-07-13;/st_sexo==F;/dt_cadastro==2017-01-11 13:50:30;/co_endereco==51;/co_contato==51","51","","0");

INSERT INTO tb_auditoria VALUES("349","TB_INSCRICAO","2017-01-11 13:50:30","I","","co_pessoa==51;/ds_pastoral==GEJ;/ds_membro_ativo==S;/nu_camisa==5;/no_responsavel==MARIA PEREIRA DOS S DIAS;/nu_tel_responsavel==61998438828","43","","0");

INSERT INTO tb_auditoria VALUES("350","TB_PAGAMENTO","2017-01-11 13:50:58","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==43","42","","0");

INSERT INTO tb_auditoria VALUES("351","TB_PAGAMENTO","2017-01-11 13:50:58","I","","co_pagamento==42;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-11","","","0");

INSERT INTO tb_auditoria VALUES("352","TB_ACESSO","2017-01-11 19:45:08","I","","ds_session_id==08ed042eab380f80441ed8f6f0cceccd;/co_usuario==2;/dt_inicio_acesso==2017-01-11 19:45:08;/dt_fim_acesso==2017-01-11 19:45:08","27","","0");

INSERT INTO tb_auditoria VALUES("353","TB_ENDERECO","2017-01-11 23:32:10","I","","ds_endereco==qr 310 conjunto 16 casa 18 ;/ds_complemento==samambaia sul ;/ds_bairro==avinida sul ;/no_cidade==Brasilia;/nu_cep==72307816;/sg_uf==DF","52","","0");

INSERT INTO tb_auditoria VALUES("354","TB_CONTATO","2017-01-11 23:32:10","I","","ds_email==mercia.batista@hotmail.com;/nu_tel1==61995753532;/nu_tel2==61993210925","52","","0");

INSERT INTO tb_auditoria VALUES("355","TB_PESSOA","2017-01-11 23:32:10","I","","no_pessoa==MERCIA BATISTA MIRANDA;/nu_cpf==03509067185;/nu_rg==3942300;/dt_nascimento==1994-09-17;/st_sexo==F;/dt_cadastro==2017-01-11 23:32:10;/co_endereco==52;/co_contato==52","52","","0");

INSERT INTO tb_auditoria VALUES("356","TB_INSCRICAO","2017-01-11 23:32:10","I","","co_pessoa==52;/ds_pastoral==grupo jovem e rcc ;/ds_membro_ativo==S;/nu_camisa==8;/no_responsavel==MARIA;/nu_tel_responsavel==61995073546","44","","0");

INSERT INTO tb_auditoria VALUES("357","TB_PAGAMENTO","2017-01-11 23:32:35","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==44","43","","0");

INSERT INTO tb_auditoria VALUES("358","TB_PAGAMENTO","2017-01-11 23:32:35","I","","co_pagamento==43;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-11","","","0");

INSERT INTO tb_auditoria VALUES("359","TB_ENDERECO","2017-01-11 23:37:38","I","","ds_endereco==Qr 213 Conjunto 05 Das 09;/ds_complemento==9;/ds_bairro==Samambaia;/no_cidade==Samambaia;/nu_cep==72343105;/sg_uf==DF","53","","0");

INSERT INTO tb_auditoria VALUES("360","TB_CONTATO","2017-01-11 23:37:38","I","","ds_email==Mmpriscila78@Outlook.com;/nu_tel1==6133593574;/nu_tel2==6133593574","53","","0");

INSERT INTO tb_auditoria VALUES("361","TB_PESSOA","2017-01-11 23:37:38","I","","no_pessoa==PRISCILA MARTINS MATIAS;/nu_cpf==06408735100;/nu_rg==3480397;/dt_nascimento==1999-02-03;/st_sexo==F;/dt_cadastro==2017-01-11 23:37:38;/co_endereco==53;/co_contato==53","53","","0");

INSERT INTO tb_auditoria VALUES("362","TB_INSCRICAO","2017-01-11 23:37:38","I","","co_pessoa==53;/ds_pastoral==MAST;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==RITA;/nu_tel_responsavel==6133593574","45","","0");

INSERT INTO tb_auditoria VALUES("363","TB_PAGAMENTO","2017-01-11 23:38:07","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==45","44","","0");

INSERT INTO tb_auditoria VALUES("364","TB_PAGAMENTO","2017-01-11 23:38:07","I","","co_pagamento==44;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-11","","","0");

INSERT INTO tb_auditoria VALUES("365","TB_ENDERECO","2017-01-11 23:43:47","I","","ds_endereco==Quadra 4 ;/ds_complemento==Lote 29 ;/ds_bairro==Vila Sao Luiz 1;/no_cidade==Santo Antônio do Descoberto;/nu_cep==72900860;/sg_uf==GO","54","","0");

INSERT INTO tb_auditoria VALUES("366","TB_CONTATO","2017-01-11 23:43:47","I","","ds_email==raianedemaria@gmail.com;/nu_tel1==61994135279;/nu_tel2==","54","","0");

INSERT INTO tb_auditoria VALUES("367","TB_PESSOA","2017-01-11 23:43:47","I","","no_pessoa==ARIANE FERREIRA DE SOUSA;/nu_cpf==04808278189;/nu_rg==6726739;/dt_nascimento==2000-02-14;/st_sexo==F;/dt_cadastro==2017-01-11 23:43:47;/co_endereco==54;/co_contato==54","54","","0");

INSERT INTO tb_auditoria VALUES("368","TB_INSCRICAO","2017-01-11 23:43:47","I","","co_pessoa==54;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==6;/no_responsavel==LUCRéCIA FERREIRA DA SILVA;/nu_tel_responsavel==6133946727","46","","0");

INSERT INTO tb_auditoria VALUES("369","TB_ENDERECO","2017-01-11 23:55:37","I","","ds_endereco==Cl 118 Bloco D Lote E Ap.402;/ds_complemento==Norte;/ds_bairro==Santa Maria;/no_cidade==Santa Maria;/nu_cep==72548204;/sg_uf==DF","55","","0");

INSERT INTO tb_auditoria VALUES("370","TB_CONTATO","2017-01-11 23:55:38","I","","ds_email==jeffandeg@hotmail.com;/nu_tel1==61991947670;/nu_tel2==61995745047","55","","0");

INSERT INTO tb_auditoria VALUES("371","TB_PESSOA","2017-01-11 23:55:38","I","","no_pessoa==JEFFERSON ALVES RODRIGUES;/nu_cpf==03040624300;/nu_rg==2669124;/dt_nascimento==1988-02-09;/st_sexo==M;/dt_cadastro==2017-01-11 23:55:37;/co_endereco==55;/co_contato==55","55","","0");

INSERT INTO tb_auditoria VALUES("372","TB_INSCRICAO","2017-01-11 23:55:38","I","","co_pessoa==55;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==6;/no_responsavel==JéSSICA;/nu_tel_responsavel==6133943592","47","","0");

INSERT INTO tb_auditoria VALUES("373","TB_ACESSO","2017-01-12 08:33:57","I","","ds_session_id==0e3efed4cabe5407daf60b63f63afca0;/co_usuario==2;/dt_inicio_acesso==2017-01-12 08:33:57;/dt_fim_acesso==2017-01-12 08:33:57","28","","0");

INSERT INTO tb_auditoria VALUES("374","TB_ENDERECO","2017-01-12 11:51:26","I","","ds_endereco==Qr 405 conjunto 25 casa 05;/ds_complemento==;/ds_bairro==Samambaia ;/no_cidade==Brasília ;/nu_cep==72319225;/sg_uf==DF","56","","0");

INSERT INTO tb_auditoria VALUES("375","TB_CONTATO","2017-01-12 11:51:26","I","","ds_email==kamilaf.silva@hotmail.com;/nu_tel1==61985539668;/nu_tel2==","56","","0");

INSERT INTO tb_auditoria VALUES("376","TB_PESSOA","2017-01-12 11:51:26","I","","no_pessoa==KAMILA SILVA;/nu_cpf==06244035135;/nu_rg==;/dt_nascimento==1999-01-17;/st_sexo==F;/dt_cadastro==2017-01-12 11:51:26;/co_endereco==56;/co_contato==56","56","","0");

INSERT INTO tb_auditoria VALUES("377","TB_INSCRICAO","2017-01-12 11:51:26","I","","co_pessoa==56;/ds_pastoral==GEJ;/ds_membro_ativo==S;/nu_camisa==6;/no_responsavel==MãE;/nu_tel_responsavel==6130835953","48","","0");

INSERT INTO tb_auditoria VALUES("378","TB_PAGAMENTO","2017-01-12 11:51:40","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==48","45","","0");

INSERT INTO tb_auditoria VALUES("379","TB_PAGAMENTO","2017-01-12 11:51:40","I","","co_pagamento==45;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-12","","","0");

INSERT INTO tb_auditoria VALUES("380","TB_ENDERECO","2017-01-12 11:53:08","I","","ds_endereco==qr 319 conj 04 casa 19;/ds_complemento==Samambaia Sul;/ds_bairro==Samambaia sul;/no_cidade==Brasilia df;/nu_cep==72312114;/sg_uf==DF","57","","0");

INSERT INTO tb_auditoria VALUES("381","TB_CONTATO","2017-01-12 11:53:08","I","","ds_email==pamela508@outlook.com;/nu_tel1==61982739281;/nu_tel2==61995071483","57","","0");

INSERT INTO tb_auditoria VALUES("382","TB_PESSOA","2017-01-12 11:53:08","I","","no_pessoa==PâMELA CRISTINA FERREIRA SOUTO;/nu_cpf==06501670152;/nu_rg==3297445;/dt_nascimento==1997-10-31;/st_sexo==F;/dt_cadastro==2017-01-12 11:53:08;/co_endereco==57;/co_contato==57","57","","0");

INSERT INTO tb_auditoria VALUES("383","TB_INSCRICAO","2017-01-12 11:53:08","I","","co_pessoa==57;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==4;/no_responsavel==JESSICA;/nu_tel_responsavel==61995071483","49","","0");

INSERT INTO tb_auditoria VALUES("384","TB_PAGAMENTO","2017-01-12 11:53:21","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==49","46","","0");

INSERT INTO tb_auditoria VALUES("385","TB_PAGAMENTO","2017-01-12 11:53:21","I","","co_pagamento==46;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-12","","","0");

INSERT INTO tb_auditoria VALUES("386","TB_ENDERECO","2017-01-12 12:49:11","I","","ds_endereco==Qr 401 conjunto 10 06;/ds_complemento==;/ds_bairro==Norte;/no_cidade==Brasília ;/nu_cep==72319010;/sg_uf==DF","58","","0");

INSERT INTO tb_auditoria VALUES("387","TB_CONTATO","2017-01-12 12:49:11","I","","ds_email==Vitoraraújo.m@hotmail.com;/nu_tel1==61995962749;/nu_tel2==61993723025","58","","0");

INSERT INTO tb_auditoria VALUES("388","TB_PESSOA","2017-01-12 12:49:11","I","","no_pessoa==VITOR ARAúJO MARIANO;/nu_cpf==07154102101;/nu_rg==3709322;/dt_nascimento==1999-09-06;/st_sexo==M;/dt_cadastro==2017-01-12 12:49:11;/co_endereco==58;/co_contato==58","58","","0");

INSERT INTO tb_auditoria VALUES("389","TB_INSCRICAO","2017-01-12 12:49:11","I","","co_pessoa==58;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==TERESINHA ARAúJO;/nu_tel_responsavel==61993723025","50","","0");

INSERT INTO tb_auditoria VALUES("390","TB_PAGAMENTO","2017-01-12 12:49:24","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==50","47","","0");

INSERT INTO tb_auditoria VALUES("391","TB_PAGAMENTO","2017-01-12 12:49:24","I","","co_pagamento==47;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-12","","","0");

INSERT INTO tb_auditoria VALUES("392","TB_ENDERECO","2017-01-12 13:06:59","I","","ds_endereco==QR. 204 CONJUNTO. 12;/ds_complemento==Casa 01;/ds_bairro==Norte ;/no_cidade==Samambaia ;/nu_cep==72316092;/sg_uf==DF","59","","0");

INSERT INTO tb_auditoria VALUES("393","TB_CONTATO","2017-01-12 13:06:59","I","","ds_email==Guilherme.gato401@gmail.com;/nu_tel1==61984550059;/nu_tel2==61992859045","59","","0");

INSERT INTO tb_auditoria VALUES("394","TB_PESSOA","2017-01-12 13:06:59","I","","no_pessoa==GUILHERME BALBINO DA SILVA;/nu_cpf==06945544133;/nu_rg==3419756;/dt_nascimento==2000-07-19;/st_sexo==M;/dt_cadastro==2017-01-12 13:06:59;/co_endereco==59;/co_contato==59","59","","0");

INSERT INTO tb_auditoria VALUES("395","TB_INSCRICAO","2017-01-12 13:06:59","I","","co_pessoa==59;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==PAI;/nu_tel_responsavel==61992859045","51","","0");

INSERT INTO tb_auditoria VALUES("396","TB_PAGAMENTO","2017-01-12 13:18:24","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==51","48","","0");

INSERT INTO tb_auditoria VALUES("397","TB_PAGAMENTO","2017-01-12 13:18:24","I","","co_pagamento==48;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-12","","","0");

INSERT INTO tb_auditoria VALUES("398","TB_ENDERECO","2017-01-12 13:22:52","I","","ds_endereco==QR. 204 CONJUNTO 12;/ds_complemento==CASA 16;/ds_bairro==NORTE ;/no_cidade==SAMAMBAIA ;/nu_cep==72316092;/sg_uf==DF","60","","0");

INSERT INTO tb_auditoria VALUES("399","TB_CONTATO","2017-01-12 13:22:52","I","","ds_email==amaury.ritchenzoo@gmail.com;/nu_tel1==61985540740;/nu_tel2==61991774916","60","","0");

INSERT INTO tb_auditoria VALUES("400","TB_PESSOA","2017-01-12 13:22:52","I","","no_pessoa==AMAURY COSTA SILVA RAMOS;/nu_cpf==05858600174;/nu_rg==3094934;/dt_nascimento==1996-12-17;/st_sexo==M;/dt_cadastro==2017-01-12 13:22:52;/co_endereco==60;/co_contato==60","60","","0");

INSERT INTO tb_auditoria VALUES("401","TB_INSCRICAO","2017-01-12 13:22:52","I","","co_pessoa==60;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==MÃE;/nu_tel_responsavel==61991774916","52","","0");

INSERT INTO tb_auditoria VALUES("402","TB_PAGAMENTO","2017-01-12 13:24:38","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==52","49","","0");

INSERT INTO tb_auditoria VALUES("403","TB_PAGAMENTO","2017-01-12 13:24:38","I","","co_pagamento==49;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-12","","","0");

INSERT INTO tb_auditoria VALUES("404","TB_ACESSO","2017-01-12 13:36:14","I","","ds_session_id==b4085539a81d1946b9d42b3417ea1cde;/co_usuario==2;/dt_inicio_acesso==2017-01-12 13:36:14;/dt_fim_acesso==2017-01-12 13:36:14","29","","0");

INSERT INTO tb_auditoria VALUES("405","TB_PERFIL","2017-01-12 13:46:51","U","co_perfil==2;/no_perfil==Coordenador;/st_status==A","no_perfil==Coordenador","2","Master","2");

INSERT INTO tb_auditoria VALUES("406","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","D","co_perfil_funcionalidade==9;/co_perfil==2;/co_funcionalidade==1","","9","Master","2");

INSERT INTO tb_auditoria VALUES("407","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==1","21","Master","2");

INSERT INTO tb_auditoria VALUES("408","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==2","22","Master","2");

INSERT INTO tb_auditoria VALUES("409","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==3","23","Master","2");

INSERT INTO tb_auditoria VALUES("410","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==4","24","Master","2");

INSERT INTO tb_auditoria VALUES("411","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==5","25","Master","2");

INSERT INTO tb_auditoria VALUES("412","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==6","26","Master","2");

INSERT INTO tb_auditoria VALUES("413","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==7","27","Master","2");

INSERT INTO tb_auditoria VALUES("414","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==8","28","Master","2");

INSERT INTO tb_auditoria VALUES("415","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==9","29","Master","2");

INSERT INTO tb_auditoria VALUES("416","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==10","30","Master","2");

INSERT INTO tb_auditoria VALUES("417","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==11","31","Master","2");

INSERT INTO tb_auditoria VALUES("418","TB_PERFIL_FUNCIONALIDADE","2017-01-12 13:47:08","I","","co_perfil==2;/co_funcionalidade==12","32","Master","2");

INSERT INTO tb_auditoria VALUES("419","TB_ENDERECO","2017-01-12 16:24:04","I","","ds_endereco==Qr 406 conjunto 06 casa 01;/ds_complemento==;/ds_bairro==Samambaia Norte ;/no_cidade==;/nu_cep==72318206;/sg_uf==DF","61","","0");

INSERT INTO tb_auditoria VALUES("420","TB_CONTATO","2017-01-12 16:24:04","I","","ds_email==Kamillapfrancoo@gmail.com;/nu_tel1==61984256916;/nu_tel2==","61","","0");

INSERT INTO tb_auditoria VALUES("421","TB_PESSOA","2017-01-12 16:24:04","I","","no_pessoa==KAMILLA PALOMA COSTA FRANCO;/nu_cpf==05355444130;/nu_rg==3381496;/dt_nascimento==1999-01-11;/st_sexo==F;/dt_cadastro==2017-01-12 16:24:04;/co_endereco==61;/co_contato==61","61","","0");

INSERT INTO tb_auditoria VALUES("422","TB_INSCRICAO","2017-01-12 16:24:04","I","","co_pessoa==61;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==JARDEANE COSTA DE SOUSA;/nu_tel_responsavel==6133575075","53","","0");

INSERT INTO tb_auditoria VALUES("423","TB_ENDERECO","2017-01-12 20:13:07","I","","ds_endereco==Qr 417 conjunto 04 casa 02;/ds_complemento==Na rua dá antiga Telebrasília;/ds_bairro==Samambaia norte ;/no_cidade==Brasília;/nu_cep==72323104;/sg_uf==DF","62","","0");

INSERT INTO tb_auditoria VALUES("424","TB_CONTATO","2017-01-12 20:13:07","I","","ds_email==Lauanda417@hotmail.com;/nu_tel1==61991738479;/nu_tel2==61992265563","62","","0");

INSERT INTO tb_auditoria VALUES("425","TB_PESSOA","2017-01-12 20:13:07","I","","no_pessoa==LAUANDA DE ANDRADE PEIXOTO;/nu_cpf==07267822118;/nu_rg==3300828;/dt_nascimento==2000-04-20;/st_sexo==F;/dt_cadastro==2017-01-12 20:13:07;/co_endereco==62;/co_contato==62","62","","0");

INSERT INTO tb_auditoria VALUES("426","TB_INSCRICAO","2017-01-12 20:13:07","I","","co_pessoa==62;/ds_pastoral==Grupo jovem ;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==VALéRIA BARBOSA DE ANDRADE;/nu_tel_responsavel==6133596605","54","","0");

INSERT INTO tb_auditoria VALUES("427","TB_PAGAMENTO","2017-01-12 20:13:27","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==54","50","","0");

INSERT INTO tb_auditoria VALUES("428","TB_PAGAMENTO","2017-01-12 20:13:27","I","","co_pagamento==50;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-12","","","0");

INSERT INTO tb_auditoria VALUES("429","TB_ACESSO","2017-01-12 23:08:00","I","","ds_session_id==4f7a859474884a6bb1161db9567b00d3;/co_usuario==1;/dt_inicio_acesso==2017-01-12 23:08:00;/dt_fim_acesso==2017-01-12 23:08:00","30","","0");

INSERT INTO tb_auditoria VALUES("430","TB_ENDERECO","2017-01-13 10:02:56","I","","ds_endereco==qr 403 conjunto 10 casa 28;/ds_complemento==Samambaia Norte;/ds_bairro==;/no_cidade==Brasília;/nu_cep==72319111;/sg_uf==DF","63","","0");

INSERT INTO tb_auditoria VALUES("431","TB_CONTATO","2017-01-13 10:02:56","I","","ds_email==leonardomcbessa@gmail.com;/nu_tel1==6193274991;/nu_tel2==","63","","0");

INSERT INTO tb_auditoria VALUES("432","TB_PESSOA","2017-01-13 10:02:56","I","","no_pessoa==LEONARDO BESSA;/nu_cpf==72681438187;/nu_rg==2077811;/dt_nascimento==1984-07-06;/st_sexo==M;/dt_cadastro==2017-01-13 10:02:56;/co_endereco==63;/co_contato==63","63","","0");

INSERT INTO tb_auditoria VALUES("433","TB_INSCRICAO","2017-01-13 10:02:56","I","","co_pessoa==63;/ds_pastoral==Gej;/ds_membro_ativo==S;/nu_camisa==8;/no_responsavel==JOSE ARNALDO;/nu_tel_responsavel==6186292805","55","","0");

INSERT INTO tb_auditoria VALUES("434","TB_PAGAMENTO","2017-01-13 10:03:03","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==55","51","","0");

INSERT INTO tb_auditoria VALUES("435","TB_PAGAMENTO","2017-01-13 10:03:03","I","","co_pagamento==51;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-13","","","0");

INSERT INTO tb_auditoria VALUES("436","TB_PAGAMENTO","2017-01-13 10:23:06","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==55","52","","0");

INSERT INTO tb_auditoria VALUES("437","TB_PAGAMENTO","2017-01-13 10:23:06","I","","co_pagamento==52;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-13","","","0");

INSERT INTO tb_auditoria VALUES("438","TB_PAGAMENTO","2017-01-13 10:43:09","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==55","53","","0");

INSERT INTO tb_auditoria VALUES("439","TB_PAGAMENTO","2017-01-13 10:43:10","I","","co_pagamento==53;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-13","","","0");

INSERT INTO tb_auditoria VALUES("440","TB_PAGAMENTO","2017-01-13 11:03:14","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==55","54","","0");

INSERT INTO tb_auditoria VALUES("441","TB_PAGAMENTO","2017-01-13 11:03:14","I","","co_pagamento==54;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-13","","","0");

INSERT INTO tb_auditoria VALUES("442","TB_PAGAMENTO","2017-01-13 11:23:18","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==55","55","","0");

INSERT INTO tb_auditoria VALUES("443","TB_PAGAMENTO","2017-01-13 11:23:19","I","","co_pagamento==55;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-13","","","0");

INSERT INTO tb_auditoria VALUES("444","TB_PAGAMENTO","2017-01-13 11:43:23","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==55","56","","0");

INSERT INTO tb_auditoria VALUES("445","TB_PAGAMENTO","2017-01-13 11:43:23","I","","co_pagamento==56;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-13","","","0");

INSERT INTO tb_auditoria VALUES("446","TB_PAGAMENTO","2017-01-13 12:03:28","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==55","57","","0");

INSERT INTO tb_auditoria VALUES("447","TB_PAGAMENTO","2017-01-13 12:03:28","I","","co_pagamento==57;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-13","","","0");

INSERT INTO tb_auditoria VALUES("448","TB_ENDERECO","2017-01-13 14:35:00","I","","ds_endereco==QR 412 CJ 19 S/N  C 7;/ds_complemento==;/ds_bairro==Samambaia Norte;/no_cidade==Brasilia;/nu_cep==72320122;/sg_uf==DF","64","","0");

INSERT INTO tb_auditoria VALUES("449","TB_CONTATO","2017-01-13 14:35:00","I","","ds_email==pablovital98@gmail.com;/nu_tel1==61991816222;/nu_tel2==61985540740","64","","0");

INSERT INTO tb_auditoria VALUES("450","TB_PESSOA","2017-01-13 14:35:00","I","","no_pessoa==PABLO BEZERRA SOUSA;/nu_cpf==93148704215;/nu_rg==3183260;/dt_nascimento==1998-02-15;/st_sexo==M;/dt_cadastro==2017-01-13 14:35:00;/co_endereco==64;/co_contato==64","64","","0");

INSERT INTO tb_auditoria VALUES("451","TB_INSCRICAO","2017-01-13 14:35:00","I","","co_pessoa==64;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==MãE;/nu_tel_responsavel==61995157299","56","","0");

INSERT INTO tb_auditoria VALUES("452","TB_PAGAMENTO","2017-01-13 14:35:49","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==56","58","","0");

INSERT INTO tb_auditoria VALUES("453","TB_PAGAMENTO","2017-01-13 14:35:49","I","","co_pagamento==58;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-13","","","0");

INSERT INTO tb_auditoria VALUES("454","TB_ENDERECO","2017-01-13 20:22:44","I","","ds_endereco==Qr 209 conj 07 casa 06;/ds_complemento==06;/ds_bairro==;/no_cidade==Samambaia;/nu_cep==72141407;/sg_uf==DF","65","","0");

INSERT INTO tb_auditoria VALUES("455","TB_CONTATO","2017-01-13 20:22:44","I","","ds_email==savinhosba@gmail.com;/nu_tel1==6130835505;/nu_tel2==6130835505","65","","0");

INSERT INTO tb_auditoria VALUES("456","TB_PESSOA","2017-01-13 20:22:44","I","","no_pessoa==SáVIO BISPO REIS;/nu_cpf==07275083183;/nu_rg==;/dt_nascimento==2000-09-04;/st_sexo==M;/dt_cadastro==2017-01-13 20:22:44;/co_endereco==65;/co_contato==65","65","","0");

INSERT INTO tb_auditoria VALUES("457","TB_INSCRICAO","2017-01-13 20:22:44","I","","co_pessoa==65;/ds_pastoral==Gej;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==MãE;/nu_tel_responsavel==6183012839","57","","0");

INSERT INTO tb_auditoria VALUES("458","TB_PAGAMENTO","2017-01-13 20:24:19","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==57","59","","0");

INSERT INTO tb_auditoria VALUES("459","TB_PAGAMENTO","2017-01-13 20:24:19","I","","co_pagamento==59;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-13","","","0");

INSERT INTO tb_auditoria VALUES("460","TB_ACESSO","2017-01-13 20:35:56","I","","ds_session_id==5f26d740f45241e82355c002d4e36124;/co_usuario==8;/dt_inicio_acesso==2017-01-13 20:35:56;/dt_fim_acesso==2017-01-13 20:35:56","31","","0");

INSERT INTO tb_auditoria VALUES("461","TB_ENDERECO","2017-01-14 07:50:17","I","","ds_endereco==Smse conjunto 8 lote 5;/ds_complemento==Casa 02;/ds_bairro==Samambaia sul ;/no_cidade==Samambaia;/nu_cep==72310208;/sg_uf==DF","66","","0");

INSERT INTO tb_auditoria VALUES("462","TB_CONTATO","2017-01-14 07:50:17","I","","ds_email==luucas405@gmail.com;/nu_tel1==61992855709;/nu_tel2==","66","","0");

INSERT INTO tb_auditoria VALUES("463","TB_PESSOA","2017-01-14 07:50:17","I","","no_pessoa==LUCAS ALMEIDA DE ANDRADE;/nu_cpf==04942943108;/nu_rg==3040845;/dt_nascimento==1995-07-20;/st_sexo==M;/dt_cadastro==2017-01-14 07:50:16;/co_endereco==66;/co_contato==66","66","","0");

INSERT INTO tb_auditoria VALUES("464","TB_INSCRICAO","2017-01-14 07:50:17","I","","co_pessoa==66;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ALDENIR;/nu_tel_responsavel==6133595974","58","","0");

INSERT INTO tb_auditoria VALUES("465","TB_PAGAMENTO","2017-01-14 07:50:43","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==58","60","","0");

INSERT INTO tb_auditoria VALUES("466","TB_PAGAMENTO","2017-01-14 07:50:43","I","","co_pagamento==60;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-14","","","0");

INSERT INTO tb_auditoria VALUES("467","TB_ENDERECO","2017-01-14 07:51:09","I","","ds_endereco==Qr 203 conj 03 casa 05;/ds_complemento==Casa 05;/ds_bairro==Norte ;/no_cidade==Samambaia;/nu_cep==72341103;/sg_uf==DF","67","","0");

INSERT INTO tb_auditoria VALUES("468","TB_CONTATO","2017-01-14 07:51:09","I","","ds_email==Joycemarquessantana@gmail.com;/nu_tel1==61999236423;/nu_tel2==61996423013","67","","0");

INSERT INTO tb_auditoria VALUES("469","TB_PESSOA","2017-01-14 07:51:09","I","","no_pessoa==JOYCE MARQUES SANTANA;/nu_cpf==04027231120;/nu_rg==3408815;/dt_nascimento==1998-01-07;/st_sexo==F;/dt_cadastro==2017-01-14 07:51:08;/co_endereco==67;/co_contato==67","67","","0");

INSERT INTO tb_auditoria VALUES("470","TB_INSCRICAO","2017-01-14 07:51:09","I","","co_pessoa==67;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==MáRCIA;/nu_tel_responsavel==6133584918","59","","0");

INSERT INTO tb_auditoria VALUES("471","TB_PAGAMENTO","2017-01-14 07:52:04","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==59","61","","0");

INSERT INTO tb_auditoria VALUES("472","TB_PAGAMENTO","2017-01-14 07:52:04","I","","co_pagamento==61;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-14","","","0");

INSERT INTO tb_auditoria VALUES("473","TB_ENDERECO","2017-01-14 07:55:03","I","","ds_endereco==Smse conjunto 8 lote 5;/ds_complemento==Casa 2;/ds_bairro==Samambaia sul ;/no_cidade==Samambaia;/nu_cep==72310208;/sg_uf==DF","68","","0");

INSERT INTO tb_auditoria VALUES("474","TB_CONTATO","2017-01-14 07:55:03","I","","ds_email==luucas405@gmail.com;/nu_tel1==61992855709;/nu_tel2==","68","","0");

INSERT INTO tb_auditoria VALUES("475","TB_PESSOA","2017-01-14 07:55:03","I","","no_pessoa==LUCAS ALMEIDA DE ANDRADE;/nu_cpf==04942943108;/nu_rg==3040845;/dt_nascimento==1995-07-20;/st_sexo==M;/dt_cadastro==2017-01-14 07:55:03;/co_endereco==68;/co_contato==68","68","","0");

INSERT INTO tb_auditoria VALUES("476","TB_INSCRICAO","2017-01-14 07:55:03","I","","co_pessoa==68;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ALDENIR;/nu_tel_responsavel==6133595974","60","","0");

INSERT INTO tb_auditoria VALUES("477","TB_PAGAMENTO","2017-01-14 07:57:42","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==60","62","","0");

INSERT INTO tb_auditoria VALUES("478","TB_PAGAMENTO","2017-01-14 07:57:42","I","","co_pagamento==62;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-14","","","0");

INSERT INTO tb_auditoria VALUES("479","TB_ACESSO","2017-01-14 10:06:26","I","","ds_session_id==d3e2944828c2cfb5cebd368be8a36cd7;/co_usuario==2;/dt_inicio_acesso==2017-01-14 10:06:26;/dt_fim_acesso==2017-01-14 10:06:26","32","","0");

INSERT INTO tb_auditoria VALUES("480","TB_ENDERECO","2017-01-14 10:33:20","I","","ds_endereco==Qr 205 cj 02 casa 18;/ds_complemento==De frete a igreja católica;/ds_bairro==Norte;/no_cidade==Samambaia;/nu_cep==72341202;/sg_uf==DF","69","","0");

INSERT INTO tb_auditoria VALUES("481","TB_CONTATO","2017-01-14 10:33:20","I","","ds_email==Ericastephanie2015@gmail.com;/nu_tel1==6184640608;/nu_tel2==6192953159","69","","0");

INSERT INTO tb_auditoria VALUES("482","TB_PESSOA","2017-01-14 10:33:20","I","","no_pessoa==ÉRICA STEPHANIE DE SOUSA CARVALHO;/nu_cpf==05257971143;/nu_rg==3737683;/dt_nascimento==2000-12-02;/st_sexo==F;/dt_cadastro==2017-01-14 10:33:20;/co_endereco==69;/co_contato==69","69","","0");

INSERT INTO tb_auditoria VALUES("483","TB_INSCRICAO","2017-01-14 10:33:20","I","","co_pessoa==69;/ds_pastoral==Gej dom bosco;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==SOLANGE;/nu_tel_responsavel==6192953159","61","","0");

INSERT INTO tb_auditoria VALUES("484","TB_PAGAMENTO","2017-01-14 10:33:40","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==61","63","","0");

INSERT INTO tb_auditoria VALUES("485","TB_PAGAMENTO","2017-01-14 10:33:40","I","","co_pagamento==63;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-14","","","0");

INSERT INTO tb_auditoria VALUES("486","TB_ENDERECO","2017-01-14 17:50:21","I","","ds_endereco==Qr 405 conjunto13 casa13;/ds_complemento==13;/ds_bairro==Samambaia Norte ;/no_cidade==Samambaia ;/nu_cep==72319213;/sg_uf==DF","70","","0");

INSERT INTO tb_auditoria VALUES("487","TB_CONTATO","2017-01-14 17:50:21","I","","ds_email==maria_eduarda.lrg@hotmail.com;/nu_tel1==6186446915;/nu_tel2==6186446915","70","","0");

INSERT INTO tb_auditoria VALUES("488","TB_PESSOA","2017-01-14 17:50:21","I","","no_pessoa==MARIA EDUARDA LIMA ROBERTO GOMES;/nu_cpf==06047323170;/nu_rg==;/dt_nascimento==2001-04-11;/st_sexo==F;/dt_cadastro==2017-01-14 17:50:21;/co_endereco==70;/co_contato==70","70","","0");

INSERT INTO tb_auditoria VALUES("489","TB_INSCRICAO","2017-01-14 17:50:21","I","","co_pessoa==70;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==ELIENE;/nu_tel_responsavel==6134594937","62","","0");

INSERT INTO tb_auditoria VALUES("490","TB_ENDERECO","2017-01-14 22:28:48","I","","ds_endereco==Qr 411 conjunto 3 casa 5 ;/ds_complemento==;/ds_bairro==Samambaia norte ;/no_cidade==Brasília ;/nu_cep==72321203;/sg_uf==DF","71","","0");

INSERT INTO tb_auditoria VALUES("491","TB_CONTATO","2017-01-14 22:28:48","I","","ds_email==adalbertojunior@hotmail.com;/nu_tel1==61998104291;/nu_tel2==","71","","0");

INSERT INTO tb_auditoria VALUES("492","TB_PESSOA","2017-01-14 22:28:48","I","","no_pessoa==ADALBERTO FERREIRA SOARES JúNIOR;/nu_cpf==05162621145;/nu_rg==3239703;/dt_nascimento==1995-09-04;/st_sexo==M;/dt_cadastro==2017-01-14 22:28:48;/co_endereco==71;/co_contato==71","71","","0");

INSERT INTO tb_auditoria VALUES("493","TB_INSCRICAO","2017-01-14 22:28:48","I","","co_pessoa==71;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==DALCIONE;/nu_tel_responsavel==61994225575","63","","0");

INSERT INTO tb_auditoria VALUES("494","TB_PAGAMENTO","2017-01-14 22:38:03","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==63","64","","0");

INSERT INTO tb_auditoria VALUES("495","TB_PAGAMENTO","2017-01-14 22:38:03","I","","co_pagamento==64;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-14","","","0");

INSERT INTO tb_auditoria VALUES("496","TB_ACESSO","2017-01-15 13:07:12","I","","ds_session_id==9140414f2ca16a2931a1f69743c19918;/co_usuario==2;/dt_inicio_acesso==2017-01-15 13:07:12;/dt_fim_acesso==2017-01-15 13:07:12","33","","0");

INSERT INTO tb_auditoria VALUES("497","TB_ACESSO","2017-01-15 13:25:51","I","","ds_session_id==88bf57022e0597c1b86d1309614e935f;/co_usuario==1;/dt_inicio_acesso==2017-01-15 13:25:51;/dt_fim_acesso==2017-01-15 13:25:51","34","","0");

INSERT INTO tb_auditoria VALUES("498","TB_ACESSO","2017-01-15 18:32:01","I","","ds_session_id==6dac7ec04f535b6c09e20431dfb4cb4d;/co_usuario==2;/dt_inicio_acesso==2017-01-15 18:32:01;/dt_fim_acesso==2017-01-15 18:32:01","35","","0");

INSERT INTO tb_auditoria VALUES("499","TB_ENDERECO","2017-01-15 18:47:25","I","","ds_endereco==Rua maestro joaquim de abreu N 735 Str Nordeste;/ds_complemento==Ensino.Fundamental;/ds_bairro==Setor Nordeste;/no_cidade==Formosa Go;/nu_cep==73800100;/sg_uf==GO","72","","0");

INSERT INTO tb_auditoria VALUES("500","TB_CONTATO","2017-01-15 18:47:25","I","","ds_email==Jhonyferreirafsa@hotmail.com;/nu_tel1==6198546536;/nu_tel2==6199910092","72","","0");

INSERT INTO tb_auditoria VALUES("501","TB_PESSOA","2017-01-15 18:47:25","I","","no_pessoa==JHONY FERREIRA;/nu_cpf==06622524114;/nu_rg==3440140;/dt_nascimento==1998-09-08;/st_sexo==M;/dt_cadastro==2017-01-15 18:47:25;/co_endereco==72;/co_contato==72","72","","0");

INSERT INTO tb_auditoria VALUES("502","TB_INSCRICAO","2017-01-15 18:47:25","I","","co_pessoa==72;/ds_pastoral==Santa luzia,sao Jose;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ELIA;/nu_tel_responsavel==6198546536","64","","0");

INSERT INTO tb_auditoria VALUES("503","TB_PAGAMENTO","2017-01-15 18:47:44","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==64","65","","0");

INSERT INTO tb_auditoria VALUES("504","TB_PAGAMENTO","2017-01-15 18:47:44","I","","co_pagamento==65;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-15","","","0");

INSERT INTO tb_auditoria VALUES("505","TB_ACESSO","2017-01-15 21:54:20","I","","ds_session_id==3b23564c4536f734817bf935b9cc4c6e;/co_usuario==2;/dt_inicio_acesso==2017-01-15 21:54:20;/dt_fim_acesso==2017-01-15 21:54:20","36","","0");

INSERT INTO tb_auditoria VALUES("506","TB_ACESSO","2017-01-15 22:17:20","I","","ds_session_id==46b08f7420883eea42dc89448858efb8;/co_usuario==1;/dt_inicio_acesso==2017-01-15 22:17:20;/dt_fim_acesso==2017-01-15 22:17:20","37","","0");

INSERT INTO tb_auditoria VALUES("507","TB_ACESSO","2017-01-16 00:35:09","I","","ds_session_id==f15097f36ef0f86c7c0c3c0c3acd8c9b;/co_usuario==2;/dt_inicio_acesso==2017-01-16 00:35:09;/dt_fim_acesso==2017-01-16 00:35:09","38","","0");

INSERT INTO tb_auditoria VALUES("508","TB_ENDERECO","2017-01-16 08:14:09","I","","ds_endereco==Qr 406 conjunto 06 casa 01;/ds_complemento==;/ds_bairro==;/no_cidade==Samambaia Norte ;/nu_cep==72318206;/sg_uf==DF","73","","0");

INSERT INTO tb_auditoria VALUES("509","TB_CONTATO","2017-01-16 08:14:09","I","","ds_email==Kamillapfrancoo@gmail.com;/nu_tel1==61984256915;/nu_tel2==","73","","0");

INSERT INTO tb_auditoria VALUES("510","TB_PESSOA","2017-01-16 08:14:09","I","","no_pessoa==KAMILLA PALOMA COSTA FRANCO;/nu_cpf==05355444130;/nu_rg==3381496;/dt_nascimento==1999-01-11;/st_sexo==F;/dt_cadastro==2017-01-16 08:14:09;/co_endereco==73;/co_contato==73","73","","0");

INSERT INTO tb_auditoria VALUES("511","TB_INSCRICAO","2017-01-16 08:14:09","I","","co_pessoa==73;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==JARDEANE COSTA DE SOUSA;/nu_tel_responsavel==61985872400","65","","0");

INSERT INTO tb_auditoria VALUES("512","TB_PAGAMENTO","2017-01-16 08:14:23","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==65","66","","0");

INSERT INTO tb_auditoria VALUES("513","TB_PAGAMENTO","2017-01-16 08:14:23","I","","co_pagamento==66;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-16","","","0");

INSERT INTO tb_auditoria VALUES("514","TB_ACESSO","2017-01-16 10:48:34","I","","ds_session_id==e4dc51c45d6ac57bc30527d6292c91ea;/co_usuario==2;/dt_inicio_acesso==2017-01-16 10:48:34;/dt_fim_acesso==2017-01-16 10:48:34","39","","0");

INSERT INTO tb_auditoria VALUES("515","TB_INSCRICAO","2017-01-16 10:50:09","D","co_inscricao==7;/ds_pastoral==GEJ ;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==9;/no_responsavel==ELIENE;/nu_tel_responsavel==6134594937;/ds_descricao==;/co_pessoa==11","","7","Master","2");

INSERT INTO tb_auditoria VALUES("516","TB_ACESSO","2017-01-16 12:10:00","I","","ds_session_id==73a8ba559dc345bd83adec7867acda28;/co_usuario==1;/dt_inicio_acesso==2017-01-16 12:10:00;/dt_fim_acesso==2017-01-16 12:10:00","40","","0");

INSERT INTO tb_auditoria VALUES("517","TB_ENDERECO","2017-01-16 15:04:40","I","","ds_endereco==Qnm 2 Conjunto F casa 7;/ds_complemento==;/ds_bairro==Ceilândia Norte;/no_cidade==Brasília;/nu_cep==72210026;/sg_uf==DF","74","","0");

INSERT INTO tb_auditoria VALUES("518","TB_CONTATO","2017-01-16 15:04:40","I","","ds_email==vanessavs10@gmail.com;/nu_tel1==61984461010;/nu_tel2==","74","","0");

INSERT INTO tb_auditoria VALUES("519","TB_PESSOA","2017-01-16 15:04:40","I","","no_pessoa==VANESSA VIANA DE SOUZA;/nu_cpf==00587177144;/nu_rg==;/dt_nascimento==1984-08-24;/st_sexo==F;/dt_cadastro==2017-01-16 15:04:40;/co_endereco==74;/co_contato==74","74","","0");

INSERT INTO tb_auditoria VALUES("520","TB_INSCRICAO","2017-01-16 15:04:40","I","","co_pessoa==74;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==3;/no_responsavel==MANOEL;/nu_tel_responsavel==61984042543","66","","0");

INSERT INTO tb_auditoria VALUES("521","TB_PAGAMENTO","2017-01-16 15:17:46","I","","nu_total==120.01;/nu_parcelas==1;/co_inscricao==66","67","","0");

INSERT INTO tb_auditoria VALUES("522","TB_PAGAMENTO","2017-01-16 15:17:46","I","","co_pagamento==67;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-16","","","0");

INSERT INTO tb_auditoria VALUES("523","TB_ACESSO","2017-01-16 17:14:37","I","","ds_session_id==73a8ba559dc345bd83adec7867acda28;/co_usuario==8;/dt_inicio_acesso==2017-01-16 17:14:37;/dt_fim_acesso==2017-01-16 17:14:37","41","","0");

INSERT INTO tb_auditoria VALUES("524","TB_PERFIL_FUNCIONALIDADE","2017-01-16 17:16:22","D","co_perfil_funcionalidade==21;/co_perfil==2;/co_funcionalidade==1","","21","Master","1");

INSERT INTO tb_auditoria VALUES("525","TB_PERFIL_FUNCIONALIDADE","2017-01-16 17:16:22","I","","co_perfil==2;/co_funcionalidade==5","33","Master","1");

INSERT INTO tb_auditoria VALUES("526","TB_PERFIL_FUNCIONALIDADE","2017-01-16 17:16:22","I","","co_perfil==2;/co_funcionalidade==6","34","Master","1");

INSERT INTO tb_auditoria VALUES("527","TB_PERFIL_FUNCIONALIDADE","2017-01-16 17:16:22","I","","co_perfil==2;/co_funcionalidade==12","35","Master","1");

INSERT INTO tb_auditoria VALUES("528","TB_FUNCIONALIDADE","2017-01-16 17:18:02","U","co_funcionalidade==12;/no_funcionalidade==Admin/Inscricao/ListarInscricao;/ds_rota==Listar Inscrição;/st_status==I","no_funcionalidade==Listar Inscrições;/ds_rota==Admin/Inscricao/ListarInscricao","12","Master","1");

INSERT INTO tb_auditoria VALUES("529","TB_INSCRICAO","2017-01-16 17:48:50","D","co_inscricao==60;/ds_pastoral==;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ALDENIR;/nu_tel_responsavel==6133595974;/ds_descricao==;/co_pessoa==68","","60","Master","1");

INSERT INTO tb_auditoria VALUES("530","TB_ACESSO","2017-01-16 18:24:40","I","","ds_session_id==d446f04ce562795115146e332c061b5e;/co_usuario==8;/dt_inicio_acesso==2017-01-16 18:24:40;/dt_fim_acesso==2017-01-16 18:24:40","42","","0");

INSERT INTO tb_auditoria VALUES("531","TB_ACESSO","2017-01-16 20:40:41","I","","ds_session_id==0f1dec997544e680fe4ee897068c4978;/co_usuario==2;/dt_inicio_acesso==2017-01-16 20:40:41;/dt_fim_acesso==2017-01-16 20:40:41","43","","0");

INSERT INTO tb_auditoria VALUES("532","TB_ENDERECO","2017-01-16 21:25:27","I","","ds_endereco==Quadra 429 conjunto 15 casa 10;/ds_complemento==;/ds_bairro==Samambaia ;/no_cidade==Brasília ;/nu_cep==72329015;/sg_uf==DF","75","","0");

INSERT INTO tb_auditoria VALUES("533","TB_CONTATO","2017-01-16 21:25:27","I","","ds_email==Sfather81@icloud.com;/nu_tel1==61981932359;/nu_tel2==61984676861","75","","0");

INSERT INTO tb_auditoria VALUES("534","TB_PESSOA","2017-01-16 21:25:27","I","","no_pessoa==THACIELY PRUDêNCIA;/nu_cpf==07001370177;/nu_rg==;/dt_nascimento==2000-09-24;/st_sexo==F;/dt_cadastro==2017-01-16 21:25:27;/co_endereco==75;/co_contato==75","75","","0");

INSERT INTO tb_auditoria VALUES("535","TB_INSCRICAO","2017-01-16 21:25:27","I","","co_pessoa==75;/ds_pastoral==Obra Shalom;/ds_membro_ativo==N;/nu_camisa==3;/no_responsavel==ANTONIA MARIA;/nu_tel_responsavel==61985543569","67","","0");

INSERT INTO tb_auditoria VALUES("536","TB_PAGAMENTO","2017-01-16 21:26:14","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==67","68","","0");

INSERT INTO tb_auditoria VALUES("537","TB_PARCELAMENTO","2017-01-16 21:26:14","I","","co_pagamento==68;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-16","61","","0");

INSERT INTO tb_auditoria VALUES("538","TB_ENDERECO","2017-01-16 22:37:42","I","","ds_endereco==Qr415 conj 16 casa 02;/ds_complemento==Samanbaia ;/ds_bairro==Samanbaia norte ;/no_cidade==Samanbaia norte ;/nu_cep==;/sg_uf==DF","76","","0");

INSERT INTO tb_auditoria VALUES("539","TB_CONTATO","2017-01-16 22:37:42","I","","ds_email==Moraisjessica845@gmail;/nu_tel1==62995802816;/nu_tel2==61934593599","76","","0");

INSERT INTO tb_auditoria VALUES("540","TB_PESSOA","2017-01-16 22:37:42","I","","no_pessoa==JESSICA EMANUELLE MORAIS FRANçA;/nu_cpf==07748254133;/nu_rg==3810798;/dt_nascimento==2001-12-25;/st_sexo==F;/dt_cadastro==2017-01-16 22:37:42;/co_endereco==76;/co_contato==76","76","","0");

INSERT INTO tb_auditoria VALUES("541","TB_INSCRICAO","2017-01-16 22:37:42","I","","co_pessoa==76;/ds_pastoral==Grupo de evangelização dom bosco;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==KELLY DIAS;/nu_tel_responsavel==6134593599","68","","0");

INSERT INTO tb_auditoria VALUES("542","TB_PAGAMENTO","2017-01-16 22:39:19","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==68","69","","0");

INSERT INTO tb_auditoria VALUES("543","TB_PARCELAMENTO","2017-01-16 22:39:19","I","","co_pagamento==69;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-16","62","","0");

INSERT INTO tb_auditoria VALUES("544","TB_ACESSO","2017-01-17 07:50:34","I","","ds_session_id==022d12f09c60902ff4fafd2217a1a518;/co_usuario==2;/dt_inicio_acesso==2017-01-17 07:50:34;/dt_fim_acesso==2017-01-17 07:50:34","44","","0");

INSERT INTO tb_auditoria VALUES("545","TB_ENDERECO","2017-01-17 22:54:34","I","","ds_endereco==Quadra 803 conjunto 20 casa 38;/ds_complemento==;/ds_bairro==Recanto das Emas ;/no_cidade==Recanto das Emas ;/nu_cep==72650505;/sg_uf==DF","77","","0");

INSERT INTO tb_auditoria VALUES("546","TB_CONTATO","2017-01-17 22:54:34","I","","ds_email==jeanesantana99@gmail.com;/nu_tel1==61995753807;/nu_tel2==","77","","0");

INSERT INTO tb_auditoria VALUES("547","TB_PESSOA","2017-01-17 22:54:35","I","","no_pessoa==JEANE SANTANA DE OLIVEIRA;/nu_cpf==05648669119;/nu_rg==3234660;/dt_nascimento==1997-02-26;/st_sexo==F;/dt_cadastro==2017-01-17 22:54:34;/co_endereco==77;/co_contato==77","77","","0");

INSERT INTO tb_auditoria VALUES("548","TB_INSCRICAO","2017-01-17 22:54:35","I","","co_pessoa==77;/ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==2;/no_responsavel==ADRIANA;/nu_tel_responsavel==6130817469","69","","0");

INSERT INTO tb_auditoria VALUES("549","TB_PAGAMENTO","2017-01-17 22:55:04","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==69","70","","0");

INSERT INTO tb_auditoria VALUES("550","TB_PARCELAMENTO","2017-01-17 22:55:04","I","","co_pagamento==70;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-17","63","","0");

INSERT INTO tb_auditoria VALUES("551","TB_ACESSO","2017-01-17 23:06:32","I","","ds_session_id==e5a3962c0d323633713eabb7d6c885d4;/co_usuario==2;/dt_inicio_acesso==2017-01-17 23:06:32;/dt_fim_acesso==2017-01-17 23:06:32","45","","0");

INSERT INTO tb_auditoria VALUES("552","TB_ACESSO","2017-01-18 09:03:58","I","","ds_session_id==094b7f597385295ef6a6a51fd944834e;/co_usuario==3;/dt_inicio_acesso==2017-01-18 09:03:58;/dt_fim_acesso==2017-01-18 09:03:58","46","","0");

INSERT INTO tb_auditoria VALUES("553","TB_ENDERECO","2017-01-18 10:37:59","I","","ds_endereco==QE 40 CONJUNTO F LOTE 19 APARTAMENTO 202;/ds_complemento==;/ds_bairro==Guará II;/no_cidade==Guará ;/nu_cep==71070062;/sg_uf==DF","78","","0");

INSERT INTO tb_auditoria VALUES("554","TB_CONTATO","2017-01-18 10:37:59","I","","ds_email==Soniaramaiaa@gmail.com;/nu_tel1==61999076220;/nu_tel2==61991581608","78","","0");

INSERT INTO tb_auditoria VALUES("555","TB_PESSOA","2017-01-18 10:37:59","I","","no_pessoa==SONIARA APARECIDA MENDES MAIA;/nu_cpf==04756906133;/nu_rg==2808318;/dt_nascimento==1989-12-20;/st_sexo==F;/dt_cadastro==2017-01-18 10:37:59;/co_endereco==78;/co_contato==78","78","","0");

INSERT INTO tb_auditoria VALUES("556","TB_INSCRICAO","2017-01-18 10:37:59","I","","co_pessoa==78;/ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==8;/no_responsavel==ADRIANA;/nu_tel_responsavel==61998541534","70","","0");

INSERT INTO tb_auditoria VALUES("557","TB_PAGAMENTO","2017-01-18 10:38:28","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==70","71","","0");

INSERT INTO tb_auditoria VALUES("558","TB_PARCELAMENTO","2017-01-18 10:38:28","I","","co_pagamento==71;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-18","64","","0");

INSERT INTO tb_auditoria VALUES("559","TB_ENDERECO","2017-01-18 10:41:55","I","","ds_endereco==QE 40 CONJUNTO F LOTE 19 APARTAMENTO 202;/ds_complemento==;/ds_bairro==Guará II;/no_cidade==Guará ;/nu_cep==71070062;/sg_uf==DF","79","","0");

INSERT INTO tb_auditoria VALUES("560","TB_CONTATO","2017-01-18 10:41:55","I","","ds_email==Julia.farajb@gmail.com;/nu_tel1==61981767001;/nu_tel2==61996705317","79","","0");

INSERT INTO tb_auditoria VALUES("561","TB_PESSOA","2017-01-18 10:41:55","I","","no_pessoa==JúLIA FARAJ BENN;/nu_cpf==02969348101;/nu_rg==2799971;/dt_nascimento==1997-04-04;/st_sexo==F;/dt_cadastro==2017-01-18 10:41:55;/co_endereco==79;/co_contato==79","79","","0");

INSERT INTO tb_auditoria VALUES("562","TB_INSCRICAO","2017-01-18 10:41:55","I","","co_pessoa==79;/ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==7;/no_responsavel==ADRIANA;/nu_tel_responsavel==61998541534","71","","0");

INSERT INTO tb_auditoria VALUES("563","TB_PAGAMENTO","2017-01-18 10:42:04","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==71","72","","0");

INSERT INTO tb_auditoria VALUES("564","TB_PARCELAMENTO","2017-01-18 10:42:04","I","","co_pagamento==72;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-18","65","","0");

INSERT INTO tb_auditoria VALUES("565","TB_ENDERECO","2017-01-18 13:00:58","I","","ds_endereco==QE 40 CONJUNTO B LOTE 8 APT 301;/ds_complemento==Em cima da df peças usadas;/ds_bairro==Guará 2;/no_cidade==Brasília ;/nu_cep==71070022;/sg_uf==DF","80","","0");

INSERT INTO tb_auditoria VALUES("566","TB_CONTATO","2017-01-18 13:00:58","I","","ds_email==jgeovaana@gmail.com;/nu_tel1==61982334163;/nu_tel2==","80","","0");

INSERT INTO tb_auditoria VALUES("567","TB_PESSOA","2017-01-18 13:00:59","I","","no_pessoa==JESSYK GEOVANA JUNIO SANTOS;/nu_cpf==03179152150;/nu_rg==2639507;/dt_nascimento==1996-08-14;/st_sexo==F;/dt_cadastro==2017-01-18 13:00:58;/co_endereco==80;/co_contato==80","80","","0");

INSERT INTO tb_auditoria VALUES("568","TB_INSCRICAO","2017-01-18 13:00:59","I","","co_pessoa==80;/ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==3;/no_responsavel==EDIANA;/nu_tel_responsavel==61981574421","72","","0");

INSERT INTO tb_auditoria VALUES("569","TB_PAGAMENTO","2017-01-18 13:01:17","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==72","73","","0");

INSERT INTO tb_auditoria VALUES("570","TB_PARCELAMENTO","2017-01-18 13:01:17","I","","co_pagamento==73;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-18","66","","0");

INSERT INTO tb_auditoria VALUES("571","TB_ENDERECO","2017-01-18 14:13:03","I","","ds_endereco==Quadra QR 406 Conjunto 26;/ds_complemento==27;/ds_bairro==;/no_cidade==Brasília;/nu_cep==72318228;/sg_uf==DF","81","","0");

INSERT INTO tb_auditoria VALUES("572","TB_CONTATO","2017-01-18 14:13:03","I","","ds_email==judsonnaldo@hotmail.com;/nu_tel1==61981520544;/nu_tel2==","81","","0");

INSERT INTO tb_auditoria VALUES("573","TB_PESSOA","2017-01-18 14:13:03","I","","no_pessoa==JUDSON BARBOSA GONSALVES;/nu_cpf==03620863113;/nu_rg==2494431;/dt_nascimento==1992-03-13;/st_sexo==M;/dt_cadastro==2017-01-18 14:13:03;/co_endereco==81;/co_contato==81","81","","0");

INSERT INTO tb_auditoria VALUES("574","TB_INSCRICAO","2017-01-18 14:13:03","I","","co_pessoa==81;/ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==8;/no_responsavel==MARIA BARBOSA;/nu_tel_responsavel==6133582930","73","","0");

INSERT INTO tb_auditoria VALUES("575","TB_PAGAMENTO","2017-01-18 14:15:46","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==73","74","","0");

INSERT INTO tb_auditoria VALUES("576","TB_PARCELAMENTO","2017-01-18 14:15:46","I","","co_pagamento==74;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-18","67","","0");

INSERT INTO tb_auditoria VALUES("577","TB_PAGAMENTO","2017-01-18 20:48:33","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==57","75","","0");

INSERT INTO tb_auditoria VALUES("578","TB_PARCELAMENTO","2017-01-18 20:48:33","I","","co_pagamento==75;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-18","68","","0");

INSERT INTO tb_auditoria VALUES("579","TB_ENDERECO","2017-01-19 08:30:32","I","","ds_endereco==Quadra 423 conjunto 03 casa 24;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","82","","0");

INSERT INTO tb_auditoria VALUES("580","TB_CONTATO","2017-01-19 08:30:32","I","","ds_email==karenn.geovanna@gmail.com;/nu_tel1==6195282513;/nu_tel2==","82","","0");

INSERT INTO tb_auditoria VALUES("581","TB_PESSOA","2017-01-19 08:30:32","I","","no_pessoa==KAREN GEOVANNA FIGUEREDO DOS SANTOS;/nu_cpf==06050858110;/nu_rg==;/dt_nascimento==1998-04-17;/st_sexo==F;/dt_cadastro==2017-01-19 08:30:32;/co_endereco==82;/co_contato==82","82","","0");

INSERT INTO tb_auditoria VALUES("582","TB_INSCRICAO","2017-01-19 08:30:32","I","","co_pessoa==82;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==2;/no_responsavel==DENISE;/nu_tel_responsavel==6185406715","74","","0");

INSERT INTO tb_auditoria VALUES("583","TB_PAGAMENTO","2017-01-19 08:31:26","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==74","76","","0");

INSERT INTO tb_auditoria VALUES("584","TB_PARCELAMENTO","2017-01-19 08:31:26","I","","co_pagamento==76;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-19","69","","0");

INSERT INTO tb_auditoria VALUES("585","TB_ACESSO","2017-01-19 09:53:23","I","","ds_session_id==m81t3kb97h1ojj3dctbc7fvj35;/co_usuario==1;/dt_inicio_acesso==2017-01-19 09:53:23;/dt_fim_acesso==2017-01-19 09:53:23","47","","0");

INSERT INTO tb_auditoria VALUES("586","TB_ACESSO","2017-01-19 10:52:38","I","","ds_session_id==2f9akbd4dca75i33e5vbrq7jp4;/co_usuario==1;/dt_inicio_acesso==2017-01-19 10:52:38;/dt_fim_acesso==2017-01-19 10:52:38","48","","0");

INSERT INTO tb_auditoria VALUES("587","TB_ACESSO","2017-01-19 10:53:09","I","","ds_session_id==kda6mnc40viiei9c5g7ri5sq81;/co_usuario==1;/dt_inicio_acesso==2017-01-19 10:53:09;/dt_fim_acesso==2017-01-19 10:53:09","49","","0");

INSERT INTO tb_auditoria VALUES("588","TB_ACESSO","2017-01-19 12:03:58","I","","ds_session_id==h499upp1p4eepd0pke8hgut2i0;/co_usuario==1;/dt_inicio_acesso==2017-01-19 12:03:58;/dt_fim_acesso==2017-01-19 12:03:58","50","","0");

INSERT INTO tb_auditoria VALUES("589","TB_ENDERECO","2017-01-19 16:18:50","I","","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","83","Master","1");

INSERT INTO tb_auditoria VALUES("590","TB_CONTATO","2017-01-19 16:18:50","I","","ds_email==f@g.com;/nu_tel1==23523454564;/nu_tel2==","83","Master","1");

INSERT INTO tb_auditoria VALUES("591","TB_PESSOA","2017-01-19 16:18:50","I","","no_pessoa==JOSE DANILO MEIRA NETO;/nu_cpf==12345678909;/nu_rg==;/dt_nascimento==1998-01-15;/st_sexo==M;/dt_cadastro==2017-01-19 16:18:50;/co_endereco==83;/co_contato==83","83","Master","1");

INSERT INTO tb_auditoria VALUES("592","TB_INSCRICAO","2017-01-19 16:18:50","I","","co_pessoa==83;/ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==3;/no_responsavel==JOSE ARNALDO NOVO;/nu_tel_responsavel==54546464646","75","Master","1");

INSERT INTO tb_auditoria VALUES("593","TB_PAGAMENTO","2017-01-19 16:19:40","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==75","85","Master","1");

INSERT INTO tb_auditoria VALUES("594","TB_PARCELAMENTO","2017-01-19 16:19:40","I","","co_pagamento==85;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-19","73","Master","1");

INSERT INTO tb_auditoria VALUES("595","TB_ENDERECO","2017-01-19 17:00:19","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("596","TB_CONTATO","2017-01-19 17:00:20","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("597","TB_PESSOA","2017-01-19 17:00:20","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-09 22:35:24;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:00:18","5","Master","1");

INSERT INTO tb_auditoria VALUES("598","TB_INSCRICAO","2017-01-19 17:00:20","U","co_inscricao==3;/ds_pastoral==Gej ;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==Gej ;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("599","TB_ENDERECO","2017-01-19 17:00:39","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("600","TB_CONTATO","2017-01-19 17:00:39","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("601","TB_PESSOA","2017-01-19 17:00:40","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:00:18;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:00:39","5","Master","1");

INSERT INTO tb_auditoria VALUES("602","TB_INSCRICAO","2017-01-19 17:00:40","U","co_inscricao==3;/ds_pastoral==Gej ;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==4;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("603","TB_ENDERECO","2017-01-19 17:02:03","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("604","TB_CONTATO","2017-01-19 17:02:03","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("605","TB_PESSOA","2017-01-19 17:02:03","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:00:39;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:02:03","5","Master","1");

INSERT INTO tb_auditoria VALUES("606","TB_INSCRICAO","2017-01-19 17:02:03","U","co_inscricao==3;/ds_pastoral==;/ds_retiro==;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==4;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("607","TB_ENDERECO","2017-01-19 17:03:01","I","","ds_endereco==um qualquer em aguas lindas;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","84","Master","1");

INSERT INTO tb_auditoria VALUES("608","TB_CONTATO","2017-01-19 17:03:01","I","","ds_email==danilo@mail.com;/nu_tel1==54654654654;/nu_tel2==","84","Master","1");

INSERT INTO tb_auditoria VALUES("609","TB_PESSOA","2017-01-19 17:03:01","I","","no_pessoa==WILLIAN COUTO DA SILVA;/nu_cpf==12345678909;/nu_rg==;/dt_nascimento==1990-01-09;/st_sexo==M;/dt_cadastro==2017-01-19 17:03:01;/co_endereco==84;/co_contato==84","84","Master","1");

INSERT INTO tb_auditoria VALUES("610","TB_INSCRICAO","2017-01-19 17:03:01","I","","co_pessoa==84;/ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==6;/no_responsavel==JOSE ARNALDO;/nu_tel_responsavel==43543654654","76","Master","1");

INSERT INTO tb_auditoria VALUES("611","TB_PAGAMENTO","2017-01-19 17:04:21","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==76","86","Master","1");

INSERT INTO tb_auditoria VALUES("612","TB_PARCELAMENTO","2017-01-19 17:04:21","I","","co_pagamento==86;/co_tipo_pagamento==2;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-19","74","Master","1");

INSERT INTO tb_auditoria VALUES("613","TB_ENDERECO","2017-01-19 17:04:48","I","","ds_endereco==novo endereco;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","85","Master","1");

INSERT INTO tb_auditoria VALUES("614","TB_CONTATO","2017-01-19 17:04:48","I","","ds_email==rg@fg.ocm;/nu_tel1==32532532532;/nu_tel2==","85","Master","1");

INSERT INTO tb_auditoria VALUES("615","TB_PESSOA","2017-01-19 17:04:48","I","","no_pessoa==MARIA KARLENE RAMOS LIMA;/nu_cpf==12345678909;/nu_rg==;/dt_nascimento==1998-01-21;/st_sexo==M;/dt_cadastro==2017-01-19 17:04:48;/co_endereco==85;/co_contato==85","85","Master","1");

INSERT INTO tb_auditoria VALUES("616","TB_INSCRICAO","2017-01-19 17:04:48","I","","co_pessoa==85;/ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==5;/no_responsavel==JOSE ARNALDO NOVO;/nu_tel_responsavel==23432534664","77","Master","1");

INSERT INTO tb_auditoria VALUES("617","TB_PAGAMENTO","2017-01-19 17:04:57","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==77","87","Master","1");

INSERT INTO tb_auditoria VALUES("618","TB_PARCELAMENTO","2017-01-19 17:04:57","I","","co_pagamento==87;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-19","75","Master","1");

INSERT INTO tb_auditoria VALUES("619","TB_ENDERECO","2017-01-19 17:05:02","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("620","TB_CONTATO","2017-01-19 17:05:02","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("621","TB_PESSOA","2017-01-19 17:05:02","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:02:03;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:05:02","5","Master","1");

INSERT INTO tb_auditoria VALUES("622","TB_INSCRICAO","2017-01-19 17:05:03","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("623","TB_ENDERECO","2017-01-19 17:05:13","U","co_endereco==85;/ds_endereco==novo endereco;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==novo endereco;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","85","Master","1");

INSERT INTO tb_auditoria VALUES("624","TB_CONTATO","2017-01-19 17:05:13","U","co_contato==85;/nu_tel1==32532532532;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==32532532532;/nu_tel2==","85","Master","1");

INSERT INTO tb_auditoria VALUES("625","TB_PESSOA","2017-01-19 17:05:13","U","co_pessoa==85;/nu_cpf==12345678909;/no_pessoa==MARIA KARLENE RAMOS LIMA;/nu_rg==;/dt_cadastro==2017-01-19 17:04:48;/dt_nascimento==1998-01-21;/st_sexo==M;/co_contato==85;/co_endereco==85","no_pessoa==MARIA KARLENE RAMOS LIMA;/nu_cpf==12345678909;/nu_rg==;/dt_nascimento==1998-01-21;/st_sexo==M;/dt_cadastro==2017-01-19 17:05:13","85","Master","1");

INSERT INTO tb_auditoria VALUES("626","TB_INSCRICAO","2017-01-19 17:05:13","U","co_inscricao==77;/ds_pastoral==;/ds_retiro==;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==5;/no_responsavel==JOSE ARNALDO NOVO;/nu_tel_responsavel==23432534664;/ds_descricao==;/co_pessoa==85","ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==5;/no_responsavel==JOSE ARNALDO NOVO;/nu_tel_responsavel==23432534664","77","Master","1");

INSERT INTO tb_auditoria VALUES("627","TB_ENDERECO","2017-01-19 17:05:37","U","co_endereco==85;/ds_endereco==novo endereco;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==novo endereco;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","85","Master","1");

INSERT INTO tb_auditoria VALUES("628","TB_CONTATO","2017-01-19 17:05:37","U","co_contato==85;/nu_tel1==32532532532;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==32532532532;/nu_tel2==","85","Master","1");

INSERT INTO tb_auditoria VALUES("629","TB_PESSOA","2017-01-19 17:05:37","U","co_pessoa==85;/nu_cpf==12345678909;/no_pessoa==MARIA KARLENE RAMOS LIMA;/nu_rg==;/dt_cadastro==2017-01-19 17:05:13;/dt_nascimento==1998-01-21;/st_sexo==M;/co_contato==85;/co_endereco==85","no_pessoa==MARIA KARLENE RAMOS LIMA;/nu_cpf==12345678909;/nu_rg==;/dt_nascimento==1998-01-21;/st_sexo==M;/dt_cadastro==2017-01-19 17:05:37","85","Master","1");

INSERT INTO tb_auditoria VALUES("630","TB_INSCRICAO","2017-01-19 17:05:37","U","co_inscricao==77;/ds_pastoral==;/ds_retiro==;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==5;/no_responsavel==JOSE ARNALDO NOVO;/nu_tel_responsavel==23432534664;/ds_descricao==;/co_pessoa==85","ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==5;/no_responsavel==JOSE ARNALDO NOVO;/nu_tel_responsavel==23432534664","77","Master","1");

INSERT INTO tb_auditoria VALUES("631","TB_ENDERECO","2017-01-19 17:05:45","U","co_endereco==85;/ds_endereco==novo endereco;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==novo endereco;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","85","Master","1");

INSERT INTO tb_auditoria VALUES("632","TB_CONTATO","2017-01-19 17:05:45","U","co_contato==85;/nu_tel1==32532532532;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==32532532532;/nu_tel2==","85","Master","1");

INSERT INTO tb_auditoria VALUES("633","TB_PESSOA","2017-01-19 17:05:45","U","co_pessoa==85;/nu_cpf==12345678909;/no_pessoa==MARIA KARLENE RAMOS LIMA;/nu_rg==;/dt_cadastro==2017-01-19 17:05:37;/dt_nascimento==1998-01-21;/st_sexo==M;/co_contato==85;/co_endereco==85","no_pessoa==MARIA KARLENE RAMOS LIMA;/nu_cpf==12345678909;/nu_rg==;/dt_nascimento==1998-01-21;/st_sexo==M;/dt_cadastro==2017-01-19 17:05:45","85","Master","1");

INSERT INTO tb_auditoria VALUES("634","TB_INSCRICAO","2017-01-19 17:05:46","U","co_inscricao==77;/ds_pastoral==;/ds_retiro==;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==5;/no_responsavel==JOSE ARNALDO NOVO;/nu_tel_responsavel==23432534664;/ds_descricao==;/co_pessoa==85","ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==5;/no_responsavel==JOSE ARNALDO NOVO;/nu_tel_responsavel==23432534664","77","Master","1");

INSERT INTO tb_auditoria VALUES("635","TB_ENDERECO","2017-01-19 17:05:54","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("636","TB_CONTATO","2017-01-19 17:05:54","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("637","TB_PESSOA","2017-01-19 17:05:54","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:05:02;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:05:54","5","Master","1");

INSERT INTO tb_auditoria VALUES("638","TB_INSCRICAO","2017-01-19 17:05:55","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==N;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("639","TB_ENDERECO","2017-01-19 17:06:06","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("640","TB_CONTATO","2017-01-19 17:06:06","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("641","TB_PESSOA","2017-01-19 17:06:06","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:05:54;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:06:06","5","Master","1");

INSERT INTO tb_auditoria VALUES("642","TB_INSCRICAO","2017-01-19 17:06:07","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("643","TB_ENDERECO","2017-01-19 17:08:26","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("644","TB_CONTATO","2017-01-19 17:08:26","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("645","TB_PESSOA","2017-01-19 17:08:26","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:06:06;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:08:26","5","Master","1");

INSERT INTO tb_auditoria VALUES("646","TB_INSCRICAO","2017-01-19 17:08:26","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("647","TB_ENDERECO","2017-01-19 17:08:44","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("648","TB_CONTATO","2017-01-19 17:08:45","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("649","TB_PESSOA","2017-01-19 17:08:45","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:08:26;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:08:44","5","Master","1");

INSERT INTO tb_auditoria VALUES("650","TB_INSCRICAO","2017-01-19 17:08:45","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("651","TB_ENDERECO","2017-01-19 17:09:13","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("652","TB_CONTATO","2017-01-19 17:09:13","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("653","TB_PESSOA","2017-01-19 17:09:13","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:08:44;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:09:13","5","Master","1");

INSERT INTO tb_auditoria VALUES("654","TB_INSCRICAO","2017-01-19 17:09:14","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("655","TB_ENDERECO","2017-01-19 17:09:20","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("656","TB_CONTATO","2017-01-19 17:09:21","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("657","TB_PESSOA","2017-01-19 17:09:21","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:09:13;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:09:20","5","Master","1");

INSERT INTO tb_auditoria VALUES("658","TB_INSCRICAO","2017-01-19 17:09:21","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("659","TB_ENDERECO","2017-01-19 17:10:44","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("660","TB_CONTATO","2017-01-19 17:10:44","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("661","TB_PESSOA","2017-01-19 17:10:44","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:09:20;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:10:44","5","Master","1");

INSERT INTO tb_auditoria VALUES("662","TB_INSCRICAO","2017-01-19 17:10:45","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("663","TB_ENDERECO","2017-01-19 17:11:03","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("664","TB_CONTATO","2017-01-19 17:11:03","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("665","TB_PESSOA","2017-01-19 17:11:03","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:10:44;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-19 17:11:03","5","Master","1");

INSERT INTO tb_auditoria VALUES("666","TB_INSCRICAO","2017-01-19 17:11:03","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("667","TB_PAGAMENTO","2017-01-19 17:25:00","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==77","88","Master","1");

INSERT INTO tb_auditoria VALUES("668","TB_PARCELAMENTO","2017-01-19 17:25:00","I","","co_pagamento==88;/co_tipo_pagamento==3;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-19","76","Master","1");

INSERT INTO tb_auditoria VALUES("669","TB_PAGAMENTO","2017-01-20 11:20:40","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==3","89","Master","1");

INSERT INTO tb_auditoria VALUES("670","TB_PARCELAMENTO","2017-01-20 11:20:40","I","","co_pagamento==89;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-20","77","Master","1");

INSERT INTO tb_auditoria VALUES("671","TB_PAGAMENTO","2017-01-20 11:21:41","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==3","90","Master","1");

INSERT INTO tb_auditoria VALUES("672","TB_PARCELAMENTO","2017-01-20 11:21:41","I","","co_pagamento==90;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-20","78","Master","1");

INSERT INTO tb_auditoria VALUES("673","TB_PAGAMENTO","2017-01-23 10:15:30","U","co_pagamento==90;/nu_total==120.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==3","nu_parcelas==Array","90","Master","1");

INSERT INTO tb_auditoria VALUES("674","TB_PAGAMENTO","2017-01-23 10:15:51","U","co_pagamento==90;/nu_total==120.00;/nu_valor_pago==;/nu_parcelas==0;/tp_situacao==N;/ds_observacao==;/co_inscricao==3","nu_parcelas==Array","90","Master","1");

INSERT INTO tb_auditoria VALUES("675","TB_PAGAMENTO","2017-01-23 10:16:33","U","co_pagamento==90;/nu_total==120.00;/nu_valor_pago==;/nu_parcelas==0;/tp_situacao==N;/ds_observacao==;/co_inscricao==3","nu_parcelas==3","90","Master","1");

INSERT INTO tb_auditoria VALUES("676","TB_ENDERECO","2017-01-23 10:30:19","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("677","TB_CONTATO","2017-01-23 10:30:19","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("678","TB_PESSOA","2017-01-23 10:30:19","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-19 17:11:03;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-23 10:30:19","5","Master","1");

INSERT INTO tb_auditoria VALUES("679","TB_INSCRICAO","2017-01-23 10:30:19","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==6133595806;/ds_descricao==;/st_equipe_trabalho==S;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/st_equipe_trabalho==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==61933595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("680","TB_PAGAMENTO","2017-01-23 10:30:19","U","co_pagamento==90;/nu_total==120.00;/nu_valor_pago==;/nu_parcelas==3;/tp_situacao==N;/ds_observacao==;/co_inscricao==3","nu_parcelas==3","90","Master","1");

INSERT INTO tb_auditoria VALUES("681","TB_PARCELAMENTO","2017-01-23 10:30:19","D","co_parcelamento==78;/nu_parcela==1;/nu_valor_parcela==120.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-20;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","","78","Master","1");

INSERT INTO tb_auditoria VALUES("682","TB_PARCELAMENTO","2017-01-23 10:30:20","D","co_parcelamento==79;/nu_parcela==2;/nu_valor_parcela==120.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-23;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","","79","Master","1");

INSERT INTO tb_auditoria VALUES("683","TB_PARCELAMENTO","2017-01-23 10:30:20","I","","nu_parcela==1;/nu_valor_parcela==40;/dt_vencimento==2017-01-23;/co_tipo_pagamento==1;/co_pagamento==90","80","Master","1");

INSERT INTO tb_auditoria VALUES("684","TB_PARCELAMENTO","2017-01-23 10:30:20","I","","nu_parcela==2;/nu_valor_parcela==40;/dt_vencimento==2017-01-23;/co_tipo_pagamento==1;/co_pagamento==90","81","Master","1");

INSERT INTO tb_auditoria VALUES("685","TB_PARCELAMENTO","2017-01-23 10:30:20","I","","nu_parcela==3;/nu_valor_parcela==40;/dt_vencimento==2017-01-23;/co_tipo_pagamento==1;/co_pagamento==90","82","Master","1");

INSERT INTO tb_auditoria VALUES("686","TB_ENDERECO","2017-01-23 10:31:09","U","co_endereco==9;/ds_endereco==QR 403 CONJUNTO 10 CASA 2I;/ds_complemento==28;/ds_bairro==Samambaia;/nu_cep==72319111;/no_cidade==Brasília;/sg_uf==DF","ds_endereco==QR 403 CONJUNTO 10 CASA 2I;/ds_complemento==28;/ds_bairro==Samambaia;/no_cidade==Brasília;/nu_cep==72319111;/sg_uf==DF","9","Master","1");

INSERT INTO tb_auditoria VALUES("687","TB_CONTATO","2017-01-23 10:31:09","U","co_contato==9;/nu_tel1==55619106624;/nu_tel2==55619106624;/nu_tel3==;/ds_email==lililasp@gmail.com","ds_email==lililasp@gmail.com;/nu_tel1==55619106624;/nu_tel2==55619106624","9","Master","1");

INSERT INTO tb_auditoria VALUES("688","TB_PESSOA","2017-01-23 10:31:09","U","co_pessoa==9;/nu_cpf==02351127129;/no_pessoa==LILIAN MACHADO CARVALHO BESSA;/nu_rg==2529020;/dt_cadastro==2017-01-09 22:40:04;/dt_nascimento==1988-10-31;/st_sexo==F;/co_contato==9;/co_endereco==9","no_pessoa==LILIAN MACHADO CARVALHO BESSA;/nu_cpf==02351127129;/nu_rg==2529020;/dt_nascimento==1988-10-31;/st_sexo==F;/dt_cadastro==2017-01-23 10:31:09","9","Master","1");

INSERT INTO tb_auditoria VALUES("689","TB_INSCRICAO","2017-01-23 10:31:10","U","co_inscricao==5;/ds_pastoral==;/ds_retiro==;/ds_membro_ativo==N;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==4;/no_responsavel==LETíCIA;/nu_tel_responsavel==61991066240;/ds_descricao==;/st_equipe_trabalho==N;/co_pessoa==9","ds_pastoral==;/ds_membro_ativo==N;/st_equipe_trabalho==N;/nu_camisa==4;/no_responsavel==LETíCIA;/nu_tel_responsavel==61991066240","5","Master","1");

INSERT INTO tb_auditoria VALUES("690","TB_PAGAMENTO","2017-01-23 10:31:10","U","co_pagamento==5;/nu_total==120.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==5","nu_parcelas==2","5","Master","1");

INSERT INTO tb_auditoria VALUES("691","TB_PARCELAMENTO","2017-01-23 10:31:10","D","co_parcelamento==3;/nu_parcela==1;/nu_valor_parcela==120.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-19;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==5;/co_tipo_pagamento==1","","3","Master","1");

INSERT INTO tb_auditoria VALUES("692","TB_PARCELAMENTO","2017-01-23 10:31:10","I","","nu_parcela==1;/nu_valor_parcela==60;/dt_vencimento==2017-01-23;/co_tipo_pagamento==1;/co_pagamento==5","83","Master","1");

INSERT INTO tb_auditoria VALUES("693","TB_PARCELAMENTO","2017-01-23 10:31:10","I","","nu_parcela==2;/nu_valor_parcela==60;/dt_vencimento==2017-01-23;/co_tipo_pagamento==1;/co_pagamento==5","84","Master","1");

INSERT INTO tb_auditoria VALUES("694","TB_ENDERECO","2017-01-23 11:21:15","I","","ds_endereco==ewtewtewtewtew;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","86","Master","1");

INSERT INTO tb_auditoria VALUES("695","TB_CONTATO","2017-01-23 11:21:15","I","","ds_email==danilo@mail.com;/nu_tel1==43245326233;/nu_tel2==","86","Master","1");

INSERT INTO tb_auditoria VALUES("696","TB_PESSOA","2017-01-23 11:21:15","I","","no_pessoa==JOSE DANILO MEIRA NETO;/nu_cpf==12345678909;/nu_rg==;/dt_nascimento==1999-01-18;/st_sexo==F;/dt_cadastro==2017-01-23 11:21:14;/co_endereco==86;/co_contato==86","86","Master","1");

INSERT INTO tb_auditoria VALUES("697","TB_INSCRICAO","2017-01-23 11:21:15","I","","co_pessoa==86;/ds_pastoral==;/ds_membro_ativo==S;/nu_camisa==4;/no_responsavel==JOSE ARNALDO;/nu_tel_responsavel==34235325632","78","Master","1");

INSERT INTO tb_auditoria VALUES("698","TB_PARCELAMENTO","2017-01-23 12:01:22","U","co_parcelamento==80;/nu_parcela==1;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-23;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==;/dt_vencimento_pago==;/co_tipo_pagamento==1","80","Master","1");

INSERT INTO tb_auditoria VALUES("699","TB_PAGAMENTO","2017-01-23 12:01:22","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==78","91","Master","1");

INSERT INTO tb_auditoria VALUES("700","TB_PARCELAMENTO","2017-01-23 12:01:22","I","","co_pagamento==91;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-23","85","Master","1");

INSERT INTO tb_auditoria VALUES("701","TB_PARCELAMENTO","2017-01-23 12:02:57","U","co_parcelamento==80;/nu_parcela==1;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==0.00;/dt_vencimento==2017-01-23;/dt_vencimento_pago==0000-00-00;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==0.00;/dt_vencimento_pago==;/co_tipo_pagamento==1","80","Master","1");

INSERT INTO tb_auditoria VALUES("702","TB_PARCELAMENTO","2017-01-23 12:03:49","U","co_parcelamento==80;/nu_parcela==1;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==0.00;/dt_vencimento==2017-01-23;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==0.00;/dt_vencimento_pago==;/co_tipo_pagamento==1","80","Master","1");

INSERT INTO tb_auditoria VALUES("703","TB_PARCELAMENTO","2017-01-23 12:04:38","U","co_parcelamento==80;/nu_parcela==1;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==0.00;/dt_vencimento==2017-01-23;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==;/dt_vencimento_pago==;/co_tipo_pagamento==1","80","Master","1");

INSERT INTO tb_auditoria VALUES("704","TB_ENDERECO","2017-01-23 15:22:21","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("705","TB_CONTATO","2017-01-23 15:22:22","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("706","TB_PESSOA","2017-01-23 15:22:22","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-23 10:30:19;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-23 15:22:21","5","Master","1");

INSERT INTO tb_auditoria VALUES("707","TB_INSCRICAO","2017-01-23 15:22:22","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==61933595806;/ds_descricao==;/st_equipe_trabalho==S;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/st_equipe_trabalho==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==61933595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("708","TB_PAGAMENTO","2017-01-23 15:22:22","U","co_pagamento==90;/nu_total==120.00;/nu_valor_pago==;/nu_parcelas==3;/tp_situacao==N;/ds_observacao==;/co_inscricao==3","nu_parcelas==3","90","Master","1");

INSERT INTO tb_auditoria VALUES("709","TB_PARCELAMENTO","2017-01-23 15:22:22","D","co_parcelamento==80;/nu_parcela==1;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==0.00;/dt_vencimento==2017-01-23;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","","80","Master","1");

INSERT INTO tb_auditoria VALUES("710","TB_PARCELAMENTO","2017-01-23 15:22:22","D","co_parcelamento==81;/nu_parcela==2;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-23;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","","81","Master","1");

INSERT INTO tb_auditoria VALUES("711","TB_PARCELAMENTO","2017-01-23 15:22:22","D","co_parcelamento==82;/nu_parcela==3;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-23;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","","82","Master","1");

INSERT INTO tb_auditoria VALUES("712","TB_PARCELAMENTO","2017-01-23 15:22:23","I","","nu_parcela==1;/nu_valor_parcela==40;/dt_vencimento==2017-01-23;/co_tipo_pagamento==1;/co_pagamento==90","86","Master","1");

INSERT INTO tb_auditoria VALUES("713","TB_PARCELAMENTO","2017-01-23 15:22:23","I","","nu_parcela==2;/nu_valor_parcela==40;/dt_vencimento==2017-01-23;/co_tipo_pagamento==1;/co_pagamento==90","87","Master","1");

INSERT INTO tb_auditoria VALUES("714","TB_PARCELAMENTO","2017-01-23 15:22:23","I","","nu_parcela==3;/nu_valor_parcela==40;/dt_vencimento==2017-01-23;/co_tipo_pagamento==1;/co_pagamento==90","88","Master","1");

INSERT INTO tb_auditoria VALUES("715","TB_PARCELAMENTO","2017-01-23 15:24:56","U","co_parcelamento==86;/nu_parcela==1;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-23;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==R$ 40,00;/dt_vencimento_pago==2017-01-18;/co_tipo_pagamento==3","86","Master","1");

INSERT INTO tb_auditoria VALUES("716","TB_PARCELAMENTO","2017-01-23 15:28:52","U","co_parcelamento==86;/nu_parcela==1;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==0.00;/dt_vencimento==2017-01-23;/dt_vencimento_pago==2017-01-18;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==3","nu_valor_parcela_pago==40.00;/dt_vencimento_pago==0118-17-20;/co_tipo_pagamento==1;/ds_observacao==Teste","86","Master","1");

INSERT INTO tb_auditoria VALUES("717","TB_PARCELAMENTO","2017-01-23 15:29:21","U","co_parcelamento==86;/nu_parcela==1;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==40.00;/dt_vencimento==2017-01-23;/dt_vencimento_pago==0000-00-00;/ds_observacao==Teste;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==4000.00;/dt_vencimento_pago==;/co_tipo_pagamento==1;/ds_observacao==Teste","86","Master","1");

INSERT INTO tb_auditoria VALUES("718","TB_PARCELAMENTO","2017-01-23 15:31:45","U","co_parcelamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-19;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==1;/co_tipo_pagamento==1","nu_valor_parcela_pago==1000.00;/dt_vencimento_pago==;/co_tipo_pagamento==1;/ds_observacao==","1","Master","1");

INSERT INTO tb_auditoria VALUES("719","TB_PARCELAMENTO","2017-01-23 15:32:10","U","co_parcelamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/nu_valor_parcela_pago==1000.00;/dt_vencimento==2017-01-19;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==1;/co_tipo_pagamento==1","nu_valor_parcela_pago==40.00;/dt_vencimento_pago==2017-01-03;/co_tipo_pagamento==1;/ds_observacao==So pra ver","1","Master","1");

INSERT INTO tb_auditoria VALUES("720","TB_PARCELAMENTO","2017-01-23 15:32:54","U","co_parcelamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/nu_valor_parcela_pago==40.00;/dt_vencimento==2017-01-19;/dt_vencimento_pago==2017-01-03;/ds_observacao==So pra ver;/co_pagamento==1;/co_tipo_pagamento==1","nu_valor_parcela_pago==4000.00;/dt_vencimento_pago==;/co_tipo_pagamento==1;/ds_observacao==So pra ver","1","Master","1");

INSERT INTO tb_auditoria VALUES("721","TB_PARCELAMENTO","2017-01-23 15:34:07","U","co_parcelamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/nu_valor_parcela_pago==4000.00;/dt_vencimento==2017-01-19;/dt_vencimento_pago==;/ds_observacao==So pra ver;/co_pagamento==1;/co_tipo_pagamento==1","nu_valor_parcela_pago==400000.00;/dt_vencimento_pago==;/co_tipo_pagamento==1;/ds_observacao==So pra ver","1","Master","1");

INSERT INTO tb_auditoria VALUES("722","TB_PARCELAMENTO","2017-01-23 15:34:57","U","co_parcelamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/nu_valor_parcela_pago==400000.00;/dt_vencimento==2017-01-19;/dt_vencimento_pago==;/ds_observacao==So pra ver;/co_pagamento==1;/co_tipo_pagamento==1","nu_valor_parcela_pago==40.00;/dt_vencimento_pago==;/co_tipo_pagamento==1;/ds_observacao==So pra ver","1","Master","1");

INSERT INTO tb_auditoria VALUES("723","TB_PARCELAMENTO","2017-01-23 15:41:05","U","co_parcelamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/nu_valor_parcela_pago==40.00;/dt_vencimento==2017-01-19;/dt_vencimento_pago==;/ds_observacao==So pra ver;/co_pagamento==1;/co_tipo_pagamento==1","nu_valor_parcela_pago==40.00;/dt_vencimento_pago==;/co_tipo_pagamento==1;/ds_observacao==So pra ver","1","Master","1");

INSERT INTO tb_auditoria VALUES("724","TB_PARCELAMENTO","2017-01-23 15:41:23","U","co_parcelamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/nu_valor_parcela_pago==40.00;/dt_vencimento==2017-01-19;/dt_vencimento_pago==;/ds_observacao==So pra ver;/co_pagamento==1;/co_tipo_pagamento==1","nu_valor_parcela_pago==120.00;/dt_vencimento_pago==;/co_tipo_pagamento==1;/ds_observacao==So pra ver","1","Master","1");

INSERT INTO tb_auditoria VALUES("725","TB_ENDERECO","2017-01-23 17:08:09","U","co_endereco==47;/ds_endereco==QR 101 conj 3;/ds_complemento==Lote 3-10 torre 3 apt 611;/ds_bairro==Samambaia Sul ;/nu_cep==72300505;/no_cidade==Taguatinga ;/sg_uf==DF","ds_endereco==QR 101 conj 3;/ds_complemento==Lote 3-10 torre 3 apt 611;/ds_bairro==Samambaia Sul ;/no_cidade==Taguatinga ;/nu_cep==72300505;/sg_uf==DF","47","Master","1");

INSERT INTO tb_auditoria VALUES("726","TB_CONTATO","2017-01-23 17:08:09","U","co_contato==47;/nu_tel1==6182767266;/nu_tel2==61982671075;/nu_tel3==;/ds_email==Giovana.Araujo77@icloud.com","ds_email==Giovana.Araujo77@icloud.com;/nu_tel1==61982767266;/nu_tel2==61982671075","47","Master","1");

INSERT INTO tb_auditoria VALUES("727","TB_PESSOA","2017-01-23 17:08:10","U","co_pessoa==47;/nu_cpf==09275164460;/no_pessoa==GIOVANA DE ARAúJO SILVA;/nu_rg==3930988;/dt_cadastro==2017-01-11 09:36:44;/dt_nascimento==2001-02-08;/st_sexo==F;/co_contato==47;/co_endereco==47","no_pessoa==GIOVANA DE ARAúJO SILVA;/nu_cpf==09275164460;/nu_rg==3930988;/dt_nascimento==2001-02-08;/st_sexo==F;/dt_cadastro==2017-01-23 17:08:09","47","Master","1");

INSERT INTO tb_auditoria VALUES("728","TB_INSCRICAO","2017-01-23 17:08:10","U","co_inscricao==39;/ds_pastoral==;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==4;/no_responsavel==TATIANE MãE;/nu_tel_responsavel==6133331610;/ds_descricao==;/st_equipe_trabalho==N;/co_pessoa==47","ds_pastoral==;/ds_membro_ativo==S;/st_equipe_trabalho==S;/nu_camisa==4;/no_responsavel==TATIANE MãE;/nu_tel_responsavel==61933331610","39","Master","1");

INSERT INTO tb_auditoria VALUES("729","TB_PAGAMENTO","2017-01-23 17:08:10","U","co_pagamento==36;/nu_total==120.00;/nu_valor_pago==;/nu_parcelas==1;/tp_situacao==N;/ds_observacao==;/co_inscricao==39","nu_parcelas==1","36","Master","1");

INSERT INTO tb_auditoria VALUES("730","TB_PARCELAMENTO","2017-01-23 17:08:10","D","co_parcelamento==32;/nu_parcela==1;/nu_valor_parcela==120.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-19;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==36;/co_tipo_pagamento==1","","32","Master","1");

INSERT INTO tb_auditoria VALUES("731","TB_PARCELAMENTO","2017-01-23 17:08:10","I","","nu_parcela==1;/nu_valor_parcela==120;/dt_vencimento==2017-01-23;/co_tipo_pagamento==1;/co_pagamento==36","89","Master","1");

INSERT INTO tb_auditoria VALUES("732","TB_ENDERECO","2017-01-24 15:38:06","U","co_endereco==5;/ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/nu_cep==72343103;/no_cidade==Brasília DF ;/sg_uf==DF","ds_endereco==QR 213 conjunto 03 casa 26;/ds_complemento==Casa ;/ds_bairro==Samambaia norte ;/no_cidade==Brasília DF ;/nu_cep==72343103;/sg_uf==DF","5","Master","1");

INSERT INTO tb_auditoria VALUES("733","TB_CONTATO","2017-01-24 15:38:06","U","co_contato==5;/nu_tel1==61994128935;/nu_tel2==;/nu_tel3==;/ds_email==Rafaeel19silva@gmail.com","ds_email==Rafaeel19silva@gmail.com;/nu_tel1==61994128935;/nu_tel2==","5","Master","1");

INSERT INTO tb_auditoria VALUES("734","TB_PESSOA","2017-01-24 15:38:06","U","co_pessoa==5;/nu_cpf==05229468106;/no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_rg==3020187;/dt_cadastro==2017-01-23 15:22:21;/dt_nascimento==1993-12-04;/st_sexo==M;/co_contato==5;/co_endereco==5","no_pessoa==RAFAEL SILVA DE OLIVEIRA;/nu_cpf==05229468106;/nu_rg==3020187;/dt_nascimento==1993-12-04;/st_sexo==M;/dt_cadastro==2017-01-24 15:38:04","5","Master","1");

INSERT INTO tb_auditoria VALUES("735","TB_INSCRICAO","2017-01-24 15:38:06","U","co_inscricao==3;/ds_pastoral==Do gej;/ds_retiro==;/ds_membro_ativo==S;/ds_situacao_atual_grupo==;/co_evento==0;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==61933595806;/ds_descricao==;/st_equipe_trabalho==S;/co_pessoa==5","ds_pastoral==Do gej;/ds_membro_ativo==S;/st_equipe_trabalho==S;/nu_camisa==7;/no_responsavel==ROSâNGELA MARIA;/nu_tel_responsavel==61933595806","3","Master","1");

INSERT INTO tb_auditoria VALUES("736","TB_PAGAMENTO","2017-01-24 15:38:06","U","co_pagamento==90;/nu_total==120.00;/nu_valor_pago==;/nu_parcelas==3;/tp_situacao==N;/ds_observacao==;/co_inscricao==3","nu_parcelas==2","90","Master","1");

INSERT INTO tb_auditoria VALUES("737","TB_PARCELAMENTO","2017-01-24 15:38:07","D","co_parcelamento==86;/nu_parcela==1;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==4000.00;/dt_vencimento==2017-01-23;/dt_vencimento_pago==;/ds_observacao==Teste;/co_pagamento==90;/co_tipo_pagamento==1","","86","Master","1");

INSERT INTO tb_auditoria VALUES("738","TB_PARCELAMENTO","2017-01-24 15:38:07","D","co_parcelamento==87;/nu_parcela==2;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-23;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","","87","Master","1");

INSERT INTO tb_auditoria VALUES("739","TB_PARCELAMENTO","2017-01-24 15:38:07","D","co_parcelamento==88;/nu_parcela==3;/nu_valor_parcela==40.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-23;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","","88","Master","1");

INSERT INTO tb_auditoria VALUES("740","TB_PARCELAMENTO","2017-01-24 15:38:07","I","","nu_parcela==1;/nu_valor_parcela==60;/dt_vencimento==2017-01-24;/co_tipo_pagamento==1;/co_pagamento==90","90","Master","1");

INSERT INTO tb_auditoria VALUES("741","TB_PARCELAMENTO","2017-01-24 15:38:07","I","","nu_parcela==2;/nu_valor_parcela==60;/dt_vencimento==2017-01-24;/co_tipo_pagamento==1;/co_pagamento==90","91","Master","1");

INSERT INTO tb_auditoria VALUES("742","TB_PARCELAMENTO","2017-01-24 15:38:36","U","co_parcelamento==90;/nu_parcela==1;/nu_valor_parcela==60.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-24;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==60.00;/dt_vencimento_pago==2017-01-23;/co_tipo_pagamento==1;/ds_observacao==teste","90","Master","1");

INSERT INTO tb_auditoria VALUES("743","TB_PARCELAMENTO","2017-01-24 15:42:46","U","co_parcelamento==90;/nu_parcela==1;/nu_valor_parcela==60.00;/nu_valor_parcela_pago==60.00;/dt_vencimento==2017-01-24;/dt_vencimento_pago==2017-01-23;/ds_observacao==teste;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==60.00;/dt_vencimento_pago==2017-01-23;/co_tipo_pagamento==1;/ds_observacao==teste","90","Master","1");

INSERT INTO tb_auditoria VALUES("744","TB_PARCELAMENTO","2017-01-24 15:43:01","U","co_parcelamento==90;/nu_parcela==1;/nu_valor_parcela==60.00;/nu_valor_parcela_pago==60.00;/dt_vencimento==2017-01-24;/dt_vencimento_pago==2017-01-23;/ds_observacao==teste;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==60.00;/dt_vencimento_pago==2017-01-23;/co_tipo_pagamento==1;/ds_observacao==teste","90","Master","1");

INSERT INTO tb_auditoria VALUES("745","TB_PARCELAMENTO","2017-01-24 15:44:57","U","co_parcelamento==90;/nu_parcela==1;/nu_valor_parcela==60.00;/nu_valor_parcela_pago==60.00;/dt_vencimento==2017-01-24;/dt_vencimento_pago==2017-01-23;/ds_observacao==teste;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==60.00;/dt_vencimento_pago==2017-01-23;/co_tipo_pagamento==1;/ds_observacao==teste","90","Master","1");

INSERT INTO tb_auditoria VALUES("746","TB_PARCELAMENTO","2017-01-24 15:45:54","U","co_parcelamento==90;/nu_parcela==1;/nu_valor_parcela==60.00;/nu_valor_parcela_pago==60.00;/dt_vencimento==2017-01-24;/dt_vencimento_pago==2017-01-23;/ds_observacao==teste;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==60.00;/dt_vencimento_pago==2017-01-23;/co_tipo_pagamento==1;/ds_observacao==teste","90","Master","1");

INSERT INTO tb_auditoria VALUES("747","TB_PARCELAMENTO","2017-01-24 15:46:47","U","co_parcelamento==90;/nu_parcela==1;/nu_valor_parcela==60.00;/nu_valor_parcela_pago==60.00;/dt_vencimento==2017-01-24;/dt_vencimento_pago==2017-01-23;/ds_observacao==teste;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==60.00;/dt_vencimento_pago==2017-01-23;/co_tipo_pagamento==1;/ds_observacao==teste","90","Master","1");

INSERT INTO tb_auditoria VALUES("748","TB_PARCELAMENTO","2017-01-24 15:48:51","U","co_parcelamento==90;/nu_parcela==1;/nu_valor_parcela==60.00;/nu_valor_parcela_pago==60.00;/dt_vencimento==2017-01-24;/dt_vencimento_pago==2017-01-23;/ds_observacao==teste;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==60.00;/dt_vencimento_pago==2017-01-23;/co_tipo_pagamento==1;/ds_observacao==teste","90","Master","1");

INSERT INTO tb_auditoria VALUES("749","TB_PAGAMENTO","2017-01-24 15:48:51","U","co_pagamento==90;/nu_total==120.00;/nu_valor_pago==;/nu_parcelas==2;/tp_situacao==N;/ds_observacao==;/co_inscricao==3","tp_situacao==I","90","Master","1");

INSERT INTO tb_auditoria VALUES("750","TB_PARCELAMENTO","2017-01-24 15:49:13","U","co_parcelamento==91;/nu_parcela==2;/nu_valor_parcela==60.00;/nu_valor_parcela_pago==;/dt_vencimento==2017-01-24;/dt_vencimento_pago==;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==50.00;/dt_vencimento_pago==2017-01-17;/co_tipo_pagamento==1;/ds_observacao==","91","Master","1");

INSERT INTO tb_auditoria VALUES("751","TB_PAGAMENTO","2017-01-24 15:49:13","U","co_pagamento==90;/nu_total==120.00;/nu_valor_pago==;/nu_parcelas==2;/tp_situacao==I;/ds_observacao==;/co_inscricao==3","tp_situacao==I","90","Master","1");

INSERT INTO tb_auditoria VALUES("752","TB_PARCELAMENTO","2017-01-24 15:49:25","U","co_parcelamento==91;/nu_parcela==2;/nu_valor_parcela==60.00;/nu_valor_parcela_pago==50.00;/dt_vencimento==2017-01-24;/dt_vencimento_pago==2017-01-17;/ds_observacao==;/co_pagamento==90;/co_tipo_pagamento==1","nu_valor_parcela_pago==60.00;/dt_vencimento_pago==2017-01-17;/co_tipo_pagamento==1;/ds_observacao==","91","Master","1");

INSERT INTO tb_auditoria VALUES("753","TB_PAGAMENTO","2017-01-24 15:49:25","U","co_pagamento==90;/nu_total==120.00;/nu_valor_pago==;/nu_parcelas==2;/tp_situacao==I;/ds_observacao==;/co_inscricao==3","tp_situacao==C","90","Master","1");

INSERT INTO tb_auditoria VALUES("754","TB_ENDERECO","2017-01-24 16:08:58","I","","ds_endereco==ewtewtewtewtew;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","87","Master","1");

INSERT INTO tb_auditoria VALUES("755","TB_CONTATO","2017-01-24 16:08:58","I","","ds_email==maria@gmail.com;/nu_tel1==43215532632;/nu_tel2==","87","Master","1");

INSERT INTO tb_auditoria VALUES("756","TB_PESSOA","2017-01-24 16:08:58","I","","no_pessoa==JOSE DANILO MEIRA NETO;/nu_cpf==12345678909;/nu_rg==;/dt_nascimento==1999-01-19;/st_sexo==M;/dt_cadastro==2017-01-24 16:08:58;/co_endereco==87;/co_contato==87","87","Master","1");

INSERT INTO tb_auditoria VALUES("757","TB_INSCRICAO","2017-01-24 16:08:58","I","","co_pessoa==87;/ds_pastoral==;/ds_membro_ativo==N;/nu_camisa==1;/no_responsavel==JOSE ARNALDO;/nu_tel_responsavel==32453253253","79","Master","1");

INSERT INTO tb_auditoria VALUES("758","TB_PAGAMENTO","2017-01-26 10:46:21","I","","nu_total==120.00;/nu_parcelas==1;/co_inscricao==79","92","","0");

INSERT INTO tb_auditoria VALUES("759","TB_PARCELAMENTO","2017-01-26 10:46:21","I","","co_pagamento==92;/co_tipo_pagamento==1;/nu_parcela==1;/nu_valor_parcela==120.00;/dt_vencimento==2017-01-26","92","","0");

INSERT INTO tb_auditoria VALUES("760","TB_ACESSO","2017-01-26 10:46:28","I","","ds_session_id==arl5b4f0vk72q6p4cnu9psirj7;/co_usuario==1;/dt_inicio_acesso==2017-01-26 10:46:28;/dt_fim_acesso==2017-01-26 10:46:28","51","","0");




DROP TABLE IF EXISTS tb_contato;


CREATE TABLE `tb_contato` (
  `co_contato` int(11) NOT NULL AUTO_INCREMENT,
  `nu_tel1` varchar(15) NOT NULL,
  `nu_tel2` varchar(15) DEFAULT NULL,
  `nu_tel3` varchar(15) DEFAULT NULL,
  `ds_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`co_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;


INSERT INTO tb_contato VALUES("1","61993274991","6130826060","","leonardomcbessa@gmail.com");

INSERT INTO tb_contato VALUES("4","61993259985","","","Linnekerlima@hotmail.com");

INSERT INTO tb_contato VALUES("5","61994128935","","","Rafaeel19silva@gmail.com");

INSERT INTO tb_contato VALUES("6","6184995380","","","fehs2gomes@hotmail.com");

INSERT INTO tb_contato VALUES("7","6194102650","6133585155","","Lucasgontijomaria@hotmail.com");

INSERT INTO tb_contato VALUES("9","55619106624","55619106624","","lililasp@gmail.com");

INSERT INTO tb_contato VALUES("10","61995479913","6133595307","","fhms1996@gmail.com");

INSERT INTO tb_contato VALUES("11","61993259985","6193259985","","Linnekerlima@hotmail.com");

INSERT INTO tb_contato VALUES("12","61996309365","61984625249","","paulovitor3005@gmail.com");

INSERT INTO tb_contato VALUES("13","6184995380","","","fehs2gomes@hotmail.com");

INSERT INTO tb_contato VALUES("14","61992841480","","","higorodrigues.78o@hotmail.com");

INSERT INTO tb_contato VALUES("15","61985539668","61986130447","","Kamilaf.silva@hotmail.com");

INSERT INTO tb_contato VALUES("16","6186548474","","","ceifadorlouco17@gmail.com");

INSERT INTO tb_contato VALUES("18","61994108557","61982701888","","fabriceras15@gmail.com");

INSERT INTO tb_contato VALUES("19","61985683988","61984361032","","kelvissondf@gmail.com");

INSERT INTO tb_contato VALUES("21","61991148026","61991452408","","Windsor.alexandre@gmail.com");

INSERT INTO tb_contato VALUES("22","6181214179","6184017340","","sirlei_arq@hotmail.com");

INSERT INTO tb_contato VALUES("23","6199915080","","","Soaresbruna222@gmail.com");

INSERT INTO tb_contato VALUES("24","6186446915","6186446915","","maria_eduarda.lrg@hotmail.com");

INSERT INTO tb_contato VALUES("25","61993001679","61984774148","","suyane.tallita@outlook.com");

INSERT INTO tb_contato VALUES("26","61992771024","","","leticiapsilva03@gmail.com");

INSERT INTO tb_contato VALUES("28","6184152353","","","Purroosso08@gmail.com");

INSERT INTO tb_contato VALUES("29","61995121814","","","Raulmiran@hotmail.com");

INSERT INTO tb_contato VALUES("30","61991326206","6134598312","","thaysr_@hotmail.com");

INSERT INTO tb_contato VALUES("31","61995800247","6133596322","","alexandrensm10@gmail.com");

INSERT INTO tb_contato VALUES("32","61991707767","61995975377","","grazielesousa972@hotmail.com");

INSERT INTO tb_contato VALUES("33","61991931190","61991621818","","thandresya-bianca@hotmail.com");

INSERT INTO tb_contato VALUES("37","61984876065","","","laura.baastosd@gmail.com");

INSERT INTO tb_contato VALUES("38","61993314057","","","tata_sinha_18@hotmail.com");

INSERT INTO tb_contato VALUES("39","61992971837","","","thaisksm23@gmail.com");

INSERT INTO tb_contato VALUES("40","61983206157","","","Jadediasss@gmail.com");

INSERT INTO tb_contato VALUES("41","61986645039","61985609412","","Carolinadossantoscfds@outlook.com");

INSERT INTO tb_contato VALUES("42","6130835505","6194191238","","savinhosba@gmail.com");

INSERT INTO tb_contato VALUES("44","6185719753","","","andressa110416@gmail.com");

INSERT INTO tb_contato VALUES("45","61981432338","61993687908","","taianesouto508@gmail.com");

INSERT INTO tb_contato VALUES("46","61986744401","","","max.xyxa431@gmail.com");

INSERT INTO tb_contato VALUES("47","61982767266","61982671075","","Giovana.Araujo77@icloud.com");

INSERT INTO tb_contato VALUES("49","61984994010","","","Juliafernanda16@hotmail.com");

INSERT INTO tb_contato VALUES("50","6193826548","","","Joyce.lopes@gmail.com");

INSERT INTO tb_contato VALUES("51","61996681204","","","maysapd@hotmail.com");

INSERT INTO tb_contato VALUES("52","61995753532","61993210925","","mercia.batista@hotmail.com");

INSERT INTO tb_contato VALUES("53","6133593574","6133593574","","Mmpriscila78@Outlook.com");

INSERT INTO tb_contato VALUES("54","61994135279","","","raianedemaria@gmail.com");

INSERT INTO tb_contato VALUES("55","61991947670","61995745047","","jeffandeg@hotmail.com");

INSERT INTO tb_contato VALUES("56","61985539668","","","kamilaf.silva@hotmail.com");

INSERT INTO tb_contato VALUES("57","61982739281","61995071483","","pamela508@outlook.com");

INSERT INTO tb_contato VALUES("58","61995962749","61993723025","","Vitoraraújo.m@hotmail.com");

INSERT INTO tb_contato VALUES("59","61984550059","61992859045","","Guilherme.gato401@gmail.com");

INSERT INTO tb_contato VALUES("60","61985540740","61991774916","","amaury.ritchenzoo@gmail.com");

INSERT INTO tb_contato VALUES("61","61984256916","","","Kamillapfrancoo@gmail.com");

INSERT INTO tb_contato VALUES("62","61991738479","61992265563","","Lauanda417@hotmail.com");

INSERT INTO tb_contato VALUES("63","6193274991","","","leonardomcbessa@gmail.com");

INSERT INTO tb_contato VALUES("64","61991816222","61985540740","","pablovital98@gmail.com");

INSERT INTO tb_contato VALUES("65","6130835505","6130835505","","savinhosba@gmail.com");

INSERT INTO tb_contato VALUES("66","61992855709","","","luucas405@gmail.com");

INSERT INTO tb_contato VALUES("67","61999236423","61996423013","","Joycemarquessantana@gmail.com");

INSERT INTO tb_contato VALUES("68","61992855709","","","luucas405@gmail.com");

INSERT INTO tb_contato VALUES("69","6184640608","6192953159","","Ericastephanie2015@gmail.com");

INSERT INTO tb_contato VALUES("70","6186446915","6186446915","","maria_eduarda.lrg@hotmail.com");

INSERT INTO tb_contato VALUES("71","61998104291","","","adalbertojunior@hotmail.com");

INSERT INTO tb_contato VALUES("72","6198546536","6199910092","","Jhonyferreirafsa@hotmail.com");

INSERT INTO tb_contato VALUES("73","61984256915","","","Kamillapfrancoo@gmail.com");

INSERT INTO tb_contato VALUES("74","61984461010","","","vanessavs10@gmail.com");

INSERT INTO tb_contato VALUES("75","61981932359","61984676861","","Sfather81@icloud.com");

INSERT INTO tb_contato VALUES("76","62995802816","61934593599","","Moraisjessica845@gmail");

INSERT INTO tb_contato VALUES("77","61995753807","","","jeanesantana99@gmail.com");

INSERT INTO tb_contato VALUES("78","61999076220","61991581608","","Soniaramaiaa@gmail.com");

INSERT INTO tb_contato VALUES("79","61981767001","61996705317","","Julia.farajb@gmail.com");

INSERT INTO tb_contato VALUES("80","61982334163","","","jgeovaana@gmail.com");

INSERT INTO tb_contato VALUES("81","61981520544","","","judsonnaldo@hotmail.com");

INSERT INTO tb_contato VALUES("82","6195282513","","","karenn.geovanna@gmail.com");

INSERT INTO tb_contato VALUES("83","23523454564","","","f@g.com");

INSERT INTO tb_contato VALUES("84","54654654654","","","danilo@mail.com");

INSERT INTO tb_contato VALUES("85","32532532532","","","rg@fg.ocm");

INSERT INTO tb_contato VALUES("86","43245326233","","","danilo@mail.com");

INSERT INTO tb_contato VALUES("87","43215532632","","","maria@gmail.com");




DROP TABLE IF EXISTS tb_endereco;


CREATE TABLE `tb_endereco` (
  `co_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `ds_endereco` varchar(150) NOT NULL,
  `ds_complemento` varchar(100) DEFAULT NULL,
  `ds_bairro` varchar(80) DEFAULT NULL,
  `nu_cep` varchar(15) DEFAULT NULL,
  `no_cidade` varchar(80) DEFAULT NULL,
  `sg_uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;


INSERT INTO tb_endereco VALUES("1","qr 403 conjunto 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("4","Qr 405 conjunto 13 casa 13","","Samambaia ","","Brasilia","DF");

INSERT INTO tb_endereco VALUES("5","QR 213 conjunto 03 casa 26","Casa ","Samambaia norte ","72343103","Brasília DF ","DF");

INSERT INTO tb_endereco VALUES("6","Qr 405 conjunto 8 casa 15 ","00","Samambaia Norte ","72319208","Brasília ","DF");

INSERT INTO tb_endereco VALUES("7","Qr 401 conjunto 09","30","Samambaia Norte","72319009","Brasília Df","DF");

INSERT INTO tb_endereco VALUES("9","QR 403 CONJUNTO 10 CASA 2I","28","Samambaia","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("10","Qr 425 Cj 27 Casa 05 Samambaia Norte ","","Samambaia ","72327028","Brasília ","DF");

INSERT INTO tb_endereco VALUES("11","Qr 405 conjunto 13 casa 13","","Samambaia ","","Brasília ","DF");

INSERT INTO tb_endereco VALUES("12","Qr 401 Conjunto 20","Casa 07","Samambaia Norte","72319020","Samambaia","DF");

INSERT INTO tb_endereco VALUES("13","Qr 405 conjunto 8 casa 15","00","Samambaia Norte ","72319208","Brasília ","DF");

INSERT INTO tb_endereco VALUES("14","Qr. 523 cj.5 casa 18","","","72317105","Samambaia sul","DF");

INSERT INTO tb_endereco VALUES("15","Qr 405 conjunto 25 casa 05","","Samambaia norte ","72319225","Brasília ","DF");

INSERT INTO tb_endereco VALUES("16","Qr 401 conj 14 casa 11","","Samambaia Norte","72319115","Brasilia","DF");

INSERT INTO tb_endereco VALUES("18","qr 421 conjunto 16 casa 03","","","72325119","","DF");

INSERT INTO tb_endereco VALUES("19","Qr 401 Conj 15 Casa 05","","","72319015","Samambaia Norte ","DF");

INSERT INTO tb_endereco VALUES("21","Qr 215 conjunto 1 casa 21","","Norte ","71343201","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("22","Qr  603 chácara 39 casa 30 B Rua 3","Condomínio ","Samambaia","72331100","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("23","QR 405 conjunto 12 casa 08","","Samambaia","72319212","Brasilia","DF");

INSERT INTO tb_endereco VALUES("24","Qr 405 conjunto13 casa13","12","Samambaia Norte ","72319213","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("25","Qr 207 conjunto 01 casa 26","","Samambaia ","72341301","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("26","Qs 301 conj 07 apart 1005 ","Bloco A Cond. Via Tropical ","Samambaia Sul","72300543","Samambaia","DF");

INSERT INTO tb_endereco VALUES("28","QR 410 conjunto 4 casa 13","","Samambaia Norte","","Brasilia","DF");

INSERT INTO tb_endereco VALUES("29","Qn 211-01_35","","Samambaia","","Brasília","DF");

INSERT INTO tb_endereco VALUES("30","QR 429 conjunto 20 casa 15","expansão ","","72329020","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("31","Qr 421 conjunto 18 casa 04","","","72325121","Samambaia norte ","DF");

INSERT INTO tb_endereco VALUES("32","QR 415 CNJ 02 ","CASA 28","SAMAMBAIA","","DF","DF");

INSERT INTO tb_endereco VALUES("33","Qnf 08 LT 35 casa 4","fundos entrada pela qnf 06","Taguatinga Norte","72125580","Taguatinga","DF");

INSERT INTO tb_endereco VALUES("37","QR 403 CONJUNTO 07 CASA 10","10","Samambaia Norte","72319108","BrasÃ­lia","DF");

INSERT INTO tb_endereco VALUES("38","CNF 2 lote 2 aprt 102 ","Sandy norte ","Taguatinga norte ","71212525","Brasília ","DF");

INSERT INTO tb_endereco VALUES("39","Qr 212 conjunto 14","Casa 15","Samambaia ","72316314","Samambaia Norte","DF");

INSERT INTO tb_endereco VALUES("40","CLN 307 bloco D atpo 218 ","Comercial ","Asa Norte ","70746540","Brasília ","DF");

INSERT INTO tb_endereco VALUES("41","Quadra QR 413 conjunto 06 casa 23","","Samambaia","72321306","Samambaia norte","DF");

INSERT INTO tb_endereco VALUES("42","Qr 209 conj 07 casa 06","06","","72141407","Samambaia","DF");

INSERT INTO tb_endereco VALUES("44","Qr 205 conjunto 06 casa 08 ","","Samambaia norte","","Brasilia ","DF");

INSERT INTO tb_endereco VALUES("45","QR 319 CONJ 04 ","Casa 19","Samambaia","72309104","Samambaia Sul","DF");

INSERT INTO tb_endereco VALUES("46","Qr 431 Conj 05 Casa 13","","Samambaia Norte ","72329105","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("47","QR 101 conj 3","Lote 3-10 torre 3 apt 611","Samambaia Sul ","72300505","Taguatinga ","DF");

INSERT INTO tb_endereco VALUES("49","403 06 05 ","","Samambaia ","72319107","Brasília ","DF");

INSERT INTO tb_endereco VALUES("50","QR 609 conj 01 casa 02","","Samambaia norte ","72331401","","DF");

INSERT INTO tb_endereco VALUES("51","Qr 407 conjunto 2 casa 6","","Samambaia Norte","72321002","Brasília","DF");

INSERT INTO tb_endereco VALUES("52","qr 310 conjunto 16 casa 18 ","samambaia sul ","avinida sul ","72307816","Brasilia","DF");

INSERT INTO tb_endereco VALUES("53","Qr 213 Conjunto 05 Das 09","9","Samambaia","72343105","Samambaia","DF");

INSERT INTO tb_endereco VALUES("54","Quadra 4 ","Lote 29 ","Vila Sao Luiz 1","72900860","Santo Antônio do Descoberto","GO");

INSERT INTO tb_endereco VALUES("55","Cl 118 Bloco D Lote E Ap.402","Norte","Santa Maria","72548204","Santa Maria","DF");

INSERT INTO tb_endereco VALUES("56","Qr 405 conjunto 25 casa 05","","Samambaia ","72319225","Brasília ","DF");

INSERT INTO tb_endereco VALUES("57","qr 319 conj 04 casa 19","Samambaia Sul","Samambaia sul","72312114","Brasilia df","DF");

INSERT INTO tb_endereco VALUES("58","Qr 401 conjunto 10 06","","Norte","72319010","Brasília ","DF");

INSERT INTO tb_endereco VALUES("59","QR. 204 CONJUNTO. 12","Casa 01","Norte ","72316092","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("60","QR. 204 CONJUNTO 12","CASA 16","NORTE ","72316092","SAMAMBAIA ","DF");

INSERT INTO tb_endereco VALUES("61","Qr 406 conjunto 06 casa 01","","Samambaia Norte ","72318206","","DF");

INSERT INTO tb_endereco VALUES("62","Qr 417 conjunto 04 casa 02","Na rua dá antiga Telebrasília","Samambaia norte ","72323104","Brasília","DF");

INSERT INTO tb_endereco VALUES("63","qr 403 conjunto 10 casa 28","Samambaia Norte","","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("64","QR 412 CJ 19 S/N  C 7","","Samambaia Norte","72320122","Brasilia","DF");

INSERT INTO tb_endereco VALUES("65","Qr 209 conj 07 casa 06","06","","72141407","Samambaia","DF");

INSERT INTO tb_endereco VALUES("66","Smse conjunto 8 lote 5","Casa 02","Samambaia sul ","72310208","Samambaia","DF");

INSERT INTO tb_endereco VALUES("67","Qr 203 conj 03 casa 05","Casa 05","Norte ","72341103","Samambaia","DF");

INSERT INTO tb_endereco VALUES("68","Smse conjunto 8 lote 5","Casa 2","Samambaia sul ","72310208","Samambaia","DF");

INSERT INTO tb_endereco VALUES("69","Qr 205 cj 02 casa 18","De frete a igreja católica","Norte","72341202","Samambaia","DF");

INSERT INTO tb_endereco VALUES("70","Qr 405 conjunto13 casa13","13","Samambaia Norte ","72319213","Samambaia ","DF");

INSERT INTO tb_endereco VALUES("71","Qr 411 conjunto 3 casa 5 ","","Samambaia norte ","72321203","Brasília ","DF");

INSERT INTO tb_endereco VALUES("72","Rua maestro joaquim de abreu N 735 Str Nordeste","Ensino.Fundamental","Setor Nordeste","73800100","Formosa Go","GO");

INSERT INTO tb_endereco VALUES("73","Qr 406 conjunto 06 casa 01","","","72318206","Samambaia Norte ","DF");

INSERT INTO tb_endereco VALUES("74","Qnm 2 Conjunto F casa 7","","Ceilândia Norte","72210026","Brasília","DF");

INSERT INTO tb_endereco VALUES("75","Quadra 429 conjunto 15 casa 10","","Samambaia ","72329015","Brasília ","DF");

INSERT INTO tb_endereco VALUES("76","Qr415 conj 16 casa 02","Samanbaia ","Samanbaia norte ","","Samanbaia norte ","DF");

INSERT INTO tb_endereco VALUES("77","Quadra 803 conjunto 20 casa 38","","Recanto das Emas ","72650505","Recanto das Emas ","DF");

INSERT INTO tb_endereco VALUES("78","QE 40 CONJUNTO F LOTE 19 APARTAMENTO 202","","Guará II","71070062","Guará ","DF");

INSERT INTO tb_endereco VALUES("79","QE 40 CONJUNTO F LOTE 19 APARTAMENTO 202","","Guará II","71070062","Guará ","DF");

INSERT INTO tb_endereco VALUES("80","QE 40 CONJUNTO B LOTE 8 APT 301","Em cima da df peças usadas","Guará 2","71070022","Brasília ","DF");

INSERT INTO tb_endereco VALUES("81","Quadra QR 406 Conjunto 26","27","","72318228","Brasília","DF");

INSERT INTO tb_endereco VALUES("82","Quadra 423 conjunto 03 casa 24","","","","","DF");

INSERT INTO tb_endereco VALUES("83","342534634 6t3tger","","","","","DF");

INSERT INTO tb_endereco VALUES("84","um qualquer em aguas lindas","","","","","DF");

INSERT INTO tb_endereco VALUES("85","novo endereco","","","","","DF");

INSERT INTO tb_endereco VALUES("86","ewtewtewtewtew","","","","","DF");

INSERT INTO tb_endereco VALUES("87","ewtewtewtewtew","","","","","DF");




DROP TABLE IF EXISTS tb_evento;


CREATE TABLE `tb_evento` (
  `co_evento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_evento` varchar(250) DEFAULT NULL,
  `ds_conteudo` text,
  `ds_palavras_chaves` varchar(100) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_realizado` date DEFAULT NULL,
  `ds_local` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`co_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS tb_funcionalidade;


CREATE TABLE `tb_funcionalidade` (
  `co_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `no_funcionalidade` varchar(150) NOT NULL,
  `ds_rota` varchar(250) NOT NULL,
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT 'A - Ativo / I - Inativo',
  PRIMARY KEY (`co_funcionalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


INSERT INTO tb_funcionalidade VALUES("1","Perfil Master","Admin/Index/SuperPerfil","A");

INSERT INTO tb_funcionalidade VALUES("2","Auditoria Listar","Admin/Auditoria/ListarAuditoria","A");

INSERT INTO tb_funcionalidade VALUES("3","Auditoria Detalhar","Admin/Auditoria/DetalharAuditoria","A");

INSERT INTO tb_funcionalidade VALUES("4","Usuario Cadastrar","Admin/Usuario/CadastroUsuario","A");

INSERT INTO tb_funcionalidade VALUES("5","Usuario Listar","Admin/Usuario/ListarUsuario","A");

INSERT INTO tb_funcionalidade VALUES("6","Meu Usuario","Admin/Usuario/MeuPerfilUsuario","A");

INSERT INTO tb_funcionalidade VALUES("7","Perfil Listar","Admin/Perfil/ListarPerfil","A");

INSERT INTO tb_funcionalidade VALUES("8","Perfil Cadastrar","Admin/Perfil/CadastroPerfil","A");

INSERT INTO tb_funcionalidade VALUES("9","Funcionalidade Listar","Admin/Funcionalidade/ListarFuncionalidade","A");

INSERT INTO tb_funcionalidade VALUES("10","Funcionalidade Cadastrar","Admin/Funcionalidade/CadastroFuncionalidade","A");

INSERT INTO tb_funcionalidade VALUES("11","Funcionalidades Perfil","Admin/Funcionalidade/FuncionalidadesPerfil","A");

INSERT INTO tb_funcionalidade VALUES("12","Listar Inscrições","Admin/Inscricao/ListarInscricao","I");




DROP TABLE IF EXISTS tb_imagem;


CREATE TABLE `tb_imagem` (
  `co_imagem` int(10) NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO tb_imagem VALUES("1","leonardo-m-c-bessa-56e8920c23ab6.jpg");

INSERT INTO tb_imagem VALUES("2","linneker-lima-roberto-gomes-58742b946722b.JPG");

INSERT INTO tb_imagem VALUES("3","fernanda-gomes-de-freitas-moura-58742c7ca470c.JPG");

INSERT INTO tb_imagem VALUES("4","linneker-maria-58742cfcecb4b.JPG");

INSERT INTO tb_imagem VALUES("5","kamila-silva-587430847f393.JPG");

INSERT INTO tb_imagem VALUES("8","savio-bispo-reis-587571e2649ef.png");




DROP TABLE IF EXISTS tb_inscricao;


CREATE TABLE `tb_inscricao` (
  `co_inscricao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_pastoral` text,
  `ds_retiro` varchar(1) DEFAULT NULL,
  `ds_membro_ativo` varchar(1) DEFAULT 'N',
  `ds_situacao_atual_grupo` int(1) DEFAULT NULL,
  `co_evento` int(10) unsigned NOT NULL,
  `nu_camisa` int(1) NOT NULL,
  `no_responsavel` varchar(50) NOT NULL,
  `nu_tel_responsavel` varchar(15) NOT NULL,
  `ds_descricao` text NOT NULL,
  `st_equipe_trabalho` varchar(1) NOT NULL DEFAULT 'N' COMMENT 'N - Não / S - Sim',
  `co_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`co_inscricao`,`co_pessoa`),
  KEY `fk_tb_membro_retiro_tb_retiro1_idx` (`co_evento`),
  KEY `fk_TB_INSCRICAO_TB_PESSOA1_idx` (`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;


INSERT INTO tb_inscricao VALUES("3","Do gej","","S","","0","7","ROSâNGELA MARIA","61933595806","","S","5");

INSERT INTO tb_inscricao VALUES("4","","","S","","0","7","JOSé BENTO","6133585155","","N","7");

INSERT INTO tb_inscricao VALUES("5","","","N","","0","4","LETíCIA","61991066240","","N","9");

INSERT INTO tb_inscricao VALUES("6","GEJ Dom Bosco ","","S","","0","3","DILVA","6133595307","","N","10");

INSERT INTO tb_inscricao VALUES("7","GEJ ","","S","","0","9","ELIENE","6134594937","","N","11");

INSERT INTO tb_inscricao VALUES("8","Gej Dom Bosco","","S","","0","6","ANTONIA IEDA","61984625249","","N","12");

INSERT INTO tb_inscricao VALUES("9","Gej dom Bosco ","","S","","0","4","GENI GOMES","6184008088","","N","13");

INSERT INTO tb_inscricao VALUES("10","Gej Dom Bosco","","S","","0","9","SOLANGE  DIAS","9133596768","","N","14");

INSERT INTO tb_inscricao VALUES("11","Gej","","S","","0","7","ANGELINA COSTA DA SILVA","6133589483","","N","16");

INSERT INTO tb_inscricao VALUES("12","","","S","","0","9","PAI","61982701888","","N","18");

INSERT INTO tb_inscricao VALUES("13","","","N","","0","8","MARA RUBIA","61985683988","","N","19");

INSERT INTO tb_inscricao VALUES("14","Gej e ajuc ","","N","","0","7","MARIA BATISTA","6133594931","","N","21");

INSERT INTO tb_inscricao VALUES("15","GEJ Dom Bosco","","S","","0","3","SIRLEIANE FERREIRA DOS SANTOS","6181214179","","N","22");

INSERT INTO tb_inscricao VALUES("16","","","S","","0","4","LUCELIA SOARES","6133592693","","N","23");

INSERT INTO tb_inscricao VALUES("17","","","S","","0","2","ELIENE","6134594937","","N","24");

INSERT INTO tb_inscricao VALUES("18","GEJ DOM BOSCO","","S","","0","3","MãE","61984774148","","N","25");

INSERT INTO tb_inscricao VALUES("19","","","N","","0","3","JOELMA","61992419993","","N","26");

INSERT INTO tb_inscricao VALUES("21","","","S","","0","7","CLáUDIA PATRíCIA CARDOSO RAMOS","6133587688","","N","28");

INSERT INTO tb_inscricao VALUES("22","GEJ Dom Bosco","","S","","0","7","MARIA CELIS MIRANDA DOS SANTOS","6133598257","","N","29");

INSERT INTO tb_inscricao VALUES("23","","","S","","0","2","MÃE","61985641290","","N","30");

INSERT INTO tb_inscricao VALUES("24","","","S","","0","7","SILVIA","6133596322","","N","31");

INSERT INTO tb_inscricao VALUES("25","","","S","","0","2","JUSIANE MARIA DE SOUSA","61995975377","","N","32");

INSERT INTO tb_inscricao VALUES("26","Catequese","","N","","0","4","NEIDE","61991621818","","N","33");

INSERT INTO tb_inscricao VALUES("30","Gej, Catequese","","S","","0","2","CEIÃ§A","61984499903","","N","37");

INSERT INTO tb_inscricao VALUES("31","","","N","","0","3","MAE NALVA","6130263045","","N","38");

INSERT INTO tb_inscricao VALUES("32","","","S","","0","4","IVANILDES","6134586671","","N","39");

INSERT INTO tb_inscricao VALUES("33","Nossa Senhora da Esperança ","","N","","0","3","GERALDA","61991299487","","N","40");

INSERT INTO tb_inscricao VALUES("34","São João Evangelista","","N","","0","3","MARINEIDE","6133508986","","N","41");

INSERT INTO tb_inscricao VALUES("36","","","N","","0","2","WALDIRIA","6133593693","","N","44");

INSERT INTO tb_inscricao VALUES("37","","","N","","0","4","MARIA DO SOCORRO","61981456696","","N","45");

INSERT INTO tb_inscricao VALUES("38","Acólitos, Pastoral de Artes e Pastoral da Música ","","N","","0","8","BERNADETE","61985730392","","N","46");

INSERT INTO tb_inscricao VALUES("39","","","S","","0","4","TATIANE MãE","61933331610","","S","47");

INSERT INTO tb_inscricao VALUES("41","","","S","","0","3","MARIA JOANA","6130825058","","N","49");

INSERT INTO tb_inscricao VALUES("42","Grupo de oração - rcc","","N","","0","4","JANAíNA MAE","6134593241","","N","50");

INSERT INTO tb_inscricao VALUES("43","GEJ","","S","","0","5","MARIA PEREIRA DOS S DIAS","61998438828","","N","51");

INSERT INTO tb_inscricao VALUES("44","grupo jovem e rcc ","","N","","0","8","MARIA","61995073546","","N","52");

INSERT INTO tb_inscricao VALUES("45","MAST","","S","","0","3","RITA","6133593574","","N","53");

INSERT INTO tb_inscricao VALUES("46","","","N","","0","6","LUCRéCIA FERREIRA DA SILVA","6133946727","","N","54");

INSERT INTO tb_inscricao VALUES("47","","","N","","0","6","JéSSICA","6133943592","","N","55");

INSERT INTO tb_inscricao VALUES("48","GEJ","","S","","0","6","MãE","6130835953","","N","56");

INSERT INTO tb_inscricao VALUES("49","","","N","","0","4","JESSICA","61995071483","","N","57");

INSERT INTO tb_inscricao VALUES("50","","","S","","0","7","TERESINHA ARAúJO","61993723025","","N","58");

INSERT INTO tb_inscricao VALUES("51","","","N","","0","7","PAI","61992859045","","N","59");

INSERT INTO tb_inscricao VALUES("52","","","S","","0","7","MÃE","61991774916","","N","60");

INSERT INTO tb_inscricao VALUES("53","","","N","","0","3","JARDEANE COSTA DE SOUSA","6133575075","","N","61");

INSERT INTO tb_inscricao VALUES("54","Grupo jovem ","","N","","0","2","VALéRIA BARBOSA DE ANDRADE","6133596605","","N","62");

INSERT INTO tb_inscricao VALUES("55","Gej","","S","","0","8","JOSE ARNALDO","6186292805","","N","63");

INSERT INTO tb_inscricao VALUES("56","","","N","","0","7","MãE","61995157299","","N","64");

INSERT INTO tb_inscricao VALUES("57","Gej","","S","","0","7","MãE","6183012839","","N","65");

INSERT INTO tb_inscricao VALUES("58","","","S","","0","7","ALDENIR","6133595974","","N","66");

INSERT INTO tb_inscricao VALUES("59","","","S","","0","3","MáRCIA","6133584918","","N","67");

INSERT INTO tb_inscricao VALUES("61","Gej dom bosco","","S","","0","7","SOLANGE","6192953159","","N","69");

INSERT INTO tb_inscricao VALUES("63","","","N","","0","7","DALCIONE","61994225575","","N","71");

INSERT INTO tb_inscricao VALUES("64","Santa luzia,sao Jose","","N","","0","7","ELIA","6198546536","","N","72");

INSERT INTO tb_inscricao VALUES("66","","","N","","0","3","MANOEL","61984042543","","N","74");

INSERT INTO tb_inscricao VALUES("67","Obra Shalom","","N","","0","3","ANTONIA MARIA","61985543569","","N","75");

INSERT INTO tb_inscricao VALUES("68","Grupo de evangelização dom bosco","","S","","0","2","KELLY DIAS","6134593599","","N","76");

INSERT INTO tb_inscricao VALUES("69","","","N","","0","2","ADRIANA","6130817469","","N","77");

INSERT INTO tb_inscricao VALUES("70","","","N","","0","8","ADRIANA","61998541534","","N","78");

INSERT INTO tb_inscricao VALUES("71","","","N","","0","7","ADRIANA","61998541534","","N","79");

INSERT INTO tb_inscricao VALUES("72","","","N","","0","3","EDIANA","61981574421","","N","80");

INSERT INTO tb_inscricao VALUES("73","","","N","","0","8","MARIA BARBOSA","6133582930","","N","81");

INSERT INTO tb_inscricao VALUES("74","","","S","","0","2","DENISE","6185406715","","N","82");

INSERT INTO tb_inscricao VALUES("75","","","N","","0","3","JOSE ARNALDO NOVO","54546464646","","N","83");

INSERT INTO tb_inscricao VALUES("76","","","N","","0","6","JOSE ARNALDO","43543654654","","N","84");

INSERT INTO tb_inscricao VALUES("77","","","N","","0","5","JOSE ARNALDO NOVO","23432534664","","N","85");

INSERT INTO tb_inscricao VALUES("78","","","S","","0","4","JOSE ARNALDO","34235325632","","N","86");

INSERT INTO tb_inscricao VALUES("79","","","N","","0","1","JOSE ARNALDO","32453253253","","N","87");




DROP TABLE IF EXISTS tb_membro;


CREATE TABLE `tb_membro` (
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
  CONSTRAINT `fk_TB_MEMBRO_TB_PESSOA1` FOREIGN KEY (`co_pessoa`) REFERENCES `tb_pessoa` (`co_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS tb_pagamento;


CREATE TABLE `tb_pagamento` (
  `co_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_total` decimal(10,2) DEFAULT NULL,
  `nu_valor_pago` decimal(10,2) DEFAULT NULL,
  `nu_parcelas` int(11) DEFAULT NULL,
  `tp_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciado / I - Iniciado / C - Concluido',
  `ds_observacao` text,
  `co_inscricao` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_pagamento`,`co_inscricao`),
  KEY `fk_TB_PAGAMENTO_TB_INSCRICAO1_idx` (`co_inscricao`),
  CONSTRAINT `fk_TB_PAGAMENTO_TB_INSCRICAO1` FOREIGN KEY (`co_inscricao`) REFERENCES `tb_inscricao` (`co_inscricao`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;


INSERT INTO tb_pagamento VALUES("1","120.00","","1","I","","4");

INSERT INTO tb_pagamento VALUES("5","120.00","","2","N","","5");

INSERT INTO tb_pagamento VALUES("6","120.00","","1","C","","6");

INSERT INTO tb_pagamento VALUES("7","120.00","","1","N","","7");

INSERT INTO tb_pagamento VALUES("8","120.00","","1","N","","8");

INSERT INTO tb_pagamento VALUES("9","120.00","","1","N","","10");

INSERT INTO tb_pagamento VALUES("10","120.00","","1","N","","9");

INSERT INTO tb_pagamento VALUES("11","120.00","","1","N","","11");

INSERT INTO tb_pagamento VALUES("12","120.00","","1","N","","12");

INSERT INTO tb_pagamento VALUES("13","120.00","","1","N","","13");

INSERT INTO tb_pagamento VALUES("14","120.00","","1","N","","14");

INSERT INTO tb_pagamento VALUES("15","120.00","","1","N","","15");

INSERT INTO tb_pagamento VALUES("16","120.00","","1","N","","16");

INSERT INTO tb_pagamento VALUES("17","120.00","","1","N","","18");

INSERT INTO tb_pagamento VALUES("19","120.00","","1","N","","21");

INSERT INTO tb_pagamento VALUES("20","120.00","","1","N","","22");

INSERT INTO tb_pagamento VALUES("21","120.00","","1","N","","23");

INSERT INTO tb_pagamento VALUES("22","120.00","","1","N","","24");

INSERT INTO tb_pagamento VALUES("23","120.00","","1","N","","25");

INSERT INTO tb_pagamento VALUES("26","120.00","","1","N","","26");

INSERT INTO tb_pagamento VALUES("30","120.00","","1","N","","31");

INSERT INTO tb_pagamento VALUES("31","120.00","","1","N","","32");

INSERT INTO tb_pagamento VALUES("33","120.00","","1","N","","36");

INSERT INTO tb_pagamento VALUES("34","120.00","","1","N","","37");

INSERT INTO tb_pagamento VALUES("35","120.00","","1","N","","38");

INSERT INTO tb_pagamento VALUES("36","120.00","","1","N","","39");

INSERT INTO tb_pagamento VALUES("39","120.00","","1","N","","41");

INSERT INTO tb_pagamento VALUES("40","120.00","","1","N","","42");

INSERT INTO tb_pagamento VALUES("42","120.00","","1","N","","43");

INSERT INTO tb_pagamento VALUES("43","120.00","","1","N","","44");

INSERT INTO tb_pagamento VALUES("44","120.00","","1","N","","45");

INSERT INTO tb_pagamento VALUES("45","120.00","","1","N","","48");

INSERT INTO tb_pagamento VALUES("46","120.00","","1","N","","49");

INSERT INTO tb_pagamento VALUES("47","120.00","","1","N","","50");

INSERT INTO tb_pagamento VALUES("48","120.00","","1","N","","51");

INSERT INTO tb_pagamento VALUES("49","120.00","","1","N","","52");

INSERT INTO tb_pagamento VALUES("50","120.00","","1","N","","54");

INSERT INTO tb_pagamento VALUES("51","120.00","","1","N","","55");

INSERT INTO tb_pagamento VALUES("58","120.00","","1","N","","56");

INSERT INTO tb_pagamento VALUES("59","120.00","","1","N","","57");

INSERT INTO tb_pagamento VALUES("60","120.00","","1","N","","58");

INSERT INTO tb_pagamento VALUES("61","120.00","","1","N","","59");

INSERT INTO tb_pagamento VALUES("63","120.00","","1","N","","61");

INSERT INTO tb_pagamento VALUES("64","120.00","","1","N","","63");

INSERT INTO tb_pagamento VALUES("65","120.00","","1","N","","64");

INSERT INTO tb_pagamento VALUES("67","120.00","","1","N","","66");

INSERT INTO tb_pagamento VALUES("68","120.00","","1","N","","67");

INSERT INTO tb_pagamento VALUES("69","120.00","","1","N","","68");

INSERT INTO tb_pagamento VALUES("70","120.00","","1","N","","69");

INSERT INTO tb_pagamento VALUES("71","120.00","","1","N","","70");

INSERT INTO tb_pagamento VALUES("72","120.00","","1","N","","71");

INSERT INTO tb_pagamento VALUES("73","120.00","","1","N","","72");

INSERT INTO tb_pagamento VALUES("74","120.00","","1","N","","73");

INSERT INTO tb_pagamento VALUES("76","120.00","","1","N","","74");

INSERT INTO tb_pagamento VALUES("77","120.00","","1","N","","17");

INSERT INTO tb_pagamento VALUES("78","120.00","","1","N","","19");

INSERT INTO tb_pagamento VALUES("79","120.00","","1","N","","30");

INSERT INTO tb_pagamento VALUES("80","120.00","","1","N","","33");

INSERT INTO tb_pagamento VALUES("81","120.00","","1","N","","34");

INSERT INTO tb_pagamento VALUES("82","120.00","","1","N","","46");

INSERT INTO tb_pagamento VALUES("83","120.00","","1","N","","47");

INSERT INTO tb_pagamento VALUES("84","120.00","","1","N","","53");

INSERT INTO tb_pagamento VALUES("85","120.00","","1","N","","75");

INSERT INTO tb_pagamento VALUES("86","120.00","","1","N","","76");

INSERT INTO tb_pagamento VALUES("87","120.00","","1","N","","77");

INSERT INTO tb_pagamento VALUES("88","120.00","","1","N","","77");

INSERT INTO tb_pagamento VALUES("90","120.00","","2","C","","3");

INSERT INTO tb_pagamento VALUES("91","120.00","","1","N","","78");

INSERT INTO tb_pagamento VALUES("92","120.00","","1","N","","79");




DROP TABLE IF EXISTS tb_parcelamento;


CREATE TABLE `tb_parcelamento` (
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
  CONSTRAINT `fk_TB_PARCELAMENTO_TB_PAGAMENTO1` FOREIGN KEY (`co_pagamento`) REFERENCES `tb_pagamento` (`co_pagamento`),
  CONSTRAINT `fk_TB_PARCELAMENTO_TB_TIPO_PAGAMENTO1` FOREIGN KEY (`co_tipo_pagamento`) REFERENCES `tb_tipo_pagamento` (`co_tipo_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;


INSERT INTO tb_parcelamento VALUES("1","1","120.00","120.00","2017-01-19","","So pra ver","1","1");

INSERT INTO tb_parcelamento VALUES("4","1","120.00","","2017-01-19","","","6","1");

INSERT INTO tb_parcelamento VALUES("5","1","120.00","","2017-01-19","","","7","1");

INSERT INTO tb_parcelamento VALUES("6","1","120.00","","2017-01-19","","","8","1");

INSERT INTO tb_parcelamento VALUES("7","1","120.00","","2017-01-19","","","9","1");

INSERT INTO tb_parcelamento VALUES("8","1","120.00","","2017-01-19","","","10","1");

INSERT INTO tb_parcelamento VALUES("9","1","120.00","","2017-01-19","","","11","1");

INSERT INTO tb_parcelamento VALUES("10","1","120.00","","2017-01-19","","","12","1");

INSERT INTO tb_parcelamento VALUES("11","1","120.00","","2017-01-19","","","13","1");

INSERT INTO tb_parcelamento VALUES("12","1","120.00","","2017-01-19","","","14","1");

INSERT INTO tb_parcelamento VALUES("13","1","120.00","","2017-01-19","","","15","1");

INSERT INTO tb_parcelamento VALUES("14","1","120.00","","2017-01-19","","","16","1");

INSERT INTO tb_parcelamento VALUES("15","1","120.00","","2017-01-19","","","17","1");

INSERT INTO tb_parcelamento VALUES("17","1","120.00","","2017-01-19","","","19","1");

INSERT INTO tb_parcelamento VALUES("18","1","120.00","","2017-01-19","","","20","1");

INSERT INTO tb_parcelamento VALUES("19","1","120.00","","2017-01-19","","","21","1");

INSERT INTO tb_parcelamento VALUES("20","1","120.00","","2017-01-19","","","22","1");

INSERT INTO tb_parcelamento VALUES("21","1","120.00","","2017-01-19","","","23","1");

INSERT INTO tb_parcelamento VALUES("24","1","120.00","","2017-01-19","","","26","1");

INSERT INTO tb_parcelamento VALUES("27","1","120.00","","2017-01-19","","","30","1");

INSERT INTO tb_parcelamento VALUES("28","1","120.00","","2017-01-19","","","31","1");

INSERT INTO tb_parcelamento VALUES("29","1","120.00","","2017-01-19","","","33","1");

INSERT INTO tb_parcelamento VALUES("30","1","120.00","","2017-01-19","","","34","1");

INSERT INTO tb_parcelamento VALUES("31","1","120.00","","2017-01-19","","","35","1");

INSERT INTO tb_parcelamento VALUES("34","1","120.00","","2017-01-19","","","39","1");

INSERT INTO tb_parcelamento VALUES("35","1","120.00","","2017-01-19","","","40","1");

INSERT INTO tb_parcelamento VALUES("36","1","120.00","","2017-01-19","","","42","1");

INSERT INTO tb_parcelamento VALUES("37","1","120.00","","2017-01-19","","","43","1");

INSERT INTO tb_parcelamento VALUES("38","1","120.00","","2017-01-19","","","44","1");

INSERT INTO tb_parcelamento VALUES("39","1","120.00","","2017-01-19","","","45","1");

INSERT INTO tb_parcelamento VALUES("40","1","120.00","","2017-01-19","","","46","1");

INSERT INTO tb_parcelamento VALUES("41","1","120.00","","2017-01-19","","","47","1");

INSERT INTO tb_parcelamento VALUES("42","1","120.00","","2017-01-19","","","48","1");

INSERT INTO tb_parcelamento VALUES("43","1","120.00","","2017-01-19","","","49","1");

INSERT INTO tb_parcelamento VALUES("44","1","120.00","","2017-01-19","","","50","1");

INSERT INTO tb_parcelamento VALUES("45","1","120.00","","2017-01-19","","","51","1");

INSERT INTO tb_parcelamento VALUES("47","1","120.00","","2017-01-19","","","58","1");

INSERT INTO tb_parcelamento VALUES("48","1","120.00","","2017-01-19","","","59","1");

INSERT INTO tb_parcelamento VALUES("49","1","120.00","","2017-01-19","","","60","1");

INSERT INTO tb_parcelamento VALUES("50","1","120.00","","2017-01-19","","","61","1");

INSERT INTO tb_parcelamento VALUES("52","1","120.00","","2017-01-19","","","63","1");

INSERT INTO tb_parcelamento VALUES("53","1","120.00","","2017-01-19","","","64","1");

INSERT INTO tb_parcelamento VALUES("54","1","120.00","","2017-01-19","","","65","1");

INSERT INTO tb_parcelamento VALUES("55","1","120.00","","2017-01-19","","","67","1");

INSERT INTO tb_parcelamento VALUES("56","1","120.00","","2017-01-19","","","68","1");

INSERT INTO tb_parcelamento VALUES("57","1","120.00","","2017-01-19","","","69","1");

INSERT INTO tb_parcelamento VALUES("58","1","120.00","","2017-01-19","","","70","1");

INSERT INTO tb_parcelamento VALUES("59","1","120.00","","2017-01-19","","","71","1");

INSERT INTO tb_parcelamento VALUES("60","1","120.00","","2017-01-19","","","72","1");

INSERT INTO tb_parcelamento VALUES("61","1","120.00","","2017-01-19","","","73","1");

INSERT INTO tb_parcelamento VALUES("62","1","120.00","","2017-01-19","","","74","1");

INSERT INTO tb_parcelamento VALUES("64","1","120.00","","2017-01-19","","","76","1");

INSERT INTO tb_parcelamento VALUES("65","1","120.00","","2017-01-19","","","77","1");

INSERT INTO tb_parcelamento VALUES("66","1","120.00","","2017-01-19","","","78","1");

INSERT INTO tb_parcelamento VALUES("67","1","120.00","","2017-01-19","","","79","1");

INSERT INTO tb_parcelamento VALUES("68","1","120.00","","2017-01-19","","","80","1");

INSERT INTO tb_parcelamento VALUES("69","1","120.00","","2017-01-19","","","81","1");

INSERT INTO tb_parcelamento VALUES("70","1","120.00","","2017-01-19","","","82","1");

INSERT INTO tb_parcelamento VALUES("71","1","120.00","","2017-01-19","","","83","1");

INSERT INTO tb_parcelamento VALUES("72","1","120.00","","2017-01-19","","","84","1");

INSERT INTO tb_parcelamento VALUES("73","1","120.00","","2017-01-19","","","85","1");

INSERT INTO tb_parcelamento VALUES("74","1","120.00","","2017-01-19","","","86","2");

INSERT INTO tb_parcelamento VALUES("75","1","120.00","","2017-01-19","","","87","3");

INSERT INTO tb_parcelamento VALUES("76","1","120.00","","2017-01-19","","","88","3");

INSERT INTO tb_parcelamento VALUES("83","1","60.00","","2017-01-23","","","5","1");

INSERT INTO tb_parcelamento VALUES("84","2","60.00","","2017-01-23","","","5","1");

INSERT INTO tb_parcelamento VALUES("85","1","120.00","","2017-01-23","","","91","1");

INSERT INTO tb_parcelamento VALUES("89","1","120.00","","2017-01-23","","","36","1");

INSERT INTO tb_parcelamento VALUES("90","1","60.00","60.00","2017-01-24","2017-01-23","teste","90","1");

INSERT INTO tb_parcelamento VALUES("91","2","60.00","60.00","2017-01-24","2017-01-17","","90","1");

INSERT INTO tb_parcelamento VALUES("92","1","120.00","","2017-01-26","","","92","1");




DROP TABLE IF EXISTS tb_perfil;


CREATE TABLE `tb_perfil` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL,
  `st_status` varchar(1) DEFAULT 'I',
  PRIMARY KEY (`co_perfil`),
  UNIQUE KEY `co_perfil_UNIQUE` (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


INSERT INTO tb_perfil VALUES("1","Master","A");

INSERT INTO tb_perfil VALUES("2","Coordenador","A");

INSERT INTO tb_perfil VALUES("3","Membro","A");

INSERT INTO tb_perfil VALUES("4","Comissão","A");




DROP TABLE IF EXISTS tb_perfil_funcionalidade;


CREATE TABLE `tb_perfil_funcionalidade` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_perfil` int(11) NOT NULL,
  `co_funcionalidade` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_perfil`,`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil`),
  CONSTRAINT `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1` FOREIGN KEY (`co_funcionalidade`) REFERENCES `tb_funcionalidade` (`co_funcionalidade`),
  CONSTRAINT `fk_tb_perfil_tb_funcionalidade_tb_perfil1` FOREIGN KEY (`co_perfil`) REFERENCES `tb_perfil` (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;


INSERT INTO tb_perfil_funcionalidade VALUES("1","1","1");

INSERT INTO tb_perfil_funcionalidade VALUES("33","2","5");

INSERT INTO tb_perfil_funcionalidade VALUES("4","3","6");

INSERT INTO tb_perfil_funcionalidade VALUES("7","4","6");

INSERT INTO tb_perfil_funcionalidade VALUES("34","2","6");

INSERT INTO tb_perfil_funcionalidade VALUES("8","4","12");

INSERT INTO tb_perfil_funcionalidade VALUES("35","2","12");




DROP TABLE IF EXISTS tb_pessoa;


CREATE TABLE `tb_pessoa` (
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
  CONSTRAINT `fk_TB_PESSOA_TB_CONTATO1` FOREIGN KEY (`co_contato`) REFERENCES `tb_contato` (`co_contato`),
  CONSTRAINT `fk_TB_PESSOA_TB_ENDERECO1` FOREIGN KEY (`co_endereco`) REFERENCES `tb_endereco` (`co_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;


INSERT INTO tb_pessoa VALUES("1","72681438187","Leonardo Machado Carvalho Bessa","2077811","2016-10-31 00:00:00","1984-07-06","M","1","1");

INSERT INTO tb_pessoa VALUES("4","04804195157","LINNEKER LIMA ROBERTO GOMES","","2017-01-09 22:32:20","1995-10-04","M","4","4");

INSERT INTO tb_pessoa VALUES("5","05229468106","RAFAEL SILVA DE OLIVEIRA","3020187","2017-01-24 15:38:04","1993-12-04","M","5","5");

INSERT INTO tb_pessoa VALUES("6","05310353100","FERNANDA GOMES DE FREITAS MOURA","3431295","2017-01-09 22:36:13","1998-11-25","F","6","6");

INSERT INTO tb_pessoa VALUES("7","06075765107","LUCAS MIRANDA GONTIJO","3455230","2017-01-09 22:36:32","1996-11-09","M","7","7");

INSERT INTO tb_pessoa VALUES("9","02351127129","LILIAN MACHADO CARVALHO BESSA","2529020","2017-01-23 10:31:09","1988-10-31","F","9","9");

INSERT INTO tb_pessoa VALUES("10","04337020365","FRANCISCO HENRIQUE MOTA DE SOUZA","5879927","2017-01-09 22:41:47","1996-01-30","M","10","10");

INSERT INTO tb_pessoa VALUES("11","04804195157","LINNEKER LIMA ROBERTO GOMES","","2017-01-09 22:42:31","1995-10-04","M","11","11");

INSERT INTO tb_pessoa VALUES("12","05948792137","PAULO VITOR RODRIGUES DE OLIVEIRA","3340445","2017-01-09 22:43:40","1997-05-30","M","12","12");

INSERT INTO tb_pessoa VALUES("13","05310353100","FERNANDA GOMES DE FREITAS MOURA","3431295","2017-01-09 22:46:32","1998-11-25","F","13","13");

INSERT INTO tb_pessoa VALUES("14","07606595160","HIGOR RODRIGUES DIAS","3795126","2017-01-09 22:47:23","2002-08-15","M","14","14");

INSERT INTO tb_pessoa VALUES("15","06244035135","KAMILA SILVA","3433351","2017-01-09 22:53:24","1999-01-17","F","15","15");

INSERT INTO tb_pessoa VALUES("16","07747966180","DANIEL MARLEY SILVA DE LIMA","3872338","2017-01-09 22:55:00","2001-02-20","M","16","16");

INSERT INTO tb_pessoa VALUES("18","02858427143","FABRíCIO ALVES OLIVEIRA","3558631","2017-01-09 23:02:47","2001-07-05","M","18","18");

INSERT INTO tb_pessoa VALUES("19","07164674108","KELVISSON NASCIMENTO SILVA","3695033","2017-01-09 23:03:10","2000-09-22","M","19","19");

INSERT INTO tb_pessoa VALUES("21","04268513159","WINDSOR ALEXANDRE DOS SANTOS SOUZA","3045945","2017-01-09 23:08:40","1993-06-06","M","21","21");

INSERT INTO tb_pessoa VALUES("22","07128618155","ISABELA ARAúJO DOS SANTOS","3694689","2017-01-09 23:16:35","2001-07-14","F","22","22");

INSERT INTO tb_pessoa VALUES("23","05728945112","BRUNA STEPHANIE LEITãO LIMA","3348331","2017-01-10 00:49:37","2000-07-03","F","23","23");

INSERT INTO tb_pessoa VALUES("24","06047323170","MARIA EDUARDA LIMA ROBERTO GOMES","","2017-01-10 01:34:20","2001-04-11","F","24","24");

INSERT INTO tb_pessoa VALUES("25","06352478107","SUYANE TALLITA REIS SILVA","3460572","2017-01-10 07:57:27","1998-07-11","F","25","25");

INSERT INTO tb_pessoa VALUES("26","04321849101","LETICIA PEREIRA DA SILVA","3002886","2017-01-10 08:33:48","1999-08-03","F","26","26");

INSERT INTO tb_pessoa VALUES("28","05778329130","PEDRO HENRIQUE CARDOSO RAMOS","3679085","2017-01-10 11:20:20","2000-11-22","M","28","28");

INSERT INTO tb_pessoa VALUES("29","06597113110","RAUL DIAS MIRANDA CARDOSO","3374856","2017-01-10 12:02:16","2001-04-27","M","29","29");

INSERT INTO tb_pessoa VALUES("30","01174110198","THAIS RIBEIRO DOS SANTOS","3218196","2017-01-10 13:59:11","1996-10-01","F","30","30");

INSERT INTO tb_pessoa VALUES("31","03369852152","ALEXANDRE DO NASCIMENTO BARBOSA","2986217","2017-01-10 14:15:43","1994-11-07","M","31","31");

INSERT INTO tb_pessoa VALUES("32","07187450192","GRAZIELE DE SOUSA NASCIMENTO","3720240","2017-01-10 16:46:22","1999-08-07","F","32","32");

INSERT INTO tb_pessoa VALUES("33","03925892575","THANDRESYA BIANCA PEREIRA PINHEIRO","","2017-01-10 20:21:21","1992-07-21","F","33","33");

INSERT INTO tb_pessoa VALUES("37","04897673119","LAURA BASTOS","3174535","2017-01-10 21:04:40","1995-03-28","F","37","37");

INSERT INTO tb_pessoa VALUES("38","04416571178","TAíS ALMEIDA DA SILVA","","2017-01-10 21:07:08","1992-12-18","F","38","38");

INSERT INTO tb_pessoa VALUES("39","03894443162","THAIS OLIVEIRA DA COSTA MAIA","2950728","2017-01-10 21:07:52","1993-04-23","F","39","39");

INSERT INTO tb_pessoa VALUES("40","01801453128","JADE DA SILVA SANTOS","2875190","2017-01-10 21:16:18","1997-10-28","F","40","40");

INSERT INTO tb_pessoa VALUES("41","07048585170","CAROLINA FRANçA DOS SANTOS","3680244","2017-01-10 21:26:52","2000-06-27","F","41","41");

INSERT INTO tb_pessoa VALUES("42","07275083183","SáVIO BISPO REIS","","2017-01-10 21:44:34","2000-09-04","M","42","42");

INSERT INTO tb_pessoa VALUES("44","07118077100","ANDRESSA CRISTINA Dá SILVA FEITOZA","","2017-01-10 22:38:46","2000-07-31","F","44","44");

INSERT INTO tb_pessoa VALUES("45","06368979151","TAIANE FERREIRA SOUTO","3295046","2017-01-10 22:41:26","1999-02-26","F","45","45");

INSERT INTO tb_pessoa VALUES("46","05842022109","MAXSUEL IGOR DA SILVA RIBEIRO","3158472","2017-01-10 23:17:53","1996-04-01","M","46","46");

INSERT INTO tb_pessoa VALUES("47","09275164460","GIOVANA DE ARAúJO SILVA","3930988","2017-01-23 17:08:09","2001-02-08","F","47","47");

INSERT INTO tb_pessoa VALUES("49","06556829102","JULIA FERNANDA BRAGA DA SILVA","3510490","2017-01-11 10:44:33","1999-11-30","F","49","49");

INSERT INTO tb_pessoa VALUES("50","04894739119","JOYCE LOPES FERREIRA","3282431","2017-01-11 11:42:04","1998-10-28","F","50","50");

INSERT INTO tb_pessoa VALUES("51","00792679121","MAYSA PEREIRA DIAS","3161236","2017-01-11 13:50:30","1997-07-13","F","51","51");

INSERT INTO tb_pessoa VALUES("52","03509067185","MERCIA BATISTA MIRANDA","3942300","2017-01-11 23:32:10","1994-09-17","F","52","52");

INSERT INTO tb_pessoa VALUES("53","06408735100","PRISCILA MARTINS MATIAS","3480397","2017-01-11 23:37:38","1999-02-03","F","53","53");

INSERT INTO tb_pessoa VALUES("54","04808278189","ARIANE FERREIRA DE SOUSA","6726739","2017-01-11 23:43:47","2000-02-14","F","54","54");

INSERT INTO tb_pessoa VALUES("55","03040624300","JEFFERSON ALVES RODRIGUES","2669124","2017-01-11 23:55:37","1988-02-09","M","55","55");

INSERT INTO tb_pessoa VALUES("56","06244035135","KAMILA SILVA","","2017-01-12 11:51:26","1999-01-17","F","56","56");

INSERT INTO tb_pessoa VALUES("57","06501670152","PâMELA CRISTINA FERREIRA SOUTO","3297445","2017-01-12 11:53:08","1997-10-31","F","57","57");

INSERT INTO tb_pessoa VALUES("58","07154102101","VITOR ARAúJO MARIANO","3709322","2017-01-12 12:49:11","1999-09-06","M","58","58");

INSERT INTO tb_pessoa VALUES("59","06945544133","GUILHERME BALBINO DA SILVA","3419756","2017-01-12 13:06:59","2000-07-19","M","59","59");

INSERT INTO tb_pessoa VALUES("60","05858600174","AMAURY COSTA SILVA RAMOS","3094934","2017-01-12 13:22:52","1996-12-17","M","60","60");

INSERT INTO tb_pessoa VALUES("61","05355444130","KAMILLA PALOMA COSTA FRANCO","3381496","2017-01-12 16:24:04","1999-01-11","F","61","61");

INSERT INTO tb_pessoa VALUES("62","07267822118","LAUANDA DE ANDRADE PEIXOTO","3300828","2017-01-12 20:13:07","2000-04-20","F","62","62");

INSERT INTO tb_pessoa VALUES("63","72681438187","LEONARDO BESSA","2077811","2017-01-13 10:02:56","1984-07-06","M","63","63");

INSERT INTO tb_pessoa VALUES("64","93148704215","PABLO BEZERRA SOUSA","3183260","2017-01-13 14:35:00","1998-02-15","M","64","64");

INSERT INTO tb_pessoa VALUES("65","07275083183","SáVIO BISPO REIS","","2017-01-13 20:22:44","2000-09-04","M","65","65");

INSERT INTO tb_pessoa VALUES("66","04942943108","LUCAS ALMEIDA DE ANDRADE","3040845","2017-01-14 07:50:16","1995-07-20","M","66","66");

INSERT INTO tb_pessoa VALUES("67","04027231120","JOYCE MARQUES SANTANA","3408815","2017-01-14 07:51:08","1998-01-07","F","67","67");

INSERT INTO tb_pessoa VALUES("69","05257971143","ÉRICA STEPHANIE DE SOUSA CARVALHO","3737683","2017-01-14 10:33:20","2000-12-02","F","69","69");

INSERT INTO tb_pessoa VALUES("71","05162621145","ADALBERTO FERREIRA SOARES JúNIOR","3239703","2017-01-14 22:28:48","1995-09-04","M","71","71");

INSERT INTO tb_pessoa VALUES("72","06622524114","JHONY FERREIRA","3440140","2017-01-15 18:47:25","1998-09-08","M","72","72");

INSERT INTO tb_pessoa VALUES("74","00587177144","VANESSA VIANA DE SOUZA","","2017-01-16 15:04:40","1984-08-24","F","74","74");

INSERT INTO tb_pessoa VALUES("75","07001370177","THACIELY PRUDêNCIA","","2017-01-16 21:25:27","2000-09-24","F","75","75");

INSERT INTO tb_pessoa VALUES("76","07748254133","JESSICA EMANUELLE MORAIS FRANçA","3810798","2017-01-16 22:37:42","2001-12-25","F","76","76");

INSERT INTO tb_pessoa VALUES("77","05648669119","JEANE SANTANA DE OLIVEIRA","3234660","2017-01-17 22:54:34","1997-02-26","F","77","77");

INSERT INTO tb_pessoa VALUES("78","04756906133","SONIARA APARECIDA MENDES MAIA","2808318","2017-01-18 10:37:59","1989-12-20","F","78","78");

INSERT INTO tb_pessoa VALUES("79","02969348101","JúLIA FARAJ BENN","2799971","2017-01-18 10:41:55","1997-04-04","F","79","79");

INSERT INTO tb_pessoa VALUES("80","03179152150","JESSYK GEOVANA JUNIO SANTOS","2639507","2017-01-18 13:00:58","1996-08-14","F","80","80");

INSERT INTO tb_pessoa VALUES("81","03620863113","JUDSON BARBOSA GONSALVES","2494431","2017-01-18 14:13:03","1992-03-13","M","81","81");

INSERT INTO tb_pessoa VALUES("82","06050858110","KAREN GEOVANNA FIGUEREDO DOS SANTOS","","2017-01-19 08:30:32","1998-04-17","F","82","82");

INSERT INTO tb_pessoa VALUES("83","12345678909","JOSE DANILO MEIRA NETO","","2017-01-19 16:18:50","1998-01-15","M","83","83");

INSERT INTO tb_pessoa VALUES("84","12345678909","WILLIAN COUTO DA SILVA","","2017-01-19 17:03:01","1990-01-09","M","84","84");

INSERT INTO tb_pessoa VALUES("85","12345678909","MARIA KARLENE RAMOS LIMA","","2017-01-19 17:05:45","1998-01-21","M","85","85");

INSERT INTO tb_pessoa VALUES("86","12345678909","JOSE DANILO MEIRA NETO","","2017-01-23 11:21:14","1999-01-18","F","86","86");

INSERT INTO tb_pessoa VALUES("87","12345678909","JOSE DANILO MEIRA NETO","","2017-01-24 16:08:58","1999-01-19","M","87","87");




DROP TABLE IF EXISTS tb_tipo_pagamento;


CREATE TABLE `tb_tipo_pagamento` (
  `co_tipo_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `ds_tipo_pagamento` varchar(45) DEFAULT NULL,
  `sg_tipo_pagamento` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_tipo_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


INSERT INTO tb_tipo_pagamento VALUES("1","Dinheiro","DI");

INSERT INTO tb_tipo_pagamento VALUES("2","Cartão de Crédito","CC");

INSERT INTO tb_tipo_pagamento VALUES("3","Depósito Bancário","DB");




DROP TABLE IF EXISTS tb_usuario;


CREATE TABLE `tb_usuario` (
  `co_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `ds_senha` varchar(100) NOT NULL,
  `ds_code` varchar(50) NOT NULL,
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT '''A - Ativo / I - Inativo''',
  `dt_cadastro` datetime NOT NULL,
  `co_imagem` int(10) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`co_usuario`,`co_imagem`,`co_pessoa`),
  KEY `fk_TB_USUARIO_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_USUARIO_TB_PESSOA2_idx` (`co_pessoa`),
  CONSTRAINT `fk_TB_USUARIO_TB_IMAGEM1` FOREIGN KEY (`co_imagem`) REFERENCES `tb_imagem` (`co_imagem`),
  CONSTRAINT `fk_TB_USUARIO_TB_PESSOA2` FOREIGN KEY (`co_pessoa`) REFERENCES `tb_pessoa` (`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario VALUES("1","123456**","TVRJEK5EVTJLAW89","A","2016-10-31 00:00:00","1","1");

INSERT INTO tb_usuario VALUES("2","Maria10","VFdGeWFXRXhNQT09","A","2017-01-09 22:32:20","2","4");

INSERT INTO tb_usuario VALUES("3","Samambaia123","VTJGdFlXMWlZV2xoTVRJeg==","A","2017-01-09 22:36:13","3","6");

INSERT INTO tb_usuario VALUES("5","frangofritoS2","Wm5KaGJtZHZabkpwZEc5VE1nPT0=","A","2017-01-09 22:53:24","5","15");

INSERT INTO tb_usuario VALUES("8","pio2221305maria*","Y0dsdk1qSXlNVE13TlcxaGNtbGhLZz09","A","2017-01-10 21:44:34","8","42");




DROP TABLE IF EXISTS tb_usuario_perfil;


CREATE TABLE `tb_usuario_perfil` (
  `co_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `co_usuario` int(10) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`),
  KEY `fk_TB_USUARIO_PERFIL_TB_USUARIO1_idx` (`co_usuario`),
  KEY `fk_TB_USUARIO_PERFIL_TB_PERFIL1_idx` (`co_perfil`),
  CONSTRAINT `fk_TB_USUARIO_PERFIL_TB_PERFIL1` FOREIGN KEY (`co_perfil`) REFERENCES `tb_perfil` (`co_perfil`),
  CONSTRAINT `fk_TB_USUARIO_PERFIL_TB_USUARIO1` FOREIGN KEY (`co_usuario`) REFERENCES `tb_usuario` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario_perfil VALUES("1","1","1");

INSERT INTO tb_usuario_perfil VALUES("2","2","2");

INSERT INTO tb_usuario_perfil VALUES("3","3","4");

INSERT INTO tb_usuario_perfil VALUES("5","5","4");

INSERT INTO tb_usuario_perfil VALUES("8","8","2");




