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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


INSERT INTO tb_acesso VALUES("1","sj9p2cj9lv9r6a45oar2ds3mc4","2016-12-19 10:15:52","2016-12-19 16:47:23","1");

INSERT INTO tb_acesso VALUES("2","sj9p2cj9lv9r6a45oar2ds3mc4","2016-12-19 16:45:10","2016-12-19 16:45:10","3");




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
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria VALUES("1","tb_acesso","2016-12-19 10:15:52","I","","ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/co_usuario==1;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 10:15:52","1","","0");

INSERT INTO tb_auditoria VALUES("2","tb_acesso","2016-12-19 10:15:52","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 10:15:52;/co_usuario==1","dt_fim_acesso==2016-12-19 10:15:52","1","Master","1");

INSERT INTO tb_auditoria VALUES("3","tb_perfil","2016-12-19 10:16:08","I","","no_perfil==Coordenador","2","Master","1");

INSERT INTO tb_auditoria VALUES("4","tb_perfil","2016-12-19 10:16:24","I","","no_perfil==Membro","3","Master","1");

INSERT INTO tb_auditoria VALUES("5","tb_perfil_funcionalidade","2016-12-19 10:17:27","D","","","","Master","1");

INSERT INTO tb_auditoria VALUES("6","tb_perfil_funcionalidade","2016-12-19 10:17:27","I","","co_perfil==2;/co_funcionalidade==5","2","Master","1");

INSERT INTO tb_auditoria VALUES("7","tb_perfil_funcionalidade","2016-12-19 10:17:27","I","","co_perfil==2;/co_funcionalidade==6","3","Master","1");

INSERT INTO tb_auditoria VALUES("8","tb_perfil_funcionalidade","2016-12-19 10:17:37","D","","","","Master","1");

INSERT INTO tb_auditoria VALUES("9","tb_perfil_funcionalidade","2016-12-19 10:17:37","I","","co_perfil==3;/co_funcionalidade==6","4","Master","1");

INSERT INTO tb_auditoria VALUES("10","tb_endereco","2016-12-19 10:19:05","I","","ds_endereco==um qualquer em aguas lindas;/ds_complemento==Complemento;/ds_bairro==Bairro;/no_cidade==Águas lindas;/nu_cep==22222222;/sg_uf==GO","2","","0");

INSERT INTO tb_auditoria VALUES("11","tb_contato","2016-12-19 10:19:05","I","","ds_email==maria@gmail.com;/nu_tel1==6193055454;/nu_tel2==","2","","0");

INSERT INTO tb_auditoria VALUES("12","tb_pessoa","2016-12-19 10:19:05","I","","co_endereco==2;/co_contato==2;/no_pessoa==Maria Karlene Ramos Lima;/nu_cpf==01304694160;/nu_rg==102030;/dt_nascimento==1986-08-24 10:19:05;/st_sexo==F;/dt_cadastro==2016-12-19 10:19:05","2","","0");

INSERT INTO tb_auditoria VALUES("13","tb_imagem","2016-12-19 10:19:05","I","","ds_caminho==maria-karlene-ramos-lima-5857d039a8b2d.jpg","2","","0");

INSERT INTO tb_auditoria VALUES("14","tb_usuario","2016-12-19 10:19:05","I","","co_pessoa==2;/co_imagem==2;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 10:19:05","2","","0");

INSERT INTO tb_auditoria VALUES("15","tb_usuario_perfil","2016-12-19 10:19:06","I","","co_usuario==2;/co_perfil==3","2","","0");

INSERT INTO tb_auditoria VALUES("16","tb_acesso","2016-12-19 10:19:25","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 10:15:52;/co_usuario==1","dt_fim_acesso==2016-12-19 10:19:25","1","","0");

INSERT INTO tb_auditoria VALUES("17","tb_acesso","2016-12-19 10:19:25","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 10:19:25;/co_usuario==1","dt_fim_acesso==2016-12-19 10:19:25","1","Master","1");

INSERT INTO tb_auditoria VALUES("18","tb_acesso","2016-12-19 10:43:19","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 10:19:25;/co_usuario==1","dt_fim_acesso==2016-12-19 10:43:18","1","","0");

INSERT INTO tb_auditoria VALUES("19","tb_acesso","2016-12-19 10:43:19","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 10:43:18;/co_usuario==1","dt_fim_acesso==2016-12-19 10:43:19","1","Master","1");

INSERT INTO tb_auditoria VALUES("20","tb_endereco","2016-12-19 11:23:41","I","","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","","0");

INSERT INTO tb_auditoria VALUES("21","tb_contato","2016-12-19 11:23:41","I","","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","","0");

INSERT INTO tb_auditoria VALUES("22","tb_pessoa","2016-12-19 11:23:41","I","","no_pessoa==novo;/nu_cpf==12345678909;/nu_rg==345353426;/dt_nascimento==2001-10-10 11:23:41;/st_sexo==M;/dt_cadastro==2016-12-19 11:23:41;/co_endereco==3;/co_contato==3","3","","0");

INSERT INTO tb_auditoria VALUES("23","tb_imagem","2016-12-19 11:23:41","I","","ds_caminho==","3","","0");

INSERT INTO tb_auditoria VALUES("24","tb_usuario","2016-12-19 11:23:41","I","","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 11:23:41;/co_pessoa==3;/co_imagem==3","3","","0");

INSERT INTO tb_auditoria VALUES("25","tb_usuario_perfil","2016-12-19 11:23:41","I","","co_usuario==3;/co_perfil==3","3","","0");

INSERT INTO tb_auditoria VALUES("26","tb_acesso","2016-12-19 11:24:08","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 10:43:19;/co_usuario==1","dt_fim_acesso==2016-12-19 11:24:08","1","","0");

INSERT INTO tb_auditoria VALUES("27","tb_acesso","2016-12-19 11:24:08","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 11:24:08;/co_usuario==1","dt_fim_acesso==2016-12-19 11:24:08","1","Master","1");

INSERT INTO tb_auditoria VALUES("28","tb_acesso","2016-12-19 11:53:41","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 11:24:08;/co_usuario==1","dt_fim_acesso==2016-12-19 11:53:41","1","","0");

INSERT INTO tb_auditoria VALUES("29","tb_acesso","2016-12-19 11:53:41","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 11:53:41;/co_usuario==1","dt_fim_acesso==2016-12-19 11:53:41","1","Master","1");

INSERT INTO tb_auditoria VALUES("30","tb_acesso","2016-12-19 12:17:43","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 11:53:41;/co_usuario==1","dt_fim_acesso==2016-12-19 12:17:43","1","","0");

INSERT INTO tb_auditoria VALUES("31","tb_acesso","2016-12-19 12:17:43","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 12:17:43;/co_usuario==1","dt_fim_acesso==2016-12-19 12:17:43","1","Master","1");

INSERT INTO tb_auditoria VALUES("32","tb_acesso","2016-12-19 12:24:24","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 12:17:43;/co_usuario==1","dt_fim_acesso==2016-12-19 12:24:24","1","","0");

INSERT INTO tb_auditoria VALUES("33","tb_acesso","2016-12-19 12:24:25","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 12:24:24;/co_usuario==1","dt_fim_acesso==2016-12-19 12:24:25","1","Master","1");

INSERT INTO tb_auditoria VALUES("34","tb_acesso","2016-12-19 12:31:52","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 12:24:25;/co_usuario==1","dt_fim_acesso==2016-12-19 12:31:52","1","","0");

INSERT INTO tb_auditoria VALUES("35","tb_acesso","2016-12-19 12:31:52","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 12:31:52;/co_usuario==1","dt_fim_acesso==2016-12-19 12:31:52","1","Master","1");

INSERT INTO tb_auditoria VALUES("36","tb_acesso","2016-12-19 12:52:49","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 12:31:52;/co_usuario==1","dt_fim_acesso==2016-12-19 12:52:49","1","","0");

INSERT INTO tb_auditoria VALUES("37","tb_acesso","2016-12-19 12:52:49","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 12:52:49;/co_usuario==1","dt_fim_acesso==2016-12-19 12:52:49","1","Master","1");

INSERT INTO tb_auditoria VALUES("38","tb_acesso","2016-12-19 15:20:56","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 12:52:49;/co_usuario==1","dt_fim_acesso==2016-12-19 15:20:56","1","","0");

INSERT INTO tb_auditoria VALUES("39","tb_acesso","2016-12-19 15:20:56","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 15:20:56;/co_usuario==1","dt_fim_acesso==2016-12-19 15:20:56","1","Master","1");

INSERT INTO tb_auditoria VALUES("40","tb_usuario","2016-12-19 15:24:37","D","co_usuario==2;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 10:19:05;/co_imagem==2;/co_pessoa==2","","2","Master","1");

INSERT INTO tb_auditoria VALUES("41","tb_acesso","2016-12-19 15:41:26","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 15:20:56;/co_usuario==1","dt_fim_acesso==2016-12-19 15:41:26","1","","0");

INSERT INTO tb_auditoria VALUES("42","tb_acesso","2016-12-19 15:41:26","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 15:41:26;/co_usuario==1","dt_fim_acesso==2016-12-19 15:41:26","1","Master","1");

INSERT INTO tb_auditoria VALUES("43","tb_imagem","2016-12-19 15:50:20","U","co_imagem==1;/ds_caminho==leonardo-m-c-bessa-56e8920c23ab6.jpg","ds_caminho==","1","Master","1");

INSERT INTO tb_auditoria VALUES("44","tb_contato","2016-12-19 15:50:20","U","co_contato==1;/nu_tel1==61993274991;/nu_tel2==6130826060;/nu_tel3==;/ds_email==leonardomcbessa@gmail.com","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","1","Master","1");

INSERT INTO tb_auditoria VALUES("45","tb_endereco","2016-12-19 15:50:20","U","co_endereco==1;/ds_endereco==qr 403 conjunto 10 casa 28;/ds_complemento==;/ds_bairro==Samambaia Norte;/nu_cep==72319111;/no_cidade==Brasília;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","1","Master","1");

INSERT INTO tb_auditoria VALUES("46","tb_acesso","2016-12-19 15:58:28","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 15:41:26;/co_usuario==1","dt_fim_acesso==2016-12-19 15:58:28","1","","0");

INSERT INTO tb_auditoria VALUES("47","tb_acesso","2016-12-19 15:58:28","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 15:58:28;/co_usuario==1","dt_fim_acesso==2016-12-19 15:58:28","1","Master","1");

INSERT INTO tb_auditoria VALUES("48","tb_contato","2016-12-19 15:59:31","U","co_contato==1;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==maria@gmail.com;/nu_tel1==6193055454;/nu_tel2==","1","Master","1");

INSERT INTO tb_auditoria VALUES("49","tb_endereco","2016-12-19 15:59:31","U","co_endereco==1;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==um qualquer em aguas lindas;/ds_complemento==Complemento;/ds_bairro==Bairro;/no_cidade==Águas lindas;/nu_cep==22222222;/sg_uf==DF","1","Master","1");

INSERT INTO tb_auditoria VALUES("50","tb_contato","2016-12-19 16:04:44","U","co_contato==1;/nu_tel1==6193274991;/nu_tel2==;/nu_tel3==;/ds_email==leonardomcbessa@gmail.com","ds_email==maria@gmail.com;/nu_tel1==6193055454;/nu_tel2==","1","Master","1");

INSERT INTO tb_auditoria VALUES("51","tb_endereco","2016-12-19 16:04:44","U","co_endereco==1;/ds_endereco==um qualquer em aguas lindas;/ds_complemento==Complemento;/ds_bairro==Bairro;/nu_cep==22222222;/no_cidade==Águas lindas;/sg_uf==DF","ds_endereco==um qualquer em aguas lindas;/ds_complemento==Complemento;/ds_bairro==Bairro;/no_cidade==Águas lindas;/nu_cep==22222222;/sg_uf==DF","1","Master","1");

INSERT INTO tb_auditoria VALUES("52","tb_contato","2016-12-19 16:08:14","U","co_contato==1;/nu_tel1==6193055454;/nu_tel2==;/nu_tel3==;/ds_email==maria@gmail.com","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","1","Master","1");

INSERT INTO tb_auditoria VALUES("53","tb_endereco","2016-12-19 16:08:14","U","co_endereco==1;/ds_endereco==um qualquer em aguas lindas;/ds_complemento==Complemento;/ds_bairro==Bairro;/nu_cep==22222222;/no_cidade==Águas lindas;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","1","Master","1");

INSERT INTO tb_auditoria VALUES("54","tb_contato","2016-12-19 16:09:16","U","co_contato==1;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==maria@gmail.com;/nu_tel1==6193055454;/nu_tel2==","1","Master","1");

INSERT INTO tb_auditoria VALUES("55","tb_contato","2016-12-19 16:09:55","U","co_contato==1;/nu_tel1==6193055454;/nu_tel2==;/nu_tel3==;/ds_email==maria@gmail.com","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","1","Master","1");

INSERT INTO tb_auditoria VALUES("56","tb_endereco","2016-12-19 16:09:55","U","co_endereco==1;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","1","Master","1");

INSERT INTO tb_auditoria VALUES("57","tb_contato","2016-12-19 16:17:15","U","co_contato==1;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==leonardomcbessa@gmail.com","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","1","Master","1");

INSERT INTO tb_auditoria VALUES("58","tb_endereco","2016-12-19 16:17:15","U","co_endereco==1;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","1","Master","1");

INSERT INTO tb_auditoria VALUES("59","tb_acesso","2016-12-19 16:19:17","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 15:58:28;/co_usuario==1","dt_fim_acesso==2016-12-19 16:19:17","1","","0");

INSERT INTO tb_auditoria VALUES("60","tb_acesso","2016-12-19 16:19:17","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 16:19:17;/co_usuario==1","dt_fim_acesso==2016-12-19 16:19:17","1","Master","1");

INSERT INTO tb_auditoria VALUES("61","tb_contato","2016-12-19 16:22:50","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("62","tb_endereco","2016-12-19 16:22:50","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("63","tb_contato","2016-12-19 16:23:35","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("64","tb_endereco","2016-12-19 16:23:35","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("65","tb_contato","2016-12-19 16:23:41","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("66","tb_endereco","2016-12-19 16:23:41","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("67","tb_contato","2016-12-19 16:23:56","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("68","tb_contato","2016-12-19 16:24:01","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("69","tb_endereco","2016-12-19 16:24:01","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("70","tb_contato","2016-12-19 16:24:10","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("71","tb_endereco","2016-12-19 16:24:10","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("72","tb_contato","2016-12-19 16:24:21","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("73","tb_endereco","2016-12-19 16:24:21","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("74","tb_pessoa","2016-12-19 16:24:21","U","co_pessoa==3;/nu_cpf==12345678909;/no_pessoa==novo;/nu_rg==345353426;/dt_cadastro==2016-12-19 11:23:41;/dt_nascimento==2001-10-10;/st_sexo==M;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==12345678909;/nu_rg==345353426;/dt_nascimento==2001-10-10;/st_sexo==M;/dt_cadastro==2016-12-19 16:24:21","3","Master","1");

INSERT INTO tb_auditoria VALUES("75","tb_contato","2016-12-19 16:24:56","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("76","tb_endereco","2016-12-19 16:24:56","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("77","tb_pessoa","2016-12-19 16:24:56","U","co_pessoa==3;/nu_cpf==12345678909;/no_pessoa==novo;/nu_rg==345353426;/dt_cadastro==2016-12-19 16:24:21;/dt_nascimento==2001-10-10;/st_sexo==M;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==12345678909;/nu_rg==345353426;/dt_nascimento==2001-10-10;/st_sexo==M;/dt_cadastro==2016-12-19 16:24:56","3","Master","1");

INSERT INTO tb_auditoria VALUES("78","tb_contato","2016-12-19 16:25:01","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("79","tb_endereco","2016-12-19 16:25:01","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("80","tb_pessoa","2016-12-19 16:25:01","U","co_pessoa==3;/nu_cpf==12345678909;/no_pessoa==novo;/nu_rg==345353426;/dt_cadastro==2016-12-19 16:24:56;/dt_nascimento==2001-10-10;/st_sexo==M;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==12345678909;/nu_rg==345353426;/dt_nascimento==2001-10-10;/st_sexo==M;/dt_cadastro==2016-12-19 16:25:01","3","Master","1");

INSERT INTO tb_auditoria VALUES("81","tb_contato","2016-12-19 16:25:10","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("82","tb_endereco","2016-12-19 16:25:10","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("83","tb_pessoa","2016-12-19 16:25:10","U","co_pessoa==3;/nu_cpf==12345678909;/no_pessoa==novo;/nu_rg==345353426;/dt_cadastro==2016-12-19 16:25:01;/dt_nascimento==2001-10-10;/st_sexo==M;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==12345678909;/nu_rg==345353426;/dt_nascimento==2001-10-10;/st_sexo==M;/dt_cadastro==2016-12-19 16:25:10","3","Master","1");

INSERT INTO tb_auditoria VALUES("84","tb_contato","2016-12-19 16:25:53","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("85","tb_endereco","2016-12-19 16:25:53","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("86","tb_pessoa","2016-12-19 16:25:53","U","co_pessoa==3;/nu_cpf==12345678909;/no_pessoa==novo;/nu_rg==345353426;/dt_cadastro==2016-12-19 16:25:10;/dt_nascimento==2001-10-10;/st_sexo==M;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==12345678909;/nu_rg==345353426;/dt_nascimento==2001-10-10;/st_sexo==M;/dt_cadastro==2016-12-19 16:25:53","3","Master","1");

INSERT INTO tb_auditoria VALUES("87","tb_contato","2016-12-19 16:27:23","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("88","tb_endereco","2016-12-19 16:27:23","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("89","tb_pessoa","2016-12-19 16:27:23","U","co_pessoa==3;/nu_cpf==12345678909;/no_pessoa==novo;/nu_rg==345353426;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2001-10-10;/st_sexo==M;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==12345678909;/nu_rg==345353426;/dt_nascimento==2001-10-10;/st_sexo==M","3","Master","1");

INSERT INTO tb_auditoria VALUES("90","tb_usuario","2016-12-19 16:27:23","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I","3","Master","1");

INSERT INTO tb_auditoria VALUES("91","tb_usuario_perfil","2016-12-19 16:27:23","D","co_usuario_perfil==3;/co_usuario==3;/co_perfil==3","","3","Master","1");

INSERT INTO tb_auditoria VALUES("92","tb_usuario_perfil","2016-12-19 16:27:23","I","","co_perfil==3","","Master","1");

INSERT INTO tb_auditoria VALUES("93","tb_contato","2016-12-19 16:33:34","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("94","tb_endereco","2016-12-19 16:33:35","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("95","tb_pessoa","2016-12-19 16:33:35","U","co_pessoa==3;/nu_cpf==12345678909;/no_pessoa==novo;/nu_rg==345353426;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2001-10-10;/st_sexo==M;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==12345678909;/nu_rg==345353426;/dt_nascimento==2001-10-10;/st_sexo==M","3","Master","1");

INSERT INTO tb_auditoria VALUES("96","tb_usuario","2016-12-19 16:33:35","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I","3","Master","1");

INSERT INTO tb_auditoria VALUES("97","tb_usuario_perfil","2016-12-19 16:33:35","D","","","","Master","1");

INSERT INTO tb_auditoria VALUES("98","tb_usuario_perfil","2016-12-19 16:33:35","I","","co_perfil==2","","Master","1");

INSERT INTO tb_auditoria VALUES("99","tb_usuario_perfil","2016-12-19 16:33:35","I","","co_perfil==3","","Master","1");

INSERT INTO tb_auditoria VALUES("100","tb_contato","2016-12-19 16:34:26","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("101","tb_endereco","2016-12-19 16:34:26","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("102","tb_pessoa","2016-12-19 16:34:26","U","co_pessoa==3;/nu_cpf==12345678909;/no_pessoa==novo;/nu_rg==345353426;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2001-10-10;/st_sexo==M;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==12345678909;/nu_rg==345353426;/dt_nascimento==2001-10-10;/st_sexo==M","3","Master","1");

INSERT INTO tb_auditoria VALUES("103","tb_usuario","2016-12-19 16:34:26","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I","3","Master","1");

INSERT INTO tb_auditoria VALUES("104","tb_usuario_perfil","2016-12-19 16:34:26","D","","","","Master","1");

INSERT INTO tb_auditoria VALUES("105","tb_contato","2016-12-19 16:35:12","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("106","tb_endereco","2016-12-19 16:35:12","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("107","tb_pessoa","2016-12-19 16:35:12","U","co_pessoa==3;/nu_cpf==12345678909;/no_pessoa==novo;/nu_rg==345353426;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2001-10-10;/st_sexo==M;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==12345678909;/nu_rg==345353426;/dt_nascimento==2001-10-10;/st_sexo==M","3","Master","1");

INSERT INTO tb_auditoria VALUES("108","tb_usuario","2016-12-19 16:35:12","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I","3","Master","1");

INSERT INTO tb_auditoria VALUES("109","tb_usuario_perfil","2016-12-19 16:35:12","D","","","","Master","1");

INSERT INTO tb_auditoria VALUES("110","tb_usuario_perfil","2016-12-19 16:35:12","I","","co_usuario==3;/co_perfil==2","7","Master","1");

INSERT INTO tb_auditoria VALUES("111","tb_usuario_perfil","2016-12-19 16:35:13","I","","co_usuario==3;/co_perfil==3","8","Master","1");

INSERT INTO tb_auditoria VALUES("112","tb_contato","2016-12-19 16:35:29","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fg.ocm;/nu_tel1==65416546453;/nu_tel2==","3","Master","1");

INSERT INTO tb_auditoria VALUES("113","tb_endereco","2016-12-19 16:35:29","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/no_cidade==;/nu_cep==;/sg_uf==DF","3","Master","1");

INSERT INTO tb_auditoria VALUES("114","tb_pessoa","2016-12-19 16:35:29","U","co_pessoa==3;/nu_cpf==12345678909;/no_pessoa==novo;/nu_rg==345353426;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2001-10-10;/st_sexo==M;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==12345678909;/nu_rg==345353426;/dt_nascimento==2001-10-10;/st_sexo==M","3","Master","1");

INSERT INTO tb_auditoria VALUES("115","tb_usuario","2016-12-19 16:35:29","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==A","3","Master","1");

INSERT INTO tb_auditoria VALUES("116","tb_usuario_perfil","2016-12-19 16:35:29","D","co_usuario_perfil==7;/co_usuario==3;/co_perfil==2","","7","Master","1");

INSERT INTO tb_auditoria VALUES("117","tb_usuario_perfil","2016-12-19 16:35:29","I","","co_usuario==3;/co_perfil==3","9","Master","1");

INSERT INTO tb_auditoria VALUES("118","tb_contato","2016-12-19 16:37:35","U","co_contato==3;/nu_tel1==65416546453;/nu_tel2==;/nu_tel3==;/ds_email==rg@fg.ocm","ds_email==rg@fddgss22.ocm;/nu_tel1==11111111111;/nu_tel2==22222222222","3","Master","1");

INSERT INTO tb_auditoria VALUES("119","tb_endereco","2016-12-19 16:37:35","U","co_endereco==3;/ds_endereco==342534634 6t3tger;/ds_complemento==;/ds_bairro==;/nu_cep==;/no_cidade==;/sg_uf==DF","ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/no_cidade==nova cidade;/nu_cep==66666666;/sg_uf==AM","3","Master","1");

INSERT INTO tb_auditoria VALUES("120","tb_pessoa","2016-12-19 16:37:35","U","co_pessoa==3;/nu_cpf==12345678909;/no_pessoa==novo;/nu_rg==345353426;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2001-10-10;/st_sexo==M;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==22322191191;/nu_rg==9999999;/dt_nascimento==2000-10-10;/st_sexo==F","3","Master","1");

INSERT INTO tb_auditoria VALUES("121","tb_usuario","2016-12-19 16:37:35","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==A;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I","3","Master","1");

INSERT INTO tb_auditoria VALUES("122","tb_usuario_perfil","2016-12-19 16:37:35","D","co_usuario_perfil==9;/co_usuario==3;/co_perfil==3","","9","Master","1");

INSERT INTO tb_auditoria VALUES("123","tb_usuario_perfil","2016-12-19 16:37:35","I","","co_usuario==3;/co_perfil==1","10","Master","1");

INSERT INTO tb_auditoria VALUES("124","tb_usuario_perfil","2016-12-19 16:37:35","I","","co_usuario==3;/co_perfil==2","11","Master","1");

INSERT INTO tb_auditoria VALUES("125","tb_usuario_perfil","2016-12-19 16:37:35","I","","co_usuario==3;/co_perfil==3","12","Master","1");

INSERT INTO tb_auditoria VALUES("126","tb_contato","2016-12-19 16:37:55","U","co_contato==3;/nu_tel1==11111111111;/nu_tel2==22222222222;/nu_tel3==;/ds_email==rg@fddgss22.ocm","ds_email==rg@fddgss22.ocm;/nu_tel1==11111111111;/nu_tel2==22222222222","3","Master","1");

INSERT INTO tb_auditoria VALUES("127","tb_endereco","2016-12-19 16:37:55","U","co_endereco==3;/ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/nu_cep==66666666;/no_cidade==nova cidade;/sg_uf==AM","ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/no_cidade==nova cidade;/nu_cep==66666666;/sg_uf==AM","3","Master","1");

INSERT INTO tb_auditoria VALUES("128","tb_pessoa","2016-12-19 16:37:55","U","co_pessoa==3;/nu_cpf==22322191191;/no_pessoa==novo;/nu_rg==9999999;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2000-10-10;/st_sexo==F;/co_contato==3;/co_endereco==3","no_pessoa==novo;/nu_cpf==22322191191;/nu_rg==9999999;/dt_nascimento==2000-10-10;/st_sexo==F","3","Master","1");

INSERT INTO tb_auditoria VALUES("129","tb_usuario","2016-12-19 16:37:55","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I","3","Master","1");

INSERT INTO tb_auditoria VALUES("130","tb_usuario_perfil","2016-12-19 16:37:55","D","co_usuario_perfil==10;/co_usuario==3;/co_perfil==1","","10","Master","1");

INSERT INTO tb_auditoria VALUES("131","tb_usuario_perfil","2016-12-19 16:37:56","I","","co_usuario==3;/co_perfil==1","13","Master","1");

INSERT INTO tb_auditoria VALUES("132","tb_usuario_perfil","2016-12-19 16:37:56","I","","co_usuario==3;/co_perfil==2","14","Master","1");

INSERT INTO tb_auditoria VALUES("133","tb_usuario_perfil","2016-12-19 16:37:56","I","","co_usuario==3;/co_perfil==3","15","Master","1");

INSERT INTO tb_auditoria VALUES("134","tb_acesso","2016-12-19 16:39:33","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 16:19:17;/co_usuario==1","dt_fim_acesso==2016-12-19 16:39:33","1","","0");

INSERT INTO tb_auditoria VALUES("135","tb_acesso","2016-12-19 16:39:34","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 16:39:33;/co_usuario==1","dt_fim_acesso==2016-12-19 16:39:34","1","Master","1");

INSERT INTO tb_auditoria VALUES("136","tb_contato","2016-12-19 16:39:59","U","co_contato==3;/nu_tel1==11111111111;/nu_tel2==22222222222;/nu_tel3==;/ds_email==rg@fddgss22.ocm","ds_email==rg@fddgss22.ocm;/nu_tel1==11111111111;/nu_tel2==22222222222","3","Master","1");

INSERT INTO tb_auditoria VALUES("137","tb_endereco","2016-12-19 16:39:59","U","co_endereco==3;/ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/nu_cep==66666666;/no_cidade==nova cidade;/sg_uf==AM","ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/no_cidade==nova cidade;/nu_cep==66666666;/sg_uf==AM","3","Master","1");

INSERT INTO tb_auditoria VALUES("138","tb_pessoa","2016-12-19 16:39:59","U","co_pessoa==3;/nu_cpf==22322191191;/no_pessoa==novo;/nu_rg==9999999;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2000-10-10;/st_sexo==F;/co_contato==3;/co_endereco==3","no_pessoa==novo eee;/nu_cpf==22322191191;/nu_rg==9999999;/dt_nascimento==2000-10-10;/st_sexo==F","3","Master","1");

INSERT INTO tb_auditoria VALUES("139","tb_usuario","2016-12-19 16:39:59","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I","3","Master","1");

INSERT INTO tb_auditoria VALUES("140","tb_usuario_perfil","2016-12-19 16:40:00","D","co_usuario_perfil==13;/co_usuario==3;/co_perfil==1","","13","Master","1");

INSERT INTO tb_auditoria VALUES("141","tb_usuario_perfil","2016-12-19 16:40:00","I","","co_usuario==3;/co_perfil==1","16","Master","1");

INSERT INTO tb_auditoria VALUES("142","tb_usuario_perfil","2016-12-19 16:40:00","I","","co_usuario==3;/co_perfil==2","17","Master","1");

INSERT INTO tb_auditoria VALUES("143","tb_usuario_perfil","2016-12-19 16:40:00","I","","co_usuario==3;/co_perfil==3","18","Master","1");

INSERT INTO tb_auditoria VALUES("144","tb_imagem","2016-12-19 16:43:48","U","co_imagem==3;/ds_caminho==","ds_caminho==novo-eee-58582a641b6ae.jpg","3","Master","1");

INSERT INTO tb_auditoria VALUES("145","tb_contato","2016-12-19 16:43:48","U","co_contato==3;/nu_tel1==11111111111;/nu_tel2==22222222222;/nu_tel3==;/ds_email==rg@fddgss22.ocm","ds_email==rg@fddgss22.ocm;/nu_tel1==11111111111;/nu_tel2==22222222222","3","Master","1");

INSERT INTO tb_auditoria VALUES("146","tb_endereco","2016-12-19 16:43:48","U","co_endereco==3;/ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/nu_cep==66666666;/no_cidade==nova cidade;/sg_uf==AM","ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/no_cidade==nova cidade;/nu_cep==66666666;/sg_uf==AM","3","Master","1");

INSERT INTO tb_auditoria VALUES("147","tb_pessoa","2016-12-19 16:43:48","U","co_pessoa==3;/nu_cpf==22322191191;/no_pessoa==novo eee;/nu_rg==9999999;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2000-10-10;/st_sexo==F;/co_contato==3;/co_endereco==3","no_pessoa==novo eee;/nu_cpf==22322191191;/nu_rg==9999999;/dt_nascimento==2000-10-10;/st_sexo==F","3","Master","1");

INSERT INTO tb_auditoria VALUES("148","tb_usuario","2016-12-19 16:43:48","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I","3","Master","1");

INSERT INTO tb_auditoria VALUES("149","tb_usuario_perfil","2016-12-19 16:43:48","D","co_usuario_perfil==16;/co_usuario==3;/co_perfil==1","","16","Master","1");

INSERT INTO tb_auditoria VALUES("150","tb_usuario_perfil","2016-12-19 16:43:48","I","","co_usuario==3;/co_perfil==1","19","Master","1");

INSERT INTO tb_auditoria VALUES("151","tb_usuario_perfil","2016-12-19 16:43:48","I","","co_usuario==3;/co_perfil==2","20","Master","1");

INSERT INTO tb_auditoria VALUES("152","tb_usuario_perfil","2016-12-19 16:43:48","I","","co_usuario==3;/co_perfil==3","21","Master","1");

INSERT INTO tb_auditoria VALUES("153","tb_imagem","2016-12-19 16:44:31","U","co_imagem==3;/ds_caminho==novo-eee-58582a641b6ae.jpg","ds_caminho==","3","Master","1");

INSERT INTO tb_auditoria VALUES("154","tb_contato","2016-12-19 16:44:31","U","co_contato==3;/nu_tel1==11111111111;/nu_tel2==22222222222;/nu_tel3==;/ds_email==rg@fddgss22.ocm","ds_email==rg@fddgss22.ocm;/nu_tel1==11111111111;/nu_tel2==22222222222","3","Master","1");

INSERT INTO tb_auditoria VALUES("155","tb_endereco","2016-12-19 16:44:32","U","co_endereco==3;/ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/nu_cep==66666666;/no_cidade==nova cidade;/sg_uf==AM","ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/no_cidade==nova cidade;/nu_cep==66666666;/sg_uf==AM","3","Master","1");

INSERT INTO tb_auditoria VALUES("156","tb_pessoa","2016-12-19 16:44:32","U","co_pessoa==3;/nu_cpf==22322191191;/no_pessoa==novo eee;/nu_rg==9999999;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2000-10-10;/st_sexo==F;/co_contato==3;/co_endereco==3","no_pessoa==novo eee;/nu_cpf==22322191191;/nu_rg==9999999;/dt_nascimento==2000-10-10;/st_sexo==F","3","Master","1");

INSERT INTO tb_auditoria VALUES("157","tb_usuario","2016-12-19 16:44:32","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==I;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==A","3","Master","1");

INSERT INTO tb_auditoria VALUES("158","tb_usuario_perfil","2016-12-19 16:44:32","D","co_usuario_perfil==19;/co_usuario==3;/co_perfil==1","","19","Master","1");

INSERT INTO tb_auditoria VALUES("159","tb_usuario_perfil","2016-12-19 16:44:32","I","","co_usuario==3;/co_perfil==1","22","Master","1");

INSERT INTO tb_auditoria VALUES("160","tb_usuario_perfil","2016-12-19 16:44:32","I","","co_usuario==3;/co_perfil==2","23","Master","1");

INSERT INTO tb_auditoria VALUES("161","tb_usuario_perfil","2016-12-19 16:44:32","I","","co_usuario==3;/co_perfil==3","24","Master","1");

INSERT INTO tb_auditoria VALUES("162","tb_acesso","2016-12-19 16:45:10","I","","ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/co_usuario==3;/dt_inicio_acesso==2016-12-19 16:45:10;/dt_fim_acesso==2016-12-19 16:45:10","2","","0");

INSERT INTO tb_auditoria VALUES("163","tb_acesso","2016-12-19 16:45:10","U","","dt_fim_acesso==2016-12-19 16:45:10","0","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("164","tb_acesso","2016-12-19 16:45:24","U","","dt_fim_acesso==2016-12-19 16:45:24","0","","0");

INSERT INTO tb_auditoria VALUES("165","tb_acesso","2016-12-19 16:45:24","U","","dt_fim_acesso==2016-12-19 16:45:24","0","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("166","tb_imagem","2016-12-19 16:45:33","U","co_imagem==3;/ds_caminho==","ds_caminho==novo-eee-58582acdc441e.jpg","3","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("167","tb_contato","2016-12-19 16:45:34","U","co_contato==3;/nu_tel1==11111111111;/nu_tel2==22222222222;/nu_tel3==;/ds_email==rg@fddgss22.ocm","ds_email==rg@fddgss22.ocm;/nu_tel1==11111111111;/nu_tel2==22222222222","3","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("168","tb_endereco","2016-12-19 16:45:34","U","co_endereco==3;/ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/nu_cep==66666666;/no_cidade==nova cidade;/sg_uf==AM","ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/no_cidade==nova cidade;/nu_cep==66666666;/sg_uf==AM","3","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("169","tb_pessoa","2016-12-19 16:45:34","U","co_pessoa==3;/nu_cpf==22322191191;/no_pessoa==novo eee;/nu_rg==9999999;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2000-10-10;/st_sexo==F;/co_contato==3;/co_endereco==3","no_pessoa==novo eee;/nu_cpf==22322191191;/nu_rg==9999999;/dt_nascimento==2000-10-10;/st_sexo==F","3","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("170","tb_usuario","2016-12-19 16:45:34","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==A;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==A","3","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("171","tb_usuario_perfil","2016-12-19 16:45:34","D","co_usuario_perfil==22;/co_usuario==3;/co_perfil==1","","22","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("172","tb_usuario_perfil","2016-12-19 16:45:34","I","","co_usuario==3;/co_perfil==1","25","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("173","tb_usuario_perfil","2016-12-19 16:45:34","I","","co_usuario==3;/co_perfil==2","26","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("174","tb_usuario_perfil","2016-12-19 16:45:34","I","","co_usuario==3;/co_perfil==3","27","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("175","tb_acesso","2016-12-19 16:45:44","U","","dt_fim_acesso==2016-12-19 16:45:44","0","","0");

INSERT INTO tb_auditoria VALUES("176","tb_acesso","2016-12-19 16:45:44","U","","dt_fim_acesso==2016-12-19 16:45:44","0","Master, Coordenador, Membro","3");

INSERT INTO tb_auditoria VALUES("177","tb_acesso","2016-12-19 16:45:53","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 16:39:34;/co_usuario==1","dt_fim_acesso==2016-12-19 16:45:53","1","","0");

INSERT INTO tb_auditoria VALUES("178","tb_acesso","2016-12-19 16:45:53","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 16:45:53;/co_usuario==1","dt_fim_acesso==2016-12-19 16:45:53","1","Master","1");

INSERT INTO tb_auditoria VALUES("179","tb_imagem","2016-12-19 16:46:04","U","co_imagem==3;/ds_caminho==novo-eee-58582acdc441e.jpg","ds_caminho==","3","Master","1");

INSERT INTO tb_auditoria VALUES("180","tb_contato","2016-12-19 16:46:04","U","co_contato==3;/nu_tel1==11111111111;/nu_tel2==22222222222;/nu_tel3==;/ds_email==rg@fddgss22.ocm","ds_email==rg@fddgss22.ocm;/nu_tel1==11111111111;/nu_tel2==22222222222","3","Master","1");

INSERT INTO tb_auditoria VALUES("181","tb_endereco","2016-12-19 16:46:04","U","co_endereco==3;/ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/nu_cep==66666666;/no_cidade==nova cidade;/sg_uf==AM","ds_endereco==novo endereco;/ds_complemento==novo complemento;/ds_bairro==novo bairro;/no_cidade==nova cidade;/nu_cep==66666666;/sg_uf==AM","3","Master","1");

INSERT INTO tb_auditoria VALUES("182","tb_pessoa","2016-12-19 16:46:04","U","co_pessoa==3;/nu_cpf==22322191191;/no_pessoa==novo eee;/nu_rg==9999999;/dt_cadastro==2016-12-19 16:25:53;/dt_nascimento==2000-10-10;/st_sexo==F;/co_contato==3;/co_endereco==3","no_pessoa==novo eee;/nu_cpf==22322191191;/nu_rg==9999999;/dt_nascimento==2000-10-10;/st_sexo==F","3","Master","1");

INSERT INTO tb_auditoria VALUES("183","tb_usuario","2016-12-19 16:46:04","U","co_usuario==3;/ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==A;/dt_cadastro==2016-12-19 11:23:41;/co_imagem==3;/co_pessoa==3","ds_senha==123456**;/ds_code==TVRJek5EVTJLaW89;/st_status==A","3","Master","1");

INSERT INTO tb_auditoria VALUES("184","tb_usuario_perfil","2016-12-19 16:46:04","D","co_usuario_perfil==25;/co_usuario==3;/co_perfil==1","","25","Master","1");

INSERT INTO tb_auditoria VALUES("185","tb_usuario_perfil","2016-12-19 16:46:05","I","","co_usuario==3;/co_perfil==3","28","Master","1");

INSERT INTO tb_auditoria VALUES("186","tb_acesso","2016-12-19 16:47:05","U","","dt_fim_acesso==2016-12-19 16:47:05","0","","0");

INSERT INTO tb_auditoria VALUES("187","tb_acesso","2016-12-19 16:47:05","U","","dt_fim_acesso==2016-12-19 16:47:05","0","Membro","3");

INSERT INTO tb_auditoria VALUES("188","tb_acesso","2016-12-19 16:47:23","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 16:45:53;/co_usuario==1","dt_fim_acesso==2016-12-19 16:47:23","1","","0");

INSERT INTO tb_auditoria VALUES("189","tb_acesso","2016-12-19 16:47:23","U","co_acesso==1;/ds_session_id==sj9p2cj9lv9r6a45oar2ds3mc4;/dt_inicio_acesso==2016-12-19 10:15:52;/dt_fim_acesso==2016-12-19 16:47:23;/co_usuario==1","dt_fim_acesso==2016-12-19 16:47:23","1","Master","1");




DROP TABLE IF EXISTS tb_contato;


CREATE TABLE `tb_contato` (
  `co_contato` int(11) NOT NULL AUTO_INCREMENT,
  `nu_tel1` varchar(15) NOT NULL,
  `nu_tel2` varchar(15) DEFAULT NULL,
  `nu_tel3` varchar(15) DEFAULT NULL,
  `ds_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`co_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO tb_contato VALUES("1","6193274991","","","leonardomcbessa@gmail.com");

INSERT INTO tb_contato VALUES("2","6193055454","","","maria@gmail.com");

INSERT INTO tb_contato VALUES("3","11111111111","22222222222","","rg@fddgss22.ocm");




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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO tb_endereco VALUES("1","342534634 6t3tger","","","","","DF");

INSERT INTO tb_endereco VALUES("2","um qualquer em aguas lindas","Complemento","Bairro","22222222","Águas lindas","GO");

INSERT INTO tb_endereco VALUES("3","novo endereco","novo complemento","novo bairro","66666666","nova cidade","AM");




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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;





DROP TABLE IF EXISTS tb_funcionalidade;


CREATE TABLE `tb_funcionalidade` (
  `co_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `no_funcionalidade` varchar(150) NOT NULL,
  `ds_rota` varchar(250) NOT NULL,
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT 'A - Ativo / I - Inativo',
  PRIMARY KEY (`co_funcionalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


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




DROP TABLE IF EXISTS tb_imagem;


CREATE TABLE `tb_imagem` (
  `co_imagem` int(10) NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO tb_imagem VALUES("1","");

INSERT INTO tb_imagem VALUES("2","maria-karlene-ramos-lima-5857d039a8b2d.jpg");

INSERT INTO tb_imagem VALUES("3","");




DROP TABLE IF EXISTS tb_inscricao;


CREATE TABLE `tb_inscricao` (
  `co_inscricao` int(10) unsigned NOT NULL,
  `ds_pastoral` text,
  `ds_retiro` varchar(1) DEFAULT NULL,
  `ds_membro_ativo` varchar(1) DEFAULT 'N',
  `ds_situacao_atual_grupo` int(1) DEFAULT NULL,
  `co_evento` int(10) unsigned NOT NULL,
  `nu_camisa` int(1) NOT NULL,
  `no_responsavel` varchar(50) NOT NULL,
  `nu_tel_responsavel` varchar(15) NOT NULL,
  `ds_descricao` text NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`co_inscricao`,`co_pessoa`),
  KEY `fk_tb_membro_retiro_tb_retiro1_idx` (`co_evento`),
  KEY `fk_TB_INSCRICAO_TB_PESSOA1_idx` (`co_pessoa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;





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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





DROP TABLE IF EXISTS tb_pagamento;


CREATE TABLE `tb_pagamento` (
  `co_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_total` decimal(10,0) DEFAULT NULL,
  `nu_valor_pago` decimal(10,0) DEFAULT NULL,
  `nu_parcelas` int(11) DEFAULT NULL,
  `tp_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciado / I - Iniciado / C - Concluido',
  `ds_observacao` text,
  `co_inscricao` int(10) unsigned NOT NULL,
  `co_tipo_pagamento` int(11) NOT NULL,
  PRIMARY KEY (`co_pagamento`,`co_inscricao`,`co_tipo_pagamento`),
  KEY `fk_TB_PAGAMENTO_TB_INSCRICAO1_idx` (`co_inscricao`),
  KEY `fk_TB_PAGAMENTO_TB_TIPO_PAGAMENTO1_idx` (`co_tipo_pagamento`),
  CONSTRAINT `fk_TB_PAGAMENTO_TB_INSCRICAO1` FOREIGN KEY (`co_inscricao`) REFERENCES `tb_inscricao` (`co_inscricao`),
  CONSTRAINT `fk_TB_PAGAMENTO_TB_TIPO_PAGAMENTO1` FOREIGN KEY (`co_tipo_pagamento`) REFERENCES `tb_tipo_pagamento` (`co_tipo_pagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





DROP TABLE IF EXISTS tb_parcelamento;


CREATE TABLE `tb_parcelamento` (
  `co_parcelamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_parcela` int(11) DEFAULT NULL,
  `nu_valor_parcela` decimal(10,0) DEFAULT NULL,
  `nu_valor_parcela_pago` decimal(10,0) DEFAULT NULL,
  `dt_vencimento` date DEFAULT NULL,
  `dt_vencimento_pago` date DEFAULT NULL,
  `ds_observacao` text,
  `co_pagamento` int(11) NOT NULL,
  PRIMARY KEY (`co_parcelamento`,`co_pagamento`),
  KEY `fk_TB_PARCELAMENTO_TB_PAGAMENTO1_idx` (`co_pagamento`),
  CONSTRAINT `fk_TB_PARCELAMENTO_TB_PAGAMENTO1` FOREIGN KEY (`co_pagamento`) REFERENCES `tb_pagamento` (`co_pagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





DROP TABLE IF EXISTS tb_perfil;


CREATE TABLE `tb_perfil` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL,
  `st_status` varchar(1) DEFAULT 'I',
  PRIMARY KEY (`co_perfil`),
  UNIQUE KEY `co_perfil_UNIQUE` (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO tb_perfil VALUES("1","Master","A");

INSERT INTO tb_perfil VALUES("2","Coordenador","I");

INSERT INTO tb_perfil VALUES("3","Membro","I");




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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


INSERT INTO tb_perfil_funcionalidade VALUES("1","1","1");

INSERT INTO tb_perfil_funcionalidade VALUES("2","2","5");

INSERT INTO tb_perfil_funcionalidade VALUES("3","2","6");

INSERT INTO tb_perfil_funcionalidade VALUES("4","3","6");




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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO tb_pessoa VALUES("1","72681438187","Leonardo Machado Carvalho Bessa","2077811","2016-10-31 00:00:00","1984-07-06","M","1","1");

INSERT INTO tb_pessoa VALUES("2","01304694160","Maria Karlene Ramos Lima","102030","2016-12-19 10:19:05","1986-08-24","F","2","2");

INSERT INTO tb_pessoa VALUES("3","22322191191","novo eee","9999999","2016-12-19 16:25:53","2000-10-10","F","3","3");




DROP TABLE IF EXISTS tb_tipo_pagamento;


CREATE TABLE `tb_tipo_pagamento` (
  `co_tipo_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `ds_tipo_pagamento` varchar(45) DEFAULT NULL,
  `sg_tipo_pagamento` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_tipo_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


INSERT INTO tb_tipo_pagamento VALUES("1","Dinheiro","DI");

INSERT INTO tb_tipo_pagamento VALUES("2","Cartão de Crédito","CC");




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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario VALUES("1","123456**","TVRJek5EVTJLaW89","A","2016-10-31 00:00:00","1","1");

INSERT INTO tb_usuario VALUES("2","123456**","TVRJek5EVTJLaW89","I","2016-12-19 10:19:05","2","2");

INSERT INTO tb_usuario VALUES("3","123456**","TVRJek5EVTJLaW89","A","2016-12-19 11:23:41","3","3");




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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario_perfil VALUES("1","1","1");

INSERT INTO tb_usuario_perfil VALUES("2","2","3");

INSERT INTO tb_usuario_perfil VALUES("28","3","3");




