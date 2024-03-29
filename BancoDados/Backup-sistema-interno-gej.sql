-- Atualizado em: 14/12/2022 00:22:17
-- AMBIENTE: http://localhost/gej/
-- BANCO: gejdo247_gej

CREATE DATABASE IF NOT EXISTS gejdo247_gej;

USE gejdo247_gej;

DROP TABLE IF EXISTS TB_ACESSO;


CREATE TABLE `TB_ACESSO` (
  `co_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `ds_session_id` varchar(255) DEFAULT NULL,
  `dt_inicio_acesso` datetime DEFAULT NULL,
  `dt_fim_acesso` datetime DEFAULT NULL,
  `tp_situacao` varchar(1) DEFAULT NULL COMMENT 'A - Ativo / F - Finalizado',
  `co_usuario` int(10) NOT NULL,
  `co_trafego` int(11) NOT NULL,
  PRIMARY KEY (`co_acesso`,`co_usuario`,`co_trafego`),
  KEY `fk_TB_ACESSO_TB_USUARIO1_idx` (`co_usuario`),
  KEY `fk_TB_ACESSO_TB_TRAFEGO1_idx` (`co_trafego`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_ACESSO VALUES('1','865brjif94o5mehqsgr4bh3dut','2022-12-12 23:10:48','2022-12-12 23:49:13','F','1','1716');




DROP TABLE IF EXISTS TB_ADMINISTRATIVO;


CREATE TABLE `TB_ADMINISTRATIVO` (
  `co_administrativo` int(11) NOT NULL AUTO_INCREMENT,
  `nu_fundo_caixa` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`co_administrativo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_ADMINISTRATIVO VALUES('1','11520.00');




DROP TABLE IF EXISTS TB_AGENDA;


CREATE TABLE `TB_AGENDA` (
  `co_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `ds_descricao` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_dia_todo` varchar(1) DEFAULT NULL COMMENT 'N - Não / S - SIm',
  `dt_inicio` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_endereco` int(11) NOT NULL,
  `co_categoria_agenda` int(10) NOT NULL,
  `co_evento` int(11) NOT NULL,
  PRIMARY KEY (`co_agenda`,`co_usuario`,`co_endereco`,`co_categoria_agenda`,`co_evento`),
  KEY `fk_TB_AGENDA_TB_USUARIO1_idx` (`co_usuario`),
  KEY `fk_TB_AGENDA_TB_ENDERECO1_idx` (`co_endereco`),
  KEY `fk_TB_AGENDA_TB_CATEGORIA_AGENDA1_idx` (`co_categoria_agenda`),
  KEY `fk_TB_AGENDA_TB_EVENTO1_idx` (`co_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;


INSERT INTO TB_AGENDA VALUES('1','<p>foi legal muito massa</p>\n\n\n','2018-04-08 00:28:20','N','2018-02-10 06:00:00','2018-02-13 21:00:00','VI Retiro de Carnaval Santifique-se','1','238','5','1');

INSERT INTO TB_AGENDA VALUES('2','<p>Espiritualidade de cada elo - Explica&ccedil;&atilde;o e din&acirc;mica (duas verdades e uma mentira: forma de conhecimento)</p>\n\n\n','2018-04-12 19:07:49','N','2018-04-14 15:30:00','',' Espiritualidade de cada elo ','16','240','3','0');

INSERT INTO TB_AGENDA VALUES('3','<p>Festival de Pastel&nbsp;</p>\n\n\n','2018-04-12 19:24:27','N','2018-04-14 20:00:00','','Festival de Pastel ','16','241','5','2');

INSERT INTO TB_AGENDA VALUES('4','<p>E o nosso super evento</p>\n\n\n','2018-04-18 23:24:34','N','2018-07-06 20:00:00','2018-07-08 18:00:00','II Abastecimento Espiritual GEJ','7','1','5','3');

INSERT INTO TB_AGENDA VALUES('5','<p>Nosso encoro fla</p>\n\n\n','2018-04-28 20:21:52','N','2018-04-28 20:00:00','','Encontro semanal','1','243','3','0');

INSERT INTO TB_AGENDA VALUES('6','<p>Forma&ccedil;&atilde;o&nbsp;para todos os membros obrigat&oacute;rio a participa&ccedil;&atilde;o nessa super forma&ccedil;&atilde;o favor comparecer</p>\n\n\n','2018-04-28 20:26:47','N','2018-05-26 15:00:00','2018-05-26 18:00:00','Formação Geral Elos','1','244','4','0');

INSERT INTO TB_AGENDA VALUES('7','','2018-05-09 19:33:31','N','2018-03-17 20:00:00','','retiro EAC','16','249','8','0');

INSERT INTO TB_AGENDA VALUES('8','','2018-05-09 19:37:44','N','2018-03-18 17:00:00','','reunião geral ','16','250','1','0');

INSERT INTO TB_AGENDA VALUES('9','','2018-05-09 19:40:58','N','2018-03-24 15:00:00','','encontro semanal : oração','16','251','3','0');

INSERT INTO TB_AGENDA VALUES('10','','2018-05-09 19:44:43','N','2018-03-30 20:00:00','','encenação sobre a ultima estação da vida crucis','16','252','8','0');

INSERT INTO TB_AGENDA VALUES('11','','2018-05-09 20:04:41','N','2018-04-01 12:00:00','','almoço de pascoa','16','253','5','0');

INSERT INTO TB_AGENDA VALUES('12','','2018-05-09 20:15:37','N','2018-04-07 15:00:00','','intensivão da mesa redonda','16','254','3','0');

INSERT INTO TB_AGENDA VALUES('13','<p><strong>n&atilde;o ouve por motivos maior&nbsp;</strong></p>\n\n\n','2018-05-09 20:22:17','N','2018-04-08 05:00:00','','bazar !','16','255','5','0');

INSERT INTO TB_AGENDA VALUES('14','','2018-05-09 20:29:40','N','2018-04-19 19:30:00','','Adoração ','16','256','5','0');

INSERT INTO TB_AGENDA VALUES('15','','2018-05-09 20:33:38','N','2018-04-21 15:00:00','','formação de Elos ','16','257','3','0');

INSERT INTO TB_AGENDA VALUES('16','','2018-05-09 20:39:32','N','2018-05-05 15:00:00','','formação por elos ','16','258','3','0');

INSERT INTO TB_AGENDA VALUES('17','','2018-05-09 20:42:37','N','2018-05-06 15:00:00','','vida fraterna','16','259','5','0');

INSERT INTO TB_AGENDA VALUES('18','','2018-05-09 20:45:45','N','2018-05-06 05:00:00','','bazar !','16','260','5','0');

INSERT INTO TB_AGENDA VALUES('19','','2018-05-09 20:49:55','N','2018-05-12 14:50:00','','Tarde com Maria ','16','261','3','0');

INSERT INTO TB_AGENDA VALUES('20','','2018-05-09 21:04:55','N','2018-05-12 20:00:00','','intercessão  ','16','262','8','0');

INSERT INTO TB_AGENDA VALUES('22','<p><strong>um momento de nos preparar !&nbsp;<br />\n\n\num retiro fantastico, que com certeza ajuda na caminhada !</strong><br />\n\n\n&nbsp;</p>\n\n\n','2018-05-09 21:25:27','N','2018-05-18 19:00:00','2018-05-20 20:00:00','retiro de silêncio para o conselho e coordenadores','16','264','5','0');

INSERT INTO TB_AGENDA VALUES('23','','2018-05-10 19:14:39','N','2018-05-19 14:30:00','','encontro semanal ','16','265','3','0');

INSERT INTO TB_AGENDA VALUES('26','','2018-05-10 19:33:09','N','2018-05-27 07:00:00','','Encontro da AJS','16','268','5','0');

INSERT INTO TB_AGENDA VALUES('27','<p><strong>Uma Super Form&ccedil;&atilde;o Greal para o Crescimento do Grupo !</strong></p>\n\n\n','2018-05-10 19:36:35','N','2018-06-02 15:00:00','','Formação Geral','16','269','4','0');

INSERT INTO TB_AGENDA VALUES('28','<p><strong>Um momento de lazer, algo necessario,&nbsp;</strong></p>\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n','2018-05-10 19:40:19','N','2018-06-02 20:00:00','','Cine GEJ','16','270','5','0');

INSERT INTO TB_AGENDA VALUES('29','','2018-05-10 19:42:26','N','2018-06-09 15:00:00','','formação de Elos ','16','271','4','0');

INSERT INTO TB_AGENDA VALUES('30','<p><strong>O trabalho edifica o homem !</strong></p>\n\n\n','2018-05-10 19:45:25','N','2018-06-10 05:00:00','','Bazar !','16','272','5','0');

INSERT INTO TB_AGENDA VALUES('31','','2018-05-10 19:47:24','N','2018-06-16 15:00:00','','vida de oração','16','273','8','0');

INSERT INTO TB_AGENDA VALUES('32','','2018-05-10 19:50:03','N','2018-06-23 15:00:00','','Formação Geral','16','274','4','0');

INSERT INTO TB_AGENDA VALUES('33','','2018-05-10 19:53:09','N','2018-06-23 20:00:00','','Aviva GEJ','16','275','5','0');

INSERT INTO TB_AGENDA VALUES('34','','2018-05-10 19:55:25','N','2018-06-24 13:00:00','','Fraternidade','16','276','5','0');

INSERT INTO TB_AGENDA VALUES('35','','2018-05-10 19:58:08','N','2018-06-30 15:00:00','','formação de Elos ','16','277','4','0');

INSERT INTO TB_AGENDA VALUES('36','','2018-07-20 10:48:51','N','2018-07-21 19:00:00','2018-07-22 07:00:00','IV Vigília alegria que vem de Deus','1','285','5','17');

INSERT INTO TB_AGENDA VALUES('37','','2018-12-26 22:37:49','N','2019-03-02 06:00:00','2019-03-05 20:00:00','7º Retiro de Carnaval Santifique-se','1','286','5','0');

INSERT INTO TB_AGENDA VALUES('38','','2019-12-16 21:41:53','N','2020-02-22 08:00:00','2020-02-25 18:00:00','8º Retiro de Carnaval Santifique-se','1','393','5','0');




DROP TABLE IF EXISTS TB_AGENDA_EVENTO;


CREATE TABLE `TB_AGENDA_EVENTO` (
  `co_agenda_evento` int(11) NOT NULL,
  `co_agenda` int(11) NOT NULL,
  `co_evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO TB_AGENDA_EVENTO VALUES('1','0','0');

INSERT INTO TB_AGENDA_EVENTO VALUES('2','0','0');

INSERT INTO TB_AGENDA_EVENTO VALUES('0','0','0');




DROP TABLE IF EXISTS TB_ANOTACAO;


CREATE TABLE `TB_ANOTACAO` (
  `co_anotacao` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_anotacao`,`co_historia`),
  KEY `fk_TB_ANOTACAO_TB_HISTORIA1_idx` (`co_historia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_ASSINANTE;


CREATE TABLE `TB_ASSINANTE` (
  `co_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_expiracao` date DEFAULT NULL COMMENT 'Data da expiração de utilização do sistema',
  `st_dados_complementares` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - inativo',
  `tp_assinante` varchar(1) DEFAULT 'M' COMMENT 'M  - Matriz / F - Filial',
  `co_empresa` int(11) NOT NULL,
  `co_pessoa` int(11) NOT NULL COMMENT 'Responsável pelo Assinante',
  PRIMARY KEY (`co_assinante`,`co_empresa`,`co_pessoa`),
  KEY `fk_TB_ASSINANTE_TB_EMPRESA1_idx` (`co_empresa`),
  KEY `fk_TB_ASSINANTE_TB_PESSOA1_idx` (`co_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_ASSINANTE_FILIAL;


CREATE TABLE `TB_ASSINANTE_FILIAL` (
  `co_assinante_filial` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL COMMENT 'Assinante Filial',
  `co_assinante_matriz` int(11) NOT NULL,
  PRIMARY KEY (`co_assinante_filial`,`co_assinante`,`co_assinante_matriz`),
  KEY `fk_TB_ASSINANTE_FILIAL_TB_ASSINANTE1_idx` (`co_assinante`),
  KEY `fk_TB_ASSINANTE_FILIAL_TB_ASSINANTE_MATRIZ1_idx` (`co_assinante_matriz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_ASSINANTE_MATRIZ;


CREATE TABLE `TB_ASSINANTE_MATRIZ` (
  `co_assinante_matriz` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL COMMENT 'Assinante Matriz',
  PRIMARY KEY (`co_assinante_matriz`,`co_assinante`),
  KEY `fk_TB_ASSINANTE_MATRIZ_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_AUDITORIA;


CREATE TABLE `TB_AUDITORIA` (
  `co_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `ds_perfil_usuario` text DEFAULT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_auditoria`,`co_usuario`),
  KEY `fk_TB_AUDITORIA_TB_USUARIO1_idx` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


INSERT INTO TB_AUDITORIA VALUES('1','2022-12-12 23:34:12','Coord. Administrativo, Coordenadores, Membro, Master','1');

INSERT INTO TB_AUDITORIA VALUES('2','2022-12-12 23:35:01','Coord. Administrativo, Coordenadores, Membro, Master','1');

INSERT INTO TB_AUDITORIA VALUES('3','2022-12-12 23:50:21','Usuário Web Gej','1');

INSERT INTO TB_AUDITORIA VALUES('4','2022-12-13 23:45:32','Usuário Web Gej','1');

INSERT INTO TB_AUDITORIA VALUES('5','2022-12-14 00:22:16','Usuário Web Gej','1');




DROP TABLE IF EXISTS TB_AUDITORIA_ITENS;


CREATE TABLE `TB_AUDITORIA_ITENS` (
  `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item_anterior` varchar(255) DEFAULT NULL,
  `ds_item_atual` varchar(255) DEFAULT NULL,
  `ds_campo` varchar(120) DEFAULT NULL,
  `co_auditoria_tabela` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`),
  KEY `fk_TB_AUDITORIA_ITENS_TB_AUDITORIA_TABELA1_idx` (`co_auditoria_tabela`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;


INSERT INTO TB_AUDITORIA_ITENS VALUES('1','147','147','co_endereco','1');

INSERT INTO TB_AUDITORIA_ITENS VALUES('2','Condomínio Vila Paraíso Bl A Apt 103','Condomínio Vila Paraíso Bl A Apt 103','ds_endereco','1');

INSERT INTO TB_AUDITORIA_ITENS VALUES('3','','','ds_complemento','1');

INSERT INTO TB_AUDITORIA_ITENS VALUES('4','Vila Paraíso','Vila Paraíso','ds_bairro','1');

INSERT INTO TB_AUDITORIA_ITENS VALUES('5','72879282','72879282','nu_cep','1');

INSERT INTO TB_AUDITORIA_ITENS VALUES('6','Valparaíso Goiás ','Valparaíso Goiás ','no_cidade','1');

INSERT INTO TB_AUDITORIA_ITENS VALUES('7','GO','GO','sg_uf','1');

INSERT INTO TB_AUDITORIA_ITENS VALUES('8','150','150','co_contato','2');

INSERT INTO TB_AUDITORIA_ITENS VALUES('9','61993055454','61993055454','nu_tel1','2');

INSERT INTO TB_AUDITORIA_ITENS VALUES('10','','','nu_tel2','2');

INSERT INTO TB_AUDITORIA_ITENS VALUES('11','','','nu_tel3','2');

INSERT INTO TB_AUDITORIA_ITENS VALUES('12','','','nu_tel_0800','2');

INSERT INTO TB_AUDITORIA_ITENS VALUES('13','Karlenerlima@gmail.com','Karlenerlima@gmail.com','ds_email','2');

INSERT INTO TB_AUDITORIA_ITENS VALUES('14','','','ds_site','2');

INSERT INTO TB_AUDITORIA_ITENS VALUES('15','','','ds_facebook','2');

INSERT INTO TB_AUDITORIA_ITENS VALUES('16','','','ds_twitter','2');

INSERT INTO TB_AUDITORIA_ITENS VALUES('17','','','ds_instagram','2');

INSERT INTO TB_AUDITORIA_ITENS VALUES('18','147','147','co_pessoa','3');

INSERT INTO TB_AUDITORIA_ITENS VALUES('19','01304694160','01304694160','nu_cpf','3');

INSERT INTO TB_AUDITORIA_ITENS VALUES('20','MARIA KARLENE RAMOS LIMA','MARIA KARLENE RAMOS LIMA','no_pessoa','3');

INSERT INTO TB_AUDITORIA_ITENS VALUES('21','2410507','2410507','nu_rg','3');

INSERT INTO TB_AUDITORIA_ITENS VALUES('22','2019-01-26 21:01:19','','dt_cadastro','3');

INSERT INTO TB_AUDITORIA_ITENS VALUES('23','1986-08-24','1986-08-24','dt_nascimento','3');

INSERT INTO TB_AUDITORIA_ITENS VALUES('24','F','F','st_sexo','3');

INSERT INTO TB_AUDITORIA_ITENS VALUES('25','147','147','co_endereco','3');

INSERT INTO TB_AUDITORIA_ITENS VALUES('26','150','150','co_contato','3');

INSERT INTO TB_AUDITORIA_ITENS VALUES('27','0','','co_imagem','3');

INSERT INTO TB_AUDITORIA_ITENS VALUES('28','','','ds_pastoral','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('29','','N','ds_retiro','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('30','','2022-12-12 23:34:12','dt_cadastro','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('31','','N','ds_membro_ativo','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('32','','','ds_situacao_atual_grupo','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('33','','3','nu_camisa','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('34','','LLLRRJJ','no_responsavel','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('35','','24242433235','nu_tel_responsavel','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('36','','A','st_status','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('37','','','ds_descricao','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('38','','','ds_alimentacao','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('39','','','ds_medicacao','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('40','','','ds_motivo','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('41','','N','st_equipe_trabalho','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('42','','147','co_pessoa','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('43','','38','co_evento','4');

INSERT INTO TB_AUDITORIA_ITENS VALUES('44','','160','nu_total','5');

INSERT INTO TB_AUDITORIA_ITENS VALUES('45','','1','nu_parcelas','5');

INSERT INTO TB_AUDITORIA_ITENS VALUES('46','','558','co_inscricao','5');

INSERT INTO TB_AUDITORIA_ITENS VALUES('47','','566','co_pagamento','6');

INSERT INTO TB_AUDITORIA_ITENS VALUES('48','','2','co_tipo_pagamento','6');

INSERT INTO TB_AUDITORIA_ITENS VALUES('49','','1','nu_parcela','6');

INSERT INTO TB_AUDITORIA_ITENS VALUES('50','','160','nu_valor_parcela','6');

INSERT INTO TB_AUDITORIA_ITENS VALUES('51','','2022-12-12','dt_vencimento','6');

INSERT INTO TB_AUDITORIA_ITENS VALUES('52','1','1','co_endereco','7');

INSERT INTO TB_AUDITORIA_ITENS VALUES('53','qr 403 conjunto 10 casa 28','qr 403 conjunto 10 casa 28','ds_endereco','7');

INSERT INTO TB_AUDITORIA_ITENS VALUES('54','','','ds_complemento','7');

INSERT INTO TB_AUDITORIA_ITENS VALUES('55','Samambaia Norte','Samambaia Norte','ds_bairro','7');

INSERT INTO TB_AUDITORIA_ITENS VALUES('56','72319111','72319111','nu_cep','7');

INSERT INTO TB_AUDITORIA_ITENS VALUES('57','Brasília','Brasília','no_cidade','7');

INSERT INTO TB_AUDITORIA_ITENS VALUES('58','DF','DF','sg_uf','7');

INSERT INTO TB_AUDITORIA_ITENS VALUES('59','1','1','co_contato','8');

INSERT INTO TB_AUDITORIA_ITENS VALUES('60','61993274991','61993274991','nu_tel1','8');

INSERT INTO TB_AUDITORIA_ITENS VALUES('61','6130826060','6130826060','nu_tel2','8');

INSERT INTO TB_AUDITORIA_ITENS VALUES('62','','','nu_tel3','8');

INSERT INTO TB_AUDITORIA_ITENS VALUES('63','','','nu_tel_0800','8');

INSERT INTO TB_AUDITORIA_ITENS VALUES('64','leonardomcbessa@gmail.com','leonardomcbessa@gmail.com','ds_email','8');

INSERT INTO TB_AUDITORIA_ITENS VALUES('65','','','ds_site','8');

INSERT INTO TB_AUDITORIA_ITENS VALUES('66','','','ds_facebook','8');

INSERT INTO TB_AUDITORIA_ITENS VALUES('67','','','ds_twitter','8');

INSERT INTO TB_AUDITORIA_ITENS VALUES('68','','','ds_instagram','8');

INSERT INTO TB_AUDITORIA_ITENS VALUES('69','1','1','co_pessoa','9');

INSERT INTO TB_AUDITORIA_ITENS VALUES('70','72681438187','72681438187','nu_cpf','9');

INSERT INTO TB_AUDITORIA_ITENS VALUES('71','LEONARDO MACHADO CARVALHO BESSA','LEONARDO MACHADO CARVALHO BESSA','no_pessoa','9');

INSERT INTO TB_AUDITORIA_ITENS VALUES('72','2077811','2077811','nu_rg','9');

INSERT INTO TB_AUDITORIA_ITENS VALUES('73','2019-01-05 17:26:32','','dt_cadastro','9');

INSERT INTO TB_AUDITORIA_ITENS VALUES('74','1984-07-06','1984-07-06','dt_nascimento','9');

INSERT INTO TB_AUDITORIA_ITENS VALUES('75','M','M','st_sexo','9');

INSERT INTO TB_AUDITORIA_ITENS VALUES('76','1','1','co_endereco','9');

INSERT INTO TB_AUDITORIA_ITENS VALUES('77','1','1','co_contato','9');

INSERT INTO TB_AUDITORIA_ITENS VALUES('78','0','','co_imagem','9');

INSERT INTO TB_AUDITORIA_ITENS VALUES('79','','','ds_pastoral','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('80','','N','ds_retiro','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('81','','2022-12-12 23:50:21','dt_cadastro','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('82','','N','ds_membro_ativo','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('83','','','ds_situacao_atual_grupo','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('84','','8','nu_camisa','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('85','','LLLRRJJ','no_responsavel','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('86','','3232142142','nu_tel_responsavel','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('87','','A','st_status','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('88','','','ds_descricao','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('89','','','ds_alimentacao','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('90','','','ds_medicacao','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('91','','','ds_motivo','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('92','','N','st_equipe_trabalho','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('93','','1','co_pessoa','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('94','','39','co_evento','10');

INSERT INTO TB_AUDITORIA_ITENS VALUES('95','463','463','co_endereco','11');

INSERT INTO TB_AUDITORIA_ITENS VALUES('96','QR 403 Conjunto 10','QR 403 Conjunto 10','ds_endereco','11');

INSERT INTO TB_AUDITORIA_ITENS VALUES('97','','','ds_complemento','11');

INSERT INTO TB_AUDITORIA_ITENS VALUES('98','Samambaia Norte (Samambaia)','Samambaia Norte (Samambaia)','ds_bairro','11');

INSERT INTO TB_AUDITORIA_ITENS VALUES('99','72319111','72319111','nu_cep','11');

INSERT INTO TB_AUDITORIA_ITENS VALUES('100','Brasília','Brasília','no_cidade','11');

INSERT INTO TB_AUDITORIA_ITENS VALUES('101','DF','DF','sg_uf','11');

INSERT INTO TB_AUDITORIA_ITENS VALUES('102','421','421','co_contato','12');

INSERT INTO TB_AUDITORIA_ITENS VALUES('103','61984365127','61984365127','nu_tel1','12');

INSERT INTO TB_AUDITORIA_ITENS VALUES('104','6134592144','6134592144','nu_tel2','12');

INSERT INTO TB_AUDITORIA_ITENS VALUES('105','','','nu_tel3','12');

INSERT INTO TB_AUDITORIA_ITENS VALUES('106','','','nu_tel_0800','12');

INSERT INTO TB_AUDITORIA_ITENS VALUES('107','emailnovo@gmail.com','emailnovo@gmail.com','ds_email','12');

INSERT INTO TB_AUDITORIA_ITENS VALUES('108','','','ds_site','12');

INSERT INTO TB_AUDITORIA_ITENS VALUES('109','','','ds_facebook','12');

INSERT INTO TB_AUDITORIA_ITENS VALUES('110','','','ds_twitter','12');

INSERT INTO TB_AUDITORIA_ITENS VALUES('111','','','ds_instagram','12');

INSERT INTO TB_AUDITORIA_ITENS VALUES('112','418','418','co_pessoa','13');

INSERT INTO TB_AUDITORIA_ITENS VALUES('113','12345678909','12345678909','nu_cpf','13');

INSERT INTO TB_AUDITORIA_ITENS VALUES('114','JULIANA DE OLIVEIRA SANTOS','JULIANA DE OLIVEIRA SANTOS','no_pessoa','13');

INSERT INTO TB_AUDITORIA_ITENS VALUES('115','','','nu_rg','13');

INSERT INTO TB_AUDITORIA_ITENS VALUES('116','2020-02-19 21:33:15','','dt_cadastro','13');

INSERT INTO TB_AUDITORIA_ITENS VALUES('117','2003-11-20','2003-11-20','dt_nascimento','13');

INSERT INTO TB_AUDITORIA_ITENS VALUES('118','F','F','st_sexo','13');

INSERT INTO TB_AUDITORIA_ITENS VALUES('119','463','463','co_endereco','13');

INSERT INTO TB_AUDITORIA_ITENS VALUES('120','421','421','co_contato','13');

INSERT INTO TB_AUDITORIA_ITENS VALUES('121','0','','co_imagem','13');

INSERT INTO TB_AUDITORIA_ITENS VALUES('122','','','ds_pastoral','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('123','','N','ds_retiro','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('124','','2022-12-13 23:45:33','dt_cadastro','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('125','','N','ds_membro_ativo','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('126','','','ds_situacao_atual_grupo','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('127','','6','nu_camisa','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('128','','LLLRRJJ','no_responsavel','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('129','','11222345563','nu_tel_responsavel','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('130','','A','st_status','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('131','','','ds_descricao','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('132','','','ds_alimentacao','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('133','','','ds_medicacao','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('134','','','ds_motivo','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('135','','N','st_equipe_trabalho','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('136','','418','co_pessoa','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('137','','39','co_evento','14');

INSERT INTO TB_AUDITORIA_ITENS VALUES('138','','180','nu_total','15');

INSERT INTO TB_AUDITORIA_ITENS VALUES('139','','1','nu_parcelas','15');

INSERT INTO TB_AUDITORIA_ITENS VALUES('140','','560','co_inscricao','15');

INSERT INTO TB_AUDITORIA_ITENS VALUES('141','','567','co_pagamento','16');

INSERT INTO TB_AUDITORIA_ITENS VALUES('142','','1','co_tipo_pagamento','16');

INSERT INTO TB_AUDITORIA_ITENS VALUES('143','','1','nu_parcela','16');

INSERT INTO TB_AUDITORIA_ITENS VALUES('144','','180','nu_valor_parcela','16');

INSERT INTO TB_AUDITORIA_ITENS VALUES('145','','2022-12-14','dt_vencimento','16');

INSERT INTO TB_AUDITORIA_ITENS VALUES('146','','180','nu_total','17');

INSERT INTO TB_AUDITORIA_ITENS VALUES('147','','1','nu_parcelas','17');

INSERT INTO TB_AUDITORIA_ITENS VALUES('148','','559','co_inscricao','17');

INSERT INTO TB_AUDITORIA_ITENS VALUES('149','','568','co_pagamento','18');

INSERT INTO TB_AUDITORIA_ITENS VALUES('150','','1','co_tipo_pagamento','18');

INSERT INTO TB_AUDITORIA_ITENS VALUES('151','','1','nu_parcela','18');

INSERT INTO TB_AUDITORIA_ITENS VALUES('152','','180','nu_valor_parcela','18');

INSERT INTO TB_AUDITORIA_ITENS VALUES('153','','2022-12-14','dt_vencimento','18');




DROP TABLE IF EXISTS TB_AUDITORIA_TABELA;


CREATE TABLE `TB_AUDITORIA_TABELA` (
  `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT,
  `no_tabela` varchar(45) DEFAULT NULL,
  `tp_operacao` varchar(1) DEFAULT NULL,
  `co_registro` int(11) DEFAULT NULL,
  `co_auditoria` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`),
  KEY `fk_TB_AUDITORIA_TABELA_TB_AUDITORIA1_idx` (`co_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


INSERT INTO TB_AUDITORIA_TABELA VALUES('1','TB_ENDERECO','U','147','1');

INSERT INTO TB_AUDITORIA_TABELA VALUES('2','TB_CONTATO','U','150','1');

INSERT INTO TB_AUDITORIA_TABELA VALUES('3','TB_PESSOA','U','147','1');

INSERT INTO TB_AUDITORIA_TABELA VALUES('4','TB_INSCRICAO','I','558','1');

INSERT INTO TB_AUDITORIA_TABELA VALUES('5','TB_PAGAMENTO','I','566','2');

INSERT INTO TB_AUDITORIA_TABELA VALUES('6','TB_PARCELAMENTO','I','1827','2');

INSERT INTO TB_AUDITORIA_TABELA VALUES('7','TB_ENDERECO','U','1','3');

INSERT INTO TB_AUDITORIA_TABELA VALUES('8','TB_CONTATO','U','1','3');

INSERT INTO TB_AUDITORIA_TABELA VALUES('9','TB_PESSOA','U','1','3');

INSERT INTO TB_AUDITORIA_TABELA VALUES('10','TB_INSCRICAO','I','559','3');

INSERT INTO TB_AUDITORIA_TABELA VALUES('11','TB_ENDERECO','U','463','4');

INSERT INTO TB_AUDITORIA_TABELA VALUES('12','TB_CONTATO','U','421','4');

INSERT INTO TB_AUDITORIA_TABELA VALUES('13','TB_PESSOA','U','418','4');

INSERT INTO TB_AUDITORIA_TABELA VALUES('14','TB_INSCRICAO','I','560','4');

INSERT INTO TB_AUDITORIA_TABELA VALUES('15','TB_PAGAMENTO','I','567','5');

INSERT INTO TB_AUDITORIA_TABELA VALUES('16','TB_PARCELAMENTO','I','1828','5');

INSERT INTO TB_AUDITORIA_TABELA VALUES('17','TB_PAGAMENTO','I','568','5');

INSERT INTO TB_AUDITORIA_TABELA VALUES('18','TB_PARCELAMENTO','I','1829','5');




DROP TABLE IF EXISTS TB_CAMISA;


CREATE TABLE `TB_CAMISA` (
  `co_camisa` int(11) NOT NULL AUTO_INCREMENT,
  `no_camisa` varchar(80) DEFAULT NULL,
  `tp_pedido` varchar(1) DEFAULT NULL COMMENT 'S - Sim / N - Não * Se a camisa pode fazer pedida ',
  `nu_valor_custo` decimal(8,2) DEFAULT NULL,
  `nu_valor_venda` decimal(8,2) DEFAULT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_camisa`,`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_CAMISA VALUES('1','FOI ELA QUEM TUDO FEZ','S','15.00','25.00','408');




DROP TABLE IF EXISTS TB_CAMISA_COR_CAMISA;


CREATE TABLE `TB_CAMISA_COR_CAMISA` (
  `co_camisa_cor_camisa` int(10) NOT NULL AUTO_INCREMENT,
  `co_camisa` int(11) NOT NULL,
  `co_cor_camisa` int(11) NOT NULL,
  PRIMARY KEY (`co_camisa_cor_camisa`,`co_camisa`,`co_cor_camisa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


INSERT INTO TB_CAMISA_COR_CAMISA VALUES('6','1','6');




DROP TABLE IF EXISTS TB_CATEGORIA_AGENDA;


CREATE TABLE `TB_CATEGORIA_AGENDA` (
  `co_categoria_agenda` int(10) NOT NULL AUTO_INCREMENT,
  `no_categoria_agenda` varchar(80) DEFAULT NULL,
  `ds_cor` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`co_categoria_agenda`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO TB_CATEGORIA_AGENDA VALUES('1','Reunião','green');

INSERT INTO TB_CATEGORIA_AGENDA VALUES('2','Ensaio','default');

INSERT INTO TB_CATEGORIA_AGENDA VALUES('3','Encontro','purple');

INSERT INTO TB_CATEGORIA_AGENDA VALUES('4','Formação','orange');

INSERT INTO TB_CATEGORIA_AGENDA VALUES('5','Evento','beige');

INSERT INTO TB_CATEGORIA_AGENDA VALUES('6','Intercessão','black');

INSERT INTO TB_CATEGORIA_AGENDA VALUES('7','Outros','warning');

INSERT INTO TB_CATEGORIA_AGENDA VALUES('8','Missão','gray');




DROP TABLE IF EXISTS TB_CATEGORIA_EVENTO;


CREATE TABLE `TB_CATEGORIA_EVENTO` (
  `co_categoria_evento` int(11) NOT NULL AUTO_INCREMENT,
  `no_categoria_evento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`co_categoria_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO TB_CATEGORIA_EVENTO VALUES('1','Outros');

INSERT INTO TB_CATEGORIA_EVENTO VALUES('2','Retiro');

INSERT INTO TB_CATEGORIA_EVENTO VALUES('3','Vigília');

INSERT INTO TB_CATEGORIA_EVENTO VALUES('4','Intercessão');

INSERT INTO TB_CATEGORIA_EVENTO VALUES('5','Pregação');

INSERT INTO TB_CATEGORIA_EVENTO VALUES('6','Adoração');

INSERT INTO TB_CATEGORIA_EVENTO VALUES('7','Tarde de Integração');




DROP TABLE IF EXISTS TB_COMISSAO_EVENTO;


CREATE TABLE `TB_COMISSAO_EVENTO` (
  `co_comissao_evento` int(8) NOT NULL AUTO_INCREMENT,
  `co_evento` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_comissao_evento`,`co_evento`,`co_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_CONTATO;


CREATE TABLE `TB_CONTATO` (
  `co_contato` int(11) NOT NULL AUTO_INCREMENT,
  `nu_tel1` varchar(15) DEFAULT NULL,
  `nu_tel2` varchar(15) DEFAULT NULL,
  `nu_tel3` varchar(15) DEFAULT NULL,
  `nu_tel_0800` varchar(30) DEFAULT NULL,
  `ds_email` varchar(150) DEFAULT NULL,
  `ds_site` varchar(100) DEFAULT NULL,
  `ds_facebook` varchar(90) DEFAULT NULL,
  `ds_twitter` varchar(90) DEFAULT NULL,
  `ds_instagram` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`co_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTATO VALUES('1','61993274991','6130826060','','','leonardomcbessa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('2','61995022920','61982512602','','','amandatominaginha@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('3','6134588070','6134588070','','','Iborges257@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('4','61984800492','','','','nayane.duda11@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('6','61991639445','','','','henriquecarvalhohca@outlook.com','','','','');

INSERT INTO TB_CONTATO VALUES('7','61998216342','61982610934','','','amandasliima@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('8','61993898324','61994186538','','','jerlanesilva06@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('9','61982361967','61993077479','','','Joaopereira407@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('10','61992850286','','','','karenn.geovanna@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('11','61996330428','','','','lilirtais@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('13','6192198414','6182701888','','','frabriceras15@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('14','61982609125','61981214179','','','sirlei_arq@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('16','61995637226','61993166755','','','lucaslcr33@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('17','6184873069','6132086444','','','wallissonirvans@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('18','61992775753','','','','manuela@marangoni.adm.br','','','','');

INSERT INTO TB_CONTATO VALUES('19','61933593574','61933593574','','','Priscila.thelight@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('20','61995753532','61991157538','','','mercia.batista@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('21','61984269119','','','','v.cristinabsb.vc@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('23','61991869697','','','','alunodiogoetb@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('24','61992458959','6133778341','','','cassiorodriguescastro08@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('25','61986725701','61986521612','','','mendescatherine44@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('26','61995021840','','','','tominagaiv@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('27','61999567013','61999567013','','','thaynaratonhaz@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('29','61984640608','61992953159','','','Ericastephanie2015@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('31','61993151297','','','','lucrece.neri@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('32','61985667861','61999043516','','','pedroaugustopacheco12@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('33','61996979071','6135972532','','','Gsouzat28@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('34','6195121814','','','','Rauldmc52@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('36','61991984370','','','','lukka_bessa@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('37','61991058681','','','','lele.403@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('39','61983013717','','','','vitoriaprudenciol@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('41','61985548484','6134586918','','','gabimsouza_@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('42','61985548484','61986090912','','','gabimsouza_@hotmail.con','','','','');

INSERT INTO TB_CONTATO VALUES('44','61993872602','61930814590','','','vitorhbarroso@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('47','61992563934','61992563934','','','carlos.lima.18@hotmai.com','','','','');

INSERT INTO TB_CONTATO VALUES('48','61991893526','','','','larissamesquita98@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('49','61995801026','','','','carloschristian03@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('50','61986194836','61985671063','','','Pcdanielle12@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('51','61930395165','61999800644','','','Babynhalindinha_@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('52','61993288306','6191621818','','','paulin_adt@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('53','61992516402','61992226161','','','Karollina@live.com','','','','');

INSERT INTO TB_CONTATO VALUES('54','','','','','','','','','');

INSERT INTO TB_CONTATO VALUES('55','61984727547','','','','Gabiribas746@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('56','61993935517','61981975822','','','monique.vieira999@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('57','61992660496','','','','Leazevedob@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('58','61992971837','','','','thaisksm23@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('59','61991426490','61999661640','','','leticia.martinsousa@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('60','61991839164','','','','keitermaia@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('61','61983298074','61991124059','','','ronielrodrigues.96@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('62','6191066240','6191066240','','','lililasp@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('63','61991981891','61992240268','','','Thamiires369@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('64','61984199148','61992225838','','','annacarolinyr46@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('65','61985376731','61982364375','','','clarissevitoriafranca@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('66','','','','','','','','','');

INSERT INTO TB_CONTATO VALUES('67','6193826548','6192641163','','','Joycefe.lopes@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('68','61992030663','61991698705','','','sabreu192@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('69','61985784112','61985175039','','','Kaasilva0720@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('70','61992771024','','','','leticiapsilva03@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('71','61982158580','61981307057','','','Evelynk039@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('72','61986665765','61985390854','','','taynararibeirodelima@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('73','61985548484','61934586918','','','adriel_eas22k@live.com','','','','');

INSERT INTO TB_CONTATO VALUES('74','61993259985','6134594937','','','Linnekerlima@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('75','61985539668','','','','kamilaf.silva@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('76','61983049879','','','','tayanne734@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('77','996657709','992263829','','','Luamar305@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('78','6133598986','6133598986','','','carolinadossantoscfds@outlook.com','','','','');

INSERT INTO TB_CONTATO VALUES('79','62998583534','6185548484','','','garciamendesisabella@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('81','61982892125','61981173673','','','Labussolo@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('82','61999620997','61999620997','','','Mayllasbalzani@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('83','61996489605','61996489605','','','jessikalayanerocha@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('84','61992346540','61991091755','','','brena.kga.03@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('85','61985664072','61985315392','','','jdarc.foliveira@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('86','61998762818','6135418425','','','deivsonef@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('87','61992847325','','','','Macleal.vic@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('88','61985032230','','','','Gustavinho.rgs@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('89','61986785106','61985494269','','','edylenedacruzsilvalene@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('90','61982999300','','','','gleice.izazavedo@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('92','61983701441','61985494269','','','barbosagabrieldasilva9@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('93','61982377985','61982207943','','','Palomaferreira710@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('94','6199446855','6193240068','','','Marialeticiaestrela2011@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('95','66995622616','61986061761','','','danielsalmeidacontato@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('97','61995250255','61992240268','','','thaynara.mkt@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('98','61992023817','61996520935','','','Jbiancapsdf@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('99','55619825702','61992516402','','','diego46ziinho@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('100','61996681204','','','','maysapd@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('102','61985547353','61981392235','','','nandasc2000@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('103','61998812820','61996834444','','','orlinda_bizerra@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('105','61995438917','','','','patttynevesaa@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('106','','','','','','','','','');

INSERT INTO TB_CONTATO VALUES('107','61984995380','','','','fehs2gomes@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('108','61992797426','6133770288','','','pires.h.pedro@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('109','61984352161','','','','ronnytominaga@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('110','61999350611','61996528144','','','Biancaceci.vieira02@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('111','61991683338','61995326987','','','Victorhuugo1@outlook.com','','','','');

INSERT INTO TB_CONTATO VALUES('112','61998590100','','','','tayane.moreira16@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('113','6199457429','6191389257','','','martinhakarina1980@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('114','61993836591','6133793695','','','anasantos17021997@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('115','61991901852','','','','brunolsouza20@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('116','61981006608','6199422906','','','Sonmurillo@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('117','61991827340','','','','Nathalyapimentel.np@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('118','61991031121','','','','Pedrogt20@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('119','61991535796','6133843340','','','dentistajoaocarlos@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('120','61992357123','61983701441','','','jcamila92@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('121','61996289579','61995941255','','','laradesousaalmeida@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('122','6186466962','61982515049','','','larissanobrelnc@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('124','6185749300','6132575264','','','abruna268@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('125','61998727815','','','','honoriodebora1@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('126','61999646727','61999376262','','','mariaclaudia11@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('127','61986084526','61993836591','','','Yaraanjinha2011@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('128','61992626767','','','','baraunaelton9@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('129','61983104193','6191660308','','','Vitorribeirogatao37@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('130','61992198408','61992703294','','','Taynararoodriguess@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('132','61984692820','','','','romulomiran@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('133','61985101194','61993615001','','','dory193@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('134','61998581287','','','','thaisxavieraraujo@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('135','61982512602','61992203000','','','Leila.tominaga@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('136','61982608328','61982484443','','','maquiagem.mari@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('137','61993700259','6134598623','','','lidianeadm2010@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('138','6130131416','','','','kamilaf.silvac@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('139','6186339292','61984131001','','','Brunnsalvatora@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('140','61998458464','61999910092','','','Jhonyferreirafsa@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('142','61985948276','','','','Jeffersonfillipe7@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('143','61995956387','61992001998','','','Yankalive5@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('144','61993308785','61992623343','','','Gabrielle-dailu@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('145','61998785437','61985739058','','','Simonelinda40@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('146','61985739058','61985785437','','','Wesley@evolucaoauditoria.com.br','','','','');

INSERT INTO TB_CONTATO VALUES('147','61999709770','','','','smyjapa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('148','61992687554','61984235595','','','larissacharcon@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('149','61985590616','61986380391','','','freitasmariaedu@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('150','61993055454','','','','Karlenerlima@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('160','61984453926','','','','ceci.rns123@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('161','61995904410','61992829568','','','Beatrizjbfly@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('162','61985489302','','','','Mathkurama27@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('163','61983478390','','','','wesley418418@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('164','61986379360','','','','Victorsamueel@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('165','61995726439','','','','sicahow.sc@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('166','61996430509','','','','mineirob15@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('167','61996140871','6185545695','','','Josebarros100@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('168','61999884614','','','','Guilherme123@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('169','61992859045','','','','guilherme.gato401@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('170','61982998075','61981054652','','','marindemaria@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('171','61993116666','','','','Beatriizfd14@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('172','61982263494','61982366410','','','letipereira16.ls@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('173','61983622499','61982366410','','','Joselmadecacia@yahoo.com.br','','','','');

INSERT INTO TB_CONTATO VALUES('174','61998174233','61998174233','','','samaradesconzi@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('175','61986066824','','','','wesley102002@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('176','61992108927','6130131416','','','ludimilavoadora88@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('177','61996776286','61936423002','','','deisefsa22@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('178','61985732593','61935591097','','','fernanda.karla.15@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('179','61999096307','','','','nãotem@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('180','61985175039','61984449230','','','Kamillysilva05122001@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('181','61986174379','61999422906','','','Sonmurillo@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('182','61981006608','','','','Kartetguy@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('183','61199637881','61999290418','','','Lidianemarine@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('184','61981486412','','','','lucas211bispo@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('185','61981795422','','','','fernanda_bsb_96@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('186','61996632002','','','','monikenardi18@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('187','6186642107','','','','Arlan615s@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('188','61981706212','61981285244','','','leonara98@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('189','61984256270','61984827324','','','keysongabriel2@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('190','61984256270','61984827324','','','Bethrodriques27@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('191','55619855113','','','','Amandapimentel1103@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('192','61993126972','61991774916','','','ramos.amaury96@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('193','61995462963','61985546595','','','luiz.m.barros211@gmail.cm','','','','');

INSERT INTO TB_CONTATO VALUES('194','62994952349','62991235044','','','jose2311@bol.com.br','','','','');

INSERT INTO TB_CONTATO VALUES('195','61985771820','61986096929','','','Luybrennosantosdesouza@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('196','61996714127','61982915499','','','xavihernandopitt@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('197','61994380902','61992687082','','','higorodrigues.78o@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('199','61994141290','61992687082','','','hellenthaisd@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('200','61991098481','61985310904','','','diegorsilva211@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('201','61998205779','','','','soniaramaia@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('202','61981917532','61981917532','','','Raquelcosta2223@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('203','61981767001','','','','julia.farajb@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('204','61982751500','','','','matheusmartinsdacosta21@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('205','61982059124','61992999241','','','Sempremense2009@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('206','6198152345','','','','karenmialichii@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('207','61986171345','6134591017','','','nãotememail@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('208','6198182882','','','','poly.lima270@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('209','6185602319','6130814590','','','jonatasfradique403@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('210','6183262286','6195706299','','','Laisfofa13@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('211','61986153155','61981220563','','','analidiaholanda2@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('212','61996260189','61996771042','','','Alexgehlhaar33@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('213','61996585605','61999910092','','','Joyce.sbpromotora@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('214','55613358491','61996252678','','','Joycemarquessantana@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('215','61994400275','','','','tiagomorera1@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('216','61992473325','61996532057','','','bibikathleen.ak18@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('217','6198271871','6199584033','','','marialuizacrm5@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('218','61993618785','','','','ellielgoodboy@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('219','6185864901','6192804665','','','dannegreirotv@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('220','61993849880','','','','carlos.clonic@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('221','61995174376','','','','naotememail@gmail.com.br','','','','');

INSERT INTO TB_CONTATO VALUES('222','61993347240','61993347240','','','naotenhoemail@home.com','','','','');

INSERT INTO TB_CONTATO VALUES('223','61992723686','61992070798','','','Guilhermeryukaii@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('224','6195752955','61996744435','','','Erikapradoestudos@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('225','61985254241','','','','Rafaelfontenele123@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('226','6185970132','6181043721','','','neuzaferreirabrito@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('227','61985774596','61984366157','','','adilsoarques@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('228','61985215677','61991710919','','','brunna.trabalhos@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('229','61985864901','61985105244','','','Jcqm21@yahoo.com','','','','');

INSERT INTO TB_CONTATO VALUES('230','61983086107','61981215733','','','joaovictorcoelho042@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('231','61986155790','61985767206','','','Camilagabrieldf@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('232','61996117709','','','','vitorvalentinbenetti@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('233','61981574990','61992956576','','','emyminile@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('234','61998360693','','','','alexsandramaiberg@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('235','61981215733','61981046496','','','Ribamar.ph@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('236','61995479913','','','','fhms1996@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('237','61991998045','61991998045','','','Suyane.tallita@outlook.com','','','','');

INSERT INTO TB_CONTATO VALUES('238','61991148026','','','','windsor.alexandre@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('239','61994191238','','','','saviomaria04@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('240','6130130388','61991811369','','','alvesjackson403@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('241','6194241851','','','','rafaeel19silva@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('243','61984833727','61981413591','','','Brennodaniel123@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('244','61986241449','','','','ana.anacarolinas@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('245','61985116994','','','','ariane.nunes768@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('246','61992797493','','','','melnek@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('247','61986622428','','','','italofrnd@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('248','61993577852','','','','rafael-bsb-df@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('249','16991987278','','','','edwirges_macedo@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('250','61993738715','','','','daniela_almeida2015@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('251','61981748741','','','','ekajvilela@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('252','61991357814','','','','bragainocentes@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('253','61984560036','61996994604','','','mklismann35@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('254','61992655667','61999748391','','','marimelosalles@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('255','61993095014','','','','thais_cristinacampos@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('256','61981678354','61999615844','','','mariafefe.atriz@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('257','61998633304','','','','reelkaponte@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('258','61998165812','61996130446','','','geovannafsa16@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('259','61996226916','','','','gordinha_gbbsb@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('260','61994160085','','','','KeyceCristina515@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('261','61993184494','6133726988','','','giovannabbarros0@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('262','61983146557','6182263156','','','briellenoliveira@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('263','61992309208','61994186712','','','simoesb599@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('264','61994052838','61992927004','','','gustavoalves3019@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('265','61999289043','','','','evilene.deocleciano@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('266','61996365916','','','','ester_cristinnaa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('267','61984816809','','','','mvmtomaz@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('268','61995649480','','','','cabilo60@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('269','61985695417','','','','daniloarantessebastiao@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('270','61984579180','','','','isabelacristinacapitulino@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('271','61984675237','6133771162','','','Mariaclarasantosribeiro2@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('274','61984415908','','','','ray.olive@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('275','61984769223','','','','polyanaveloso98@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('276','61992982542','','','','jeaneandrade9@yahoo.com.br','','','','');

INSERT INTO TB_CONTATO VALUES('277','61983309202','6198001500','','','Leticiamirandamoraes@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('278','61996143499','61996143499','','','joaovictorluziano19@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('279','61998288794','6133717497','','','Aline_carvalho.lima@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('280','61992695206','61992895241','','','juceliasantos53@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('281','61992035805','61991673874','','','ayrtonferreiralopes@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('282','61992669658','61985160924','','','matheus.25humberto@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('283','61981773752','61991595972','','','Gabrielmelise50@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('284','6141412552','61981444737','','','josiane-pl@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('285','61998555791','','','','raqueelfreire72@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('286','61998663009','','','','Gabsmangabeiralima@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('287','61983444114','6133590830','','','natalia_soaresdf@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('288','61996354123','','','','Moreira.anaflavia@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('289','61999796394','','','','alandf95@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('290','6192659364','61992101477','','','Mliveira.leninha@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('291','99982031686','61999911885','','','victoriatina@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('292','61995227713','','','','adrianafisioterapia17@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('293','61986314081','','','','nathaliasaraiva.s@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('294','61982397775','','','','Carolromeirom@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('295','61993058167','','','','joaopmnobrega@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('296','61986540712','61984765848','','','keniamaria.costa@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('297','61983658563','61981452800','','','Majuh899@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('298','61996763980','','','','lorrane18rocha@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('299','61993983131','61983155216','','','priscilamartins213@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('300','61985572017','','','','andy.ncarvalho5@gmail.com.br','','','','');

INSERT INTO TB_CONTATO VALUES('301','61998106244','','','','karinamendesb@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('302','61999686754','','','','marceloabi55@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('303','61991198563','','','','akaroliny2@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('304','61984486590','','','','brunos-santos@outlook.com','','','','');

INSERT INTO TB_CONTATO VALUES('305','61985291353','','','','asawelington@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('306','61985291353','','','','anapaula.cdsi@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('307','61986621223','','','','sarahguimaraes07@icloud.com','','','','');

INSERT INTO TB_CONTATO VALUES('308','6198663277','61981794640','','','sandra.raquel.rb@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('309','61995916549','61992415372','','','dunyfg33@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('310','61995704813','','','','lucasbf22@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('311','61982102428','','','','luuh.bessa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('312','61984248986','','','','tiofofao_tialu@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('313','61982181194','','','','stephanie.p.silva@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('314','61986444870','','','','dirijanafaixa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('315','61995840193','','','','luisfellype2312@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('316','6199620511','6194398870','','','Dudu.ddtank@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('317','61996727854','','','','barbarasany90@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('318','61992157269','','','','madu.cardoso.araujo@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('319','61982183465','','','','flaviacarolinaf@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('320','61986695277','6133737021','','','yasmimofs@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('321','61991434270','61991434270','','','Renata.francisca022@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('322','55613567703','61986032543','','','tiagosteferson@live.com','','','','');

INSERT INTO TB_CONTATO VALUES('323','61986032543','','','','biancagms96@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('324','61984666000','61996727854','','','jv.ferreira.araujo@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('325','61985254513','','','','gabrielalvino8@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('326','61981901136','','','','larissa_correia21@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('327','61992230252','61991334352','','','barbarasousa141516@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('328','61995661446','61984823219','','','crisnui.santana@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('329','61994188533','','','','wandersonsouza1313@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('330','61981331765','61984179640','','','clarinha.regis16@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('331','61986664016','61986175756','','','mariarita.o.feitosa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('332','61982193081','61981979118','','','luciannka@bol.com.br','','','','');

INSERT INTO TB_CONTATO VALUES('333','61995962739','','','','vitoraraujo.ma@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('334','6199626700','','','','rhaydcastro@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('335','61998312250','','','','pvrbr12@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('336','61983610589','','','','Boejanderwill@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('337','61986594108','61999248096','','','Thiagovilasboas@outlook.com','','','','');

INSERT INTO TB_CONTATO VALUES('338','61984919850','6185403024','','','isabellamayther17@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('339','61991607594','','','','gabihxd@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('340','61996538554','61996528144','','','henriqetecagri15@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('341','61985445452','','','','marianallmaia@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('342','61999682312','','','','carlos.caca41@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('343','61991219557','','','','pedrotbbt@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('344','61998077575','','','','savionhosab@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('345','61998343240','','','','Gabriele_scg@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('346','61986632777','61981794640','','','nataliciooliveiraalmeida@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('347','61993275149','61985445452','','','thiagonunesneves_14@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('348','61993232293','','','','nclaro655@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('349','61986053149','','','','steffanysobrinho@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('350','61986085835','61986094630','','','rafaelarafacho@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('351','61991042514','','','','rafaosandprimd@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('352','61986782939','61982044117','','','nandinhacosta10@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('353','61996015194','','','','sandracarmenn2@gmail.com','','Sandra Carmen','','');

INSERT INTO TB_CONTATO VALUES('354','61984972188','','','','gabysitaro@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('355','61981343657','60991871618','','','gabriellesc.22@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('356','61983640343','','','','tiagovitorrr@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('357','55619997718','','','','larizawentz@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('358','61982344449','','','','Priscila.cbrito2013@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('359','61992372208','','','','Dudurr3322@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('360','61991268383','','','','mcspaoli@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('361','61984503577','6133783064','','','anagrazielle18@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('362','61996860866','61996860866','','','ludmilla10.com4@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('363','61995634425','6133549115','','','Emily203.tuck@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('364','61981993332','61982126769','','','anneraphaella777jesus@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('365','61996937674','61996335497','','','gioboneca5@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('366','61985116994','','','','ariane.nunes768@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('367','61993412427','61985502784','','','barbaraaa615@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('368','6182715452','6181250664','','','marinamelodutra596@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('369','61991931190','61991621818','','','thandresya-bianca@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('370','61995645562','','','','laviniapereira0008@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('371','61998110601','','','','maryananunes2010@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('372','61996015194','61986287182','','','guiguibarbosa3@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('373','61996679741','61996281500','','','barbaralopess2015@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('374','61996318649','6199059643','','','diasgabbi@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('375','61999970119','','','','sarasilvaprima@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('376','61995722490','61993302525','','','donlucasr@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('377','61996654569','61985073416','','','aysousab@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('378','61985981596','61984096086','','','annecaaroline21@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('379','61999554980','','','','alicedesouzavazdasilva@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('380','61998521650','61983177029','','','marianadossantossilva417@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('381','61985487500','61984519899','','','Marianateixeira042@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('382','6181292064','61986175756','','','emanuelafeitosaa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('383','61996522309','61999891912','','','brunoserra2309@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('384','61999477300','','','','Isabelatei001@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('385','61992048501','','','','navesbernard@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('386','61998700142','61999451180','','','Kalilschafler@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('387','61994456063','','','','ryanreisfonte@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('388','6196369621','','','','janaina-fsa@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('389','61981720252','61996369621','','','italojdutra@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('390','61992387018','','','','maraflor42@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('391','61991852909','61984023273','','','Caiotorres406@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('392','61996620391','61996995175','','','malu19509@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('393','61998512640','','','','Matheus2020@gmaio.com','','','','');

INSERT INTO TB_CONTATO VALUES('394','61995666627','61992285200','','','rafaelpaulinodraw@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('395','61991093708','','','','graciene.lemos@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('396','61998487773','','','','anapaulo35@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('397','86999402567','61996300901','','','danielsguedes.94@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('398','06198532660','','','','Mikamanu2019@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('399','61985468711','','','','felippe.silva020@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('400','61982656156','','','','Nataliadelima@outlook.com','','','','');

INSERT INTO TB_CONTATO VALUES('401','61986359581','','','','millaarruda7@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('402','61981181618','','','','marcelafigueiredo@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('403','61981868583','61983342511','','','jonatasgsouza.501@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('404','71993217261','','','','veracord@bol.com.br','','','','');

INSERT INTO TB_CONTATO VALUES('405','61996823298','61996162341','','','taynagomes992@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('406','61999691506','61999691506','','','Matheus Silva','','','','');

INSERT INTO TB_CONTATO VALUES('407','61984118391','','','','laay.sabino.leal@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('408','61982894676','','','','gabrieldealmeida36@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('409','61996994825','61998500071','','','andressa_fsa02@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('410','61994376319','','','','wendellucas567@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('411','61996208339','','','','priscilalopes.fsa@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('412','61998532027','','','','Karinhintz@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('413','61993328926','','','','gabii.oguedes@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('414','6199688761','','','','romanna.ysabelle@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('415','61984822389','','','','guigui.vieira12@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('416','61992961043','','','','laibarroso.maria@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('417','61996741230','','','','Gabrieldealmeida36@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('418','61982364375','61985376731','','','tiagofreirelopes@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('419','61992053385','61982715452','','','Glad131214@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('420','61992425445','61984823219','','','novinhajose2612@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('421','61984365127','6134592144','','','emailnovo@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('422','61998137341','61999584962','','','kaiormendonca01@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('423','61999018613','','','','Kaka080603@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('424','61984544492','','','','marnanda11@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('425','61994040111','','','','douglas123456789@hotmail.com.br','','','','');

INSERT INTO TB_CONTATO VALUES('426','61991334677','','','','polyana222@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('427','61986324729','6132086612','','','filhoedmundo101@gmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('428','61985171511','61991290798','','','deboraveras9@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('429','61982240004','','','','ellem09@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('430','61995031720','','','','janemaezinha@hotmail.com','','','','');

INSERT INTO TB_CONTATO VALUES('431','61996858954','61996551852','','','gglauciacarvalho29@gmail.com','','','','');




DROP TABLE IF EXISTS TB_CONTROLLER;


CREATE TABLE `TB_CONTROLLER` (
  `co_controller` int(11) NOT NULL AUTO_INCREMENT,
  `no_controller` varchar(60) DEFAULT NULL,
  `ds_class_icon` varchar(30) DEFAULT NULL COMMENT 'Classe do Ícone',
  PRIMARY KEY (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


INSERT INTO TB_CONTROLLER VALUES('1','Gestao','clip-data');

INSERT INTO TB_CONTROLLER VALUES('2','Auditoria','fa fa-crosshairs');

INSERT INTO TB_CONTROLLER VALUES('3','Acesso','clip-connection-2');

INSERT INTO TB_CONTROLLER VALUES('4','Funcionalidade','fa fa-outdent');

INSERT INTO TB_CONTROLLER VALUES('5','Perfil','clip-stack-empty');

INSERT INTO TB_CONTROLLER VALUES('6','Usuario','fa fa-group');

INSERT INTO TB_CONTROLLER VALUES('7','Visita','clip-airplane');

INSERT INTO TB_CONTROLLER VALUES('8','Plano','clip-banknote');

INSERT INTO TB_CONTROLLER VALUES('9','Assinante','clip-user-5');

INSERT INTO TB_CONTROLLER VALUES('10','Agenda','fa fa-calendar');

INSERT INTO TB_CONTROLLER VALUES('11','Inscricao','clip-note');

INSERT INTO TB_CONTROLLER VALUES('12','FluxoCaixa','clip-banknote');

INSERT INTO TB_CONTROLLER VALUES('13','Camisa','clip-t-shirt');




DROP TABLE IF EXISTS TB_COR_CAMISA;


CREATE TABLE `TB_COR_CAMISA` (
  `co_cor_camisa` int(11) NOT NULL AUTO_INCREMENT,
  `no_cor_camisa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`co_cor_camisa`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


INSERT INTO TB_COR_CAMISA VALUES('1','Azul');

INSERT INTO TB_COR_CAMISA VALUES('2','Azul Marinho');

INSERT INTO TB_COR_CAMISA VALUES('3','Azul Bebê');

INSERT INTO TB_COR_CAMISA VALUES('4','Amarelo');

INSERT INTO TB_COR_CAMISA VALUES('5','Bege');

INSERT INTO TB_COR_CAMISA VALUES('6','Branco');

INSERT INTO TB_COR_CAMISA VALUES('7','Cinza');

INSERT INTO TB_COR_CAMISA VALUES('8','Dourado');

INSERT INTO TB_COR_CAMISA VALUES('9','Laranja');

INSERT INTO TB_COR_CAMISA VALUES('10','Lilás');

INSERT INTO TB_COR_CAMISA VALUES('11','Marrom');

INSERT INTO TB_COR_CAMISA VALUES('12','Preto');

INSERT INTO TB_COR_CAMISA VALUES('13','Rosa');

INSERT INTO TB_COR_CAMISA VALUES('14','Rosa bebê');

INSERT INTO TB_COR_CAMISA VALUES('15','Roxo');

INSERT INTO TB_COR_CAMISA VALUES('16','Verde');

INSERT INTO TB_COR_CAMISA VALUES('17','Verde Bebê');

INSERT INTO TB_COR_CAMISA VALUES('18','Vermelho');




DROP TABLE IF EXISTS TB_CRONS;


CREATE TABLE `TB_CRONS` (
  `co_cron` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_cron` varchar(70) DEFAULT NULL,
  `ds_sql` text DEFAULT NULL,
  PRIMARY KEY (`co_cron`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_EMPRESA;


CREATE TABLE `TB_EMPRESA` (
  `co_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `no_empresa` varchar(250) DEFAULT NULL COMMENT 'Razão Social\n',
  `no_fantasia` varchar(150) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `nu_cnpj` varchar(20) DEFAULT NULL,
  `nu_insc_estadual` varchar(20) DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL,
  `co_pessoa` int(11) NOT NULL COMMENT 'Pessoa responsável pela empresa\n',
  `co_endereco` int(11) NOT NULL,
  `co_contato` int(11) NOT NULL,
  `co_imagem` int(11) NOT NULL,
  PRIMARY KEY (`co_empresa`,`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`),
  KEY `fk_TB_EMPRESA_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_EMPRESA_TB_ENDERECO1_idx` (`co_endereco`),
  KEY `fk_TB_EMPRESA_TB_CONTATO1_idx` (`co_contato`),
  KEY `fk_TB_EMPRESA_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_ENDERECO;


CREATE TABLE `TB_ENDERECO` (
  `co_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `ds_endereco` varchar(150) DEFAULT NULL,
  `ds_complemento` varchar(100) DEFAULT NULL,
  `ds_bairro` varchar(80) DEFAULT NULL,
  `nu_cep` varchar(12) DEFAULT NULL,
  `no_cidade` varchar(80) DEFAULT NULL,
  `sg_uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8;


INSERT INTO TB_ENDERECO VALUES('1','qr 403 conjunto 10 casa 28','','Samambaia Norte','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('2','Shps 602 chac. 97-A','Setor P.Sul','P.Sul','72236608','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('3','QR 210 Conjunto 21 Casa 19 Samambaia Norte','Casa','Samambaia Norte','72316219','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('4','QR 208 Conjunto 5','','Samambaia Norte (Samambaia)','72316105','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('6','Qs 403 , conj. 10 casa 27','','Samambaia norte','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('7','QR 405 Conj 10 Casa 04','','Samambaia Norte','72319210','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('8','QR 211 conj 03 casa 13','','','72343000','Samambaia Norte','DF');

INSERT INTO TB_ENDERECO VALUES('9','Qr 405 Conj 02 Casa 09','Casa 09','Samambaia','72319202','samambaia norte','DF');

INSERT INTO TB_ENDERECO VALUES('10','Qr 423 Conjunto 03 Casa 24','24','Samambaia Norte','72325203','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('11','cln 314 bloco d apt 210','210','asa norte','70773060','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('13','Qr 421 conjunto 16 casa 03','Casa 03','Samambaia Norte','72325119','Samambaia','DF');

INSERT INTO TB_ENDERECO VALUES('14','Qr 603 chácara 39 cadáveres 30 B','Rua 03 Condomínio Vida Nova','Samambaia Norte','72331100','Samambaia ','DF');

INSERT INTO TB_ENDERECO VALUES('16','Quadra: 425, Conjunto:26','Casa:14','Samambaia Norte','72327027','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('17','Qnp 32 conj C casa 19','','P sul','72236203','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('18','Rua 16 sul','Lote 06 apartamento 801','Águas Claras','','','DF');

INSERT INTO TB_ENDERECO VALUES('19','Qr 213 conjunto 05 casa 09','09','Samambaia','72343105','Brasilía','DF');

INSERT INTO TB_ENDERECO VALUES('20','Qr 310 conjunto 16 casa 18','samambaia sul','samambaia df','72306817','Brasilia ','DF');

INSERT INTO TB_ENDERECO VALUES('21','Qne 2 casa 27','','Taguatinga','72125020','Taguatinga Norte','DF');

INSERT INTO TB_ENDERECO VALUES('23','Quadra 315 conjunto 13','casa 12','Samambaia','72307613','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('24','Qnp 32 conj S casa','01','Psul','72236219','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('25','QS 409','108','Samambaia Norte (Samambaia)','72321530','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('26','QNP 36 Conjunto H','Casa 39','Setor P.Sul','72236608','Ceilândia-DF','DF');

INSERT INTO TB_ENDERECO VALUES('27','qr 210','24 cs 17','','72316225','Brasilia','DF');

INSERT INTO TB_ENDERECO VALUES('29','Qr205 conjunto 2 casa 18','Próximo ao batalhão','Norte','72341202','Samambaia','DF');

INSERT INTO TB_ENDERECO VALUES('31','Qr 403 conjunto 16','Casa 17','Samambaia Norte','72319911','Samambaia Norte','DF');

INSERT INTO TB_ENDERECO VALUES('32','QUADRA QNP 15 CONJUNTO S','33','P.norte','72241619','BRASÍLIA','DF');

INSERT INTO TB_ENDERECO VALUES('33','Rua 4c chácara 2 lote 23A','','Vicente pires','72001605','Brasilia','DF');

INSERT INTO TB_ENDERECO VALUES('34','Qn 211 conjunto 01 casa 35','','Samambaia','72343051','Brasilia','DF');

INSERT INTO TB_ENDERECO VALUES('36','QR 405 Conjunto 21 Casa 26','','Samambaia Norte','72319221','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('37','QR 403 conj 10 casa 28','','Samambaia Norte','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('39','Qr 421 conjunto 09','casa 11','Samambaia Norte','72325110','Samambaia','DF');

INSERT INTO TB_ENDERECO VALUES('41','Qr 118 conjunto 06 lote 09','','Samambaia Sul','72302807','Samambaia ','DF');

INSERT INTO TB_ENDERECO VALUES('42','Qr 118 conjunto 6 lote 9','','Samambaia Sul','72302807','Samambaia ','DF');

INSERT INTO TB_ENDERECO VALUES('44','QR 403 conjunto 09','Casa 18','Samambaia norte','72319110','Samambaia ','DF');

INSERT INTO TB_ENDERECO VALUES('47','Quadra 46 lote 14 santa lucia','Águas lindas 2','Santa lucia','72927535','Águas lindas ','GO');

INSERT INTO TB_ENDERECO VALUES('48','QI 03 Lote 23','','Setor de Industrias','72265030','Ceilândia ','DF');

INSERT INTO TB_ENDERECO VALUES('49','Qi 416 conjunto lote 03','Apartamento 101','Samambaia norte','72320317','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('50','Shps 602 chácara 97 A','Setor p.sul','P.sul','72236608','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('51','QR 414 Conjunto 13 casa 17','Casa 17','Samambaia Norte','72320218','Brasília Df','DF');

INSERT INTO TB_ENDERECO VALUES('52','Qnf 8 lote 35 casa 4','','','72125530','Taguatinga Norte','DF');

INSERT INTO TB_ENDERECO VALUES('53','QR 209 conjunto 5 casa 27','Samambaia morte','Norte','','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('54','Qnd 16 lote 11 ap 103','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('55','Ceilândia sul','SHSN  lote 29 qd 28 ch 58/123 A','Cond. Pinheiro','72236800','Ceilândia ','DF');

INSERT INTO TB_ENDERECO VALUES('56','QNF 8 casa 32','Taguatinga','Taguatinga norte','72125580','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('57','Qr 212 conj 14 casa 15','','Samambaia Norte','72316314','Samambaia','DF');

INSERT INTO TB_ENDERECO VALUES('58','Quadra 02 lote 16 apto. 201','','Águas Bonitas I','72926002','Águas Lindas GO','DF');

INSERT INTO TB_ENDERECO VALUES('59','Qr 212 conj 14 casa 15','','Samambaia','72316314','Samambaia Norte','DF');

INSERT INTO TB_ENDERECO VALUES('60','QR 603 conj. 05','05','SAMAMBAIA NORTE','72331105','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('61','QR 403 CONJUNTO 10 CASA 2I','28','Samambaia','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('62','Qs 406 conjunto G lote 01 ap 01','','Samambaia norte','72318570','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('63','QNP 32 CONJUNTO','Em frente a escola classe 52','P.sul','72236214','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('64','CR 10, Bloco D, Apto 504.','Condomínio Reserva Parque','Parque das Cachoeiras','72872796','Valparaíso de Goiás','GO');

INSERT INTO TB_ENDERECO VALUES('65','QR 609 Conjunto 1','','Samambaia Norte (Samambaia)','72331401','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('66','Quadra 2 Conjunto 1 lote 1','Bloco L AP 402','Paranoá Parque','','Paranoá ','DF');

INSERT INTO TB_ENDERECO VALUES('67','Qr603 chácara 39 rua 4 casa 52A','Condomínio vida nova','Samambaia','72331100','Samambaia ','DF');

INSERT INTO TB_ENDERECO VALUES('68','QD 301 Cj 07 bloco A Apt 1005','Cond. Via Tropical','Samambaia Sul','72300543','Samambaia','DF');

INSERT INTO TB_ENDERECO VALUES('69','Shsps 103 conjunto A casa 31','','Por do sol','','Ceilândia sul','DF');

INSERT INTO TB_ENDERECO VALUES('70','QNF 6','','Taguatinga Norte (Taguatinga)','72125560','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('71','Qr 118 conjunto 06 casa 09','','','72302807','','DF');

INSERT INTO TB_ENDERECO VALUES('72','Qr 405 13 13','13','Samambaia norte','72319213','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('73','qr 405 conjunto 25, casa 05','','samambaia','72319225','Brasilia','DF');

INSERT INTO TB_ENDERECO VALUES('74','QE 01 CONJ M CASA 115','Guarã','Guará','','Distrito Federal','DF');

INSERT INTO TB_ENDERECO VALUES('75','Qr 407 conjunto 09 casa 33','','Samambaia Norte','72321009','Brasilia','DF');

INSERT INTO TB_ENDERECO VALUES('76','Quadra QR 413 Conjunto 06','23','','72321306','samambaia norte','DF');

INSERT INTO TB_ENDERECO VALUES('77','QR 118 CJ 06 LT 09 CS 01','','','72307807','Samambaia DF','DF');

INSERT INTO TB_ENDERECO VALUES('79','Avenida Rabelo','Casa 12 A','Vila Planalto','70804020','Brasília- DF','DF');

INSERT INTO TB_ENDERECO VALUES('80','QR 320 Conjunto 7','13','Sul','72310107','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('81','Qse 05 Lote 27','Casa','','72025050','Taguatinga','DF');

INSERT INTO TB_ENDERECO VALUES('82','Quadra 300 Conjunto 5','Casa 06','Recanto das Emas','72620105','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('83','QR 603 Chac 9 Rua 5 CASA 68B','','Samambaia Norte','72331150','Sambaia','DF');

INSERT INTO TB_ENDERECO VALUES('84','Quadra 11 Conjunto E Lote 37 Casa 02','Salão Ziza Lisboa','Morro Azul','71691205','São Sebastião','DF');

INSERT INTO TB_ENDERECO VALUES('85','QN 403 Conjunto A Lotes 3 e 4','Apartamento 505','Samambaia','72319541','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('86','Qnm 10 Conj F Casa 20','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('87','Qr 405 cj 12 cs11','','Samambaia Norte','71928720','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('88','QR 403 conjunto 12','Casa 09','Samambaia Norte','72319113','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('90','QR 405 CONJUNTO 12 CASA 16','','Samambaia Norte (Samambaia)','72319212','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('91','Qr 212 conjunto 10 casa 07','','','','Samambaia norte','DF');

INSERT INTO TB_ENDERECO VALUES('92','Qr 401 conjunto 29 casa 05','','Samambaia norte','','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('93','Qr 202 conjunto 04 casa 06','Metro Terminal Samambaia','Samambaia Norte','72316054','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('95','QN 209 conjunto 01 lote 28','','Norte','72341001','Samambaia','DF');

INSERT INTO TB_ENDERECO VALUES('96','Qnl 24 via ln 30 casa 63','','L Norte','','Taguatinga ','DF');

INSERT INTO TB_ENDERECO VALUES('97','QR 210 conjunto 24 Casa 17','','Samambaia Norte','72316225','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('98','Qr 407 conjunto 02 casa 06','','Samambaia Norte','72321002','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('100','Qs 11 conj. I casa 8','Residência','Areal','71980000','Águas Claras','DF');

INSERT INTO TB_ENDERECO VALUES('101','qr 209 conjunto 5 casa 29','casa 29','samambaia norte','72341405','samambaia ','DF');

INSERT INTO TB_ENDERECO VALUES('103','QNO 07 Conjunto E Casa 11','','Setor o','72251705','Basilia','DF');

INSERT INTO TB_ENDERECO VALUES('104','Qr 405 conjunto 8 casa 15','00','Samambaia Norte','72319208','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('105','Shps 503 Chácara 97 A','A','Por do sol','72235290','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('106','Shps 602 chácara 97A','Condomínio pôr do sol','P Sul','','Ceilândia ','DF');

INSERT INTO TB_ENDERECO VALUES('107','Rua G','','Parque da Colina I','73808076','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('108','QNG 06 casa 05','','Taguatinga norte','72130060','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('109','QR 518 Conjunto 3-A','Apt 1106','Samambaia Sul (Samambaia)','72314405','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('110','Qr 207 conjunto 5 casa 1','01','Samambaia Norte','72341305','Samambaia Norte','DF');

INSERT INTO TB_ENDERECO VALUES('111','qno 20 conjunto 39 casa 35','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('112','Qno 16 Conjunto 75 Casa 11','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('113','Quadra 13 Conjuto F Casa 24 Setor sul','Casa 24','Setor sul','72410706','Gama','DF');

INSERT INTO TB_ENDERECO VALUES('114','Quadra 12 conjunto k casa 16 setor sul Gama','','Setor Sul','72415611','Gama','DF');

INSERT INTO TB_ENDERECO VALUES('115','Quadra 4 conjunto H casa 11','','Setor sul','72415208','Gama-DF','DF');

INSERT INTO TB_ENDERECO VALUES('116','Praça 3 bloco C loja 03','Gama DF - 03 setor sul','Setor sul','72410236','Gama','DF');

INSERT INTO TB_ENDERECO VALUES('117','Quadra O Lote 31 Parque Esplanada 1','','Esplanada 1','','Valparaíso','GO');

INSERT INTO TB_ENDERECO VALUES('118','SHSN chácara 36 conjunto 09 casa 06','Casa','P. Sul','72236800','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('119','Rua 17 chácara 178','09','Vicente Pires','07200739','Taguatinga','DF');

INSERT INTO TB_ENDERECO VALUES('121','QNP 28 CONJUNTO P CASA 4','','Psul','72335816','CEILÂNDIA','DF');

INSERT INTO TB_ENDERECO VALUES('122','Qnd 10','Casa 13','Norte','72120100','Taguatinga','DF');

INSERT INTO TB_ENDERECO VALUES('123','QR 209 Conjunto 7','','Samambaia Norte (Samambaia)','72341407','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('124','QR 423 CONJUNTO 03 CASA 24','QR 423 CONJUNTO 03 CASA 24','Samambaia','72325203','Samambaia Norte','DF');

INSERT INTO TB_ENDERECO VALUES('125','QN  209  conjunto  2','21','Samambaia Norte','72341452','BRASILIA','DF');

INSERT INTO TB_ENDERECO VALUES('126','Casa 6','Conjunto h','Por do sol','72238310','Ceilandia ','DF');

INSERT INTO TB_ENDERECO VALUES('127','Qr 415 conj 10 casa 17','Qr 415 conjunto 13 casa 17','Samambaia norte','72323010','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('129','Qn 211 conjunto 01 casa 35','','Samambaia Norte','72343051','Brasilia','DF');

INSERT INTO TB_ENDERECO VALUES('130','quadra 04 casa 125A setor norte','setor norte','','72710040','Brazlandia','DF');

INSERT INTO TB_ENDERECO VALUES('131','Rua Mangabas 180','','Primavera','38610000','Unaí','DF');

INSERT INTO TB_ENDERECO VALUES('132','SHPS 602 CHAC 97-A','Por do Sol  (ao lado da capela Nossa Senhora Aparecida)','P. Sul/Ceilândia','72236608','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('133','RUA 35 SUL LOTE 17 APT. 1212','RESIDENCIAL SEVILHA','ÁGUAS CLARAS','71931180','BRASIL ','DF');

INSERT INTO TB_ENDERECO VALUES('134','Qr 405 conjunto 04 casa 16','16','samambaia norte','72319204','Brasilia','DF');

INSERT INTO TB_ENDERECO VALUES('135','Qr 407 conj 3 casa 8','Casa 8','Samambaia Norte','','Brasilia ','DF');

INSERT INTO TB_ENDERECO VALUES('136','Shsn chácara 136a condomínio beija flor lote 7a','Sol nascente','Ceilândia','72215000','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('137','Rua maestro joaquim de Abreu setor nordeste','','Setor.nordeste','73008001','Formosa ','GO');

INSERT INTO TB_ENDERECO VALUES('139','Quadra 12 Conjunto I','Casa 21','Setor Sul (Gama)','72415609','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('140','Qr 403 conjunto 09 casa 06','Qr 403 conjunto 09 casa 06','Samambaia','72319110','Brasilia ','DF');

INSERT INTO TB_ENDERECO VALUES('141','Qn 211 conjunto 02 casa 04','26° delegacia de polícia','Samambaia norte','72343052','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('142','Shsn chácara 127 A cj A cs 18','Casa 18','Sol nascente','72236800','Ceilândia Sul','DF');

INSERT INTO TB_ENDERECO VALUES('143','shsn ch 127a conjunto a lote 18','Casa 18','Sol nascente','72236800','BRASILIA','DF');

INSERT INTO TB_ENDERECO VALUES('144','RUA 01 CHACARA 105A LOTE 01 LOTE 01','COLONIA AGRICOLA SAMAMBAIA','','72110600','TAGUATINGA NORTE','DF');

INSERT INTO TB_ENDERECO VALUES('145','QR 103 Conjunto 6','Casa 09','Samambaia Sul','72301006','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('146','SHPS 401 CONJ A CASA 08','','Ceilândia','72200000','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('147','Condomínio Vila Paraíso Bl A Apt 103','','Vila Paraíso','72879282','Valparaíso Goiás ','GO');

INSERT INTO TB_ENDERECO VALUES('157','QR 401 conjunto 15 casa 05','','Samambaia Norte','72319015','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('158','Qnj 8','Casa 11','Taguatinga norte','','Brasília-df','DF');

INSERT INTO TB_ENDERECO VALUES('159','Shps quadra 501 conjunto  H casa 17a','H','Ceilandia','72238550','Ceilandia ','DF');

INSERT INTO TB_ENDERECO VALUES('160','SHPS quadra 501 conj H casa 17A','quadra 501','PSul','72238250','CEILANDIA','DF');

INSERT INTO TB_ENDERECO VALUES('161','Shps quadra 501 conjunto  H casa 17a','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('162','QUAD 604 CONJUNTO 26','CASA 01','','72640426','RECANTO DAS EMAS','DF');

INSERT INTO TB_ENDERECO VALUES('163','Qnn 23 conjunto m casa 34','Ceilândia norte','Brasília DF','','Brasília DF','DF');

INSERT INTO TB_ENDERECO VALUES('164','Qr211 conj 7 casa 14','Perto da 26° dp','Samambaia','72343007','Samambaia','DF');

INSERT INTO TB_ENDERECO VALUES('165','Rua Maestro Joaquim de Abreu','N 736','Setor Nordeste','73808100','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('166','Qr 204 Conjunto 12 Lote 01','perto da quadra.','Norte','72316092','Samambaia','DF');

INSERT INTO TB_ENDERECO VALUES('167','Qr 625 conjunto 07','Casa 04','','72333409','Samambaia Norte','DF');

INSERT INTO TB_ENDERECO VALUES('168','Qnp 36 conjunto J casa 22','Perto do posto policial','Psul','72236610','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('169','Qr 402 Conjunto 26 Casa 08','','Samambaia Norte','72318027','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('170','Quadra 402 conj 26 casa 08','Samambaia Norte','Samambaia Norte','72318027','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('171','Ave. Maestro João Luis do Espírito Santo','988','Califórnia','73807745','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('172','SHPS 502 CONJ A CASA 47','Por do sol','P sul','72238273','Ceilândia ','DF');

INSERT INTO TB_ENDERECO VALUES('173','Qr 407 conjunto 03 casa 08','Casa 8','Samambaia Norte','72321003','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('174','Av A casa 1 lote 1','casa','Bela Vista','73808795','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('175','Qn 211 conjunto 02 lote 51 casa 02','51','Samambaia Norte','72343052','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('176','Qr 405 conjunto 28 cosa 22','','Samambaia','72319228','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('177','Qr603 chacara 39 rua 4 casa 52A','Condomínio vida nova','','72331100','Samambaia ','DF');

INSERT INTO TB_ENDERECO VALUES('178','Qnb 18 casa 08','com.norte','','72115180','Taguatinga','DF');

INSERT INTO TB_ENDERECO VALUES('179','Qnb 18 casa 08','','','72115180','Taguatinga','DF');

INSERT INTO TB_ENDERECO VALUES('180','Rua G Lote 12','Quadra 70','Parque da colina','73808076','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('181','Qn 211 conjunto 1 casa 16','','Samambaia','72325110','Samambaia Norte','DF');

INSERT INTO TB_ENDERECO VALUES('182','Qnp 36 conjunto D casa 39','','P sul','72236604','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('183','Rua Benedito Galvão','Número 136 apt: 201','Formosinha','73813040','Formosa GO','GO');

INSERT INTO TB_ENDERECO VALUES('184','Qr 615 conjunto 10 casa 16','','Samambaia norte','71215902','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('185','Qnj 02','Casa 18','Taguatinga norte','72140020','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('186','Qr 213 conjunto 3 casa 31','','','72343103','','DF');

INSERT INTO TB_ENDERECO VALUES('187','QR 213 Conjunto 3','31','samambaia','72343103','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('188','Quadra 12 conjunto k','Casa 16','Setor sul','72415611','Gama','DF');

INSERT INTO TB_ENDERECO VALUES('189','Qr. 204 Conjunto 12 Lote 16','Kit 02','Norte','72316092','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('190','Qr 211 Conjunto 07 Casa 14','','Samambaia Norte','72343000','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('191','Av. Contorno Qd 01 A Lt 05 A','','São João','75133205','Anápolis','GO');

INSERT INTO TB_ENDERECO VALUES('192','Qnp 32 Conjunto D','Casa 34A','P.sul','72236204','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('193','SGAN 902/904 S/N.','','ASA NORTE','70790020','BRASLIA-DF','DF');

INSERT INTO TB_ENDERECO VALUES('194','Qr 523 Conjunto 5 Casa 18','Samambaia-Sul','','72317105','Samambaia sul ','DF');

INSERT INTO TB_ENDERECO VALUES('196','Qr 523 Conjunto 05 Casa 18','Samambaia','sul','72317105','Samambaia-Sul','DF');

INSERT INTO TB_ENDERECO VALUES('197','Qr 211','02 casa 26','Norte','72300000','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('198','Qe 40 conjunto F lote 19 apt 202','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('199','area especial 2A modulo H lote 4 ap 309','apartamento 309','setor de oficinas','71070638','Gaua ll df','DF');

INSERT INTO TB_ENDERECO VALUES('200','Qe 40 conjunto F lote 19 apt 202','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('201','Qs06 conjunto 01 casa 20 Riacho Fundo 1','Riacho fundo 1','Riacho fundo 1','71820601','Riacho fundo 1','DF');

INSERT INTO TB_ENDERECO VALUES('202','Qr 414 conjunto 2 casa 16','Casa','Samambaia norte','72320202','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('203','Qr 212 conjunto 14 casa 15','Casa 15','Samambaia','72316314','Samambaia Norte','DF');

INSERT INTO TB_ENDERECO VALUES('204','Qr 605 conjunto 2 chácara 47','','Samambaia Norte','72331202','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('205','Colonia Agrícola Sucupira ch 08 lt 12A','','sucupira','','Riacho Fundo 1','DF');

INSERT INTO TB_ENDERECO VALUES('206','QR 403 CONJUNTO 09','Casa 18','403','72319110','Samambaia norte','DF');

INSERT INTO TB_ENDERECO VALUES('207','Shps quadra 108. Conjunto \'B\'. Casa 20','Perto do supermercado Leão','P.Sul','72238100','Ceilândia ','DF');

INSERT INTO TB_ENDERECO VALUES('208','Qi 19 lote 13 Bloco:C AP:2002','Residencial Vivace','','','Taguatinga norte','DF');

INSERT INTO TB_ENDERECO VALUES('209','Avenida k quadra 29 casa 01','Ao lado do nova Formosa','Bela vista','73800000','Formosa ','GO');

INSERT INTO TB_ENDERECO VALUES('210','Rua maestro Joaquim de Abreu n°735','Perto do carinho do pão de queijo.','Setor nordeste','73807100','Formosa-Go','GO');

INSERT INTO TB_ENDERECO VALUES('211','QR 203 CONJ 03','Casa 05','Norte','72341103','SAMAMBAIA​','DF');

INSERT INTO TB_ENDERECO VALUES('212','Qi 24 lote 1/13 Taguatinga Norte-Df','Residencial Top Life Miami Beach bloco B apto 1506','Taguatinga Norte-Df','72135240','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('213','QR 212 Conjunto Q Casa','12','Santa Maria','72542417','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('214','QR 401 conjunto 20 casa 1','','Samambaia Norte','72319020','Brasilia','DF');

INSERT INTO TB_ENDERECO VALUES('215','Qr 209 conjunto 02 17','','Samambaia Norte','72341402','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('216','Qr 205 Conjunto 03 Casa 34','34','Norte','72341203','Samambaia ','DF');

INSERT INTO TB_ENDERECO VALUES('217','Colônia Agrícola Sucupira Chácara 06 Lote 37L','','Sucupira','','Riacho Fundo I','DF');

INSERT INTO TB_ENDERECO VALUES('218','Qr 405 conjunto 07 casa 07','','Samambaia','','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('219','qr 211 conjunto 02 casa 29','','Samambaia','','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('220','Qnp 30 conjunto M','Casa 21','Setor P sul','72236013','Ceilandia ','DF');

INSERT INTO TB_ENDERECO VALUES('221','Qr 512 conjunto 06','Casa 04','Samambaia sul','72312806','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('222','Qno 11 cj m casa 39','Casa','Setor o','72255113','Ceilandia','DF');

INSERT INTO TB_ENDERECO VALUES('223','SHPS 603 CONJ B CASA 08','Na rua da padaria santos','Por Do Sol','','Ceilândia ','DF');

INSERT INTO TB_ENDERECO VALUES('224','Shps 602 conj B casa 3','Perto da capela nossa senhora aparecida','Por do sol','72238350','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('225','QNP 36 conjunto A lote 17A','A','Psul','72236601','Ceilandia ','DF');

INSERT INTO TB_ENDERECO VALUES('226','Qr 205 conjunto 3 casa 34','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('227','Qnp 30 conjunto J casa 38','','Psul','72236010','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('228','Quadra SHPS Quadra 501 Conju  Horas Casa','7','Psul','72238250','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('229','Avenida João Gebrin, n 2623','','Formosinha','73813210','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('230','Shps quadra 108 conjunto D casa 04','Condomínio Canaã','Por do sol','72238100','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('231','QR 419 CJ 4 casa 14','','Samambaia Norte','72325005','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('232','QNP 30 CONJUNTO J CASA 38','','P Sul','72236010','Ceilândia ','DF');

INSERT INTO TB_ENDERECO VALUES('233','chácara Santa Cruz','','Incra','','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('234','Chácara do Retiro do EAC','','Incra 9','','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('235','Casa das Irmãs','AO lado da paróquia','Samambaia Norte','','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('236','QR 403 cj 10 casa 28','Casa dos Bessas','Samambaia Norte','','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('237','Quadra QR 413 Conjunto 06','23','','72321306','samambaia norte','DF');

INSERT INTO TB_ENDERECO VALUES('238','Chacara santa cruz','','incra 8','','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('239','Qs 403 , conj. 10 casa 27','','Samambaia norte','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('240','casa das irmãs !','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('241','Paroquia São João Evangelista','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('242','Sítio Bom Jesus','','','','São João da aliança','GO');

INSERT INTO TB_ENDERECO VALUES('243','casa das irmas','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('244','Casa das irmãs da caridade missionária','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('245','Qr 425 Cj 27 casa 05','','Samambaia Norte','72327028','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('246','Qr 207 conjunto 01 casa 26','De frente com a 205','Samambaia Norte','72341301','Samambaia','DF');

INSERT INTO TB_ENDERECO VALUES('247','QR 215 Conjunto 1','casa 21','SAMAMBAIA NORTE','72343201','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('248','Qr 209 conj 07 casa 06','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('249','paroquia de Ceilândia','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('250','Qr. 403 conjunto 10 casa 28','casa da Luana','','','','DF');

INSERT INTO TB_ENDERECO VALUES('251','casa das irmas da caridade','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('252','Paroquia São João Evangelista','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('253','casa da fernanda','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('254','casa dos Bessas','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('255','feira da 311','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('256','Capela São Francisco.','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('257','casa das irmas da caridade','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('258','casa das irmas da caridade','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('259','taguaparque','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('260','feira da 311','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('261','casa das irmas da caridade','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('262','na samambaia sul','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('263','samambaia sul','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('264','Anápolis - Go','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('265','casa das irmas da caridade','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('266','casa das Irmas da Caridade','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('267','casa das Irmas da Caridade','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('268','a confirmar','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('269','casa das Irmas da Caridade','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('270','a confirmar','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('271','casa das Irmas da Caridade','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('272','Feira da 311','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('273','a confirmar','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('274','casa das Irmas da Caridade','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('275','a confirmar','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('276','a confirmar','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('277','casa das Irmas da Caridade','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('278','Formosa','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('279','QR 403 Conjunto 19','Casa 09','Samambaia Norte (Samambaia)','72319120','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('280','Qr 213 Cj 03 casa 26','Casa','Samambaia Norte','72344103','Brasília DF','DF');

INSERT INTO TB_ENDERECO VALUES('282','Qr 401 CONJUNTO 02 CASA 14','','Samambaia norte','','Samambaia ','DF');

INSERT INTO TB_ENDERECO VALUES('283','QR 405 Conjunto 25','05','Samambaia Norte (Samambaia)','72319225','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('284','QR 415 Conjunto 12','Casa 03','Samambaia Norte (Samambaia)','72323012','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('285','Parque ABC','','Cidades jadins','','Valparaíso de Goiás','GO');

INSERT INTO TB_ENDERECO VALUES('286','Chácara Santa cruz','','','','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('287','Rua 7','bloco A apt 308','Norte (Águas Claras)','71908180','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('288','QR 408 Conjunto 10','CASA 17','Samambaia Norte (Samambaia)','72318310','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('289','Rodovia DF-150 Km 4,5 Condomínio São José mod. E casa 2','','Setor Habitacional Contagem (Sobradinho)','73090925','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('290','Avenida Gregório Perche de Menezes','casa','Nova Matão','15990624','Matão','SP');

INSERT INTO TB_ENDERECO VALUES('291','QR 402 Conjunto 18 casa 16','','Samambaia Norte (Samambaia)','72318018','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('292','Condomínio Residencial 9 Bloco C','Bloco C apto 1002','Parque das Cachoeiras','72872782','Valparaíso de Goiás','GO');

INSERT INTO TB_ENDERECO VALUES('293','Qc 5 conj 6 condomínio 21','Apartamento 102 - Bloco E','Riacho Fundo II','71882206','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('294','QN 5c conjunto 9 bloco i','Apt 03 condomínio parque do riacho 07','Riacho Fundo II','71880539','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('295','Vicente Pires Rua 8 Ch 196 casa 07','','','','Vicente Pires ','DF');

INSERT INTO TB_ENDERECO VALUES('296','Rua D','Quadra O Casa 31','Parque Esplanada I','72878636','Valparaíso de Goiás','GO');

INSERT INTO TB_ENDERECO VALUES('297','Rua 8 Chácara 328','Condominio Porto vitória','Setor Habitacional Vicente Pires','72007138','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('298','Quadra 103 Conjunto 6','','Recanto das Emas','72600307','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('299','Rua 10','Casa 12','Bela Vista','','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('300','SHA Conjunto 6 Chácara 478 casa 3','','Setor Habitacional Arniqueira (Águas Claras)','71996368','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('301','QR 429 Conjunto 2','Casa 09','Samambaia Norte (Samambaia)','72329002','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('302','QNN 1 Conjunto G','CASA 36','Ceilândia Norte (Ceilândia)','72225017','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('303','QNN 22 Conjunto P','Avenida fundação bradesco','Ceilândia Sul (Ceilândia)','72220236','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('304','shsn chacara 58/123a residencial pinheiros','casa 14 lote 14','P Norte','','Ceilândia ','DF');

INSERT INTO TB_ENDERECO VALUES('305','QNM 1 Conjunto C','Apartamento 201','Ceilândia Sul (Ceilândia)','72215013','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('306','Qr: 829 conjunto: 05 casa: 18','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('307','QR 312 Conjunto 4','','Samambaia Sul (Samambaia)','72308104','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('308','QNM 40 Conjunto M','Casa 05','Taguatinga Norte (Taguatinga)','72146013','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('309','QNP 32 Conjunto F','','Ceilândia Sul (Ceilândia)','72236206','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('310','QNP 32 Conjunto F','44','Ceilândia Sul (Ceilândia)','72236206','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('311','QNN 1 Conjunto B','Casa 23','Ceilândia Norte (Ceilândia)','72225012','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('312','QNN 22 Conjunto C','','Ceilândia Sul (Ceilândia)','72220223','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('315','QR 519 Conjunto 1','casa 10','Samambaia Sul (Samambaia)','72315301','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('316','QR 519 Conjunto 3','casa 18','Samambaia Sul (Samambaia)','72315303','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('317','Avenida Monumental','(Residencial Porto Pilar)','Setor Meireles (Santa Maria)','72583500','Santa Maria','DF');

INSERT INTO TB_ENDERECO VALUES('318','QR 403 Conjunto 13','','Samambaia Norte (Samambaia)','72319114','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('319','Rua 7','Quadra 51 lote 01','Parque da Colina I','73808024','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('320','QNM 4 Conjunto O casa 18','','Ceilândia Norte (Ceilândia)','72210055','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('321','QR 313 Conjunto 12','Casa 13','Samambaia Sul (Samambaia)','72307312','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('322','QNE 23','Casa 37','Taguatinga Norte (Taguatinga)','72125230','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('323','Cnf 01 lote 12','Apartamento 101','Taguatinga Norte (Taguatinga)','72125515','Taguatinga','DF');

INSERT INTO TB_ENDERECO VALUES('324','QNN 19 Conjunto G','Casa 40 Rua do Amarmarinho Thais','Ceilândia Norte (Ceilândia)','72225197','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('325','SCN Quadra 2 Bloco D','','Asa Norte','70712904','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('326','QR 604 Conjunto 12','','Samambaia Norte (Samambaia)','72322113','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('327','QR 318 Conjunto 2','Casa 11','Samambaia Sul (Samambaia)','72308802','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('328','QR 519 Conjunto 6','Casa 03','Samambaia Sul (Samambaia)','72315306','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('329','QNE 9','11','Taguatinga Norte (Taguatinga)','72125090','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('330','QR 405 Conjunto 25 Casa','9','Samambaia Norte (Samambaia)','72319225','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('331','QNO 7 Conjunto A casa 04','','Ceilândia Norte (Ceilândia)','72251701','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('332','QNO 7 Conjunto A','Casa4','Ceilândia Norte (Ceilândia)','72251701','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('333','QNL 2 Bloco C','Apt 202','Taguatinga Norte (Taguatinga)','72155213','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('334','QS 11 Conjunto K','casa 30','Areal (Águas Claras)','71982520','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('335','QNF 4','','Taguatinga Norte (Taguatinga)','72125540','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('336','QN 404','Conj F lote 1 apt 102','Samambaia Norte (Samambaia)','72318540','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('337','QR 406 Conjunto 27 casa 04','','Samambaia Norte (Samambaia)','72318229','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('338','QR 412 Conjunto 19','Casa 01','Samambaia Norte (Samambaia)','72320122','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('339','Quadra 16 Lote 3','Jardim das oliveiras','Jardim abc','','Cidade Ocidental','GO');

INSERT INTO TB_ENDERECO VALUES('340','Rua 1','66','Vila da Telebrasília','70210010','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('341','QR 603','Condomínio vida nova- Rua 03 casa 25 A','Samambaia Norte (Samambaia)','72331100','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('342','QR 517 Conjunto 1','12','Samambaia Sul (Samambaia)','72315201','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('343','QNN 11','B 5 Apartamento 107 Residencial Diamantina','Ceilândia Norte (Ceilândia)','72225110','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('344','quadra 804 conj 18','01','recanto das emas','72560730','recanto das emas','DF');

INSERT INTO TB_ENDERECO VALUES('345','QNN 39 Conjunto E casa 24','Casa','Ceilândia Norte (Ceilândia)','72225395','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('346','QNP 22 Conjunto I Casa 07','','Ceilândia Sul (Ceilândia)','72235209','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('347','QNP 22 Conjunto I','Casa 07','Ceilândia Sul (Ceilândia)','72235209','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('348','QR 120 Conjunto 1','06','Samambaia Sul (Samambaia)','72304001','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('349','QR 411 Conjunto 4','19','Samambaia Norte (Samambaia)','72321204','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('350','QR 425 Conjunto 24','Casa 24','Samambaia Norte (Samambaia)','72327024','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('351','QNP 10 Conjunto E','CASA 16','Ceilândia Sul (Ceilândia)','72231105','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('352','Quadra 9 lote 04 B01','rua 05','Mansões Camargo','72927057','Águas Lindas de Goiás','GO');

INSERT INTO TB_ENDERECO VALUES('353','QNM 4 Conjunto C','Casa 41','Ceilândia Norte (Ceilândia)','72210043','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('354','QI 416 Conjunto 1','Bloco C Apartamento 803, Residencial das Palmeiras','Samambaia Norte (Samambaia)','72320301','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('355','QNM 4 Conjunto C','41','Ceilândia Norte (Ceilândia)','72210043','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('356','Quadra 10 Conjunto A, 12','','','72910000','Águas Lindas','GO');

INSERT INTO TB_ENDERECO VALUES('357','QNM 4 Conjunto J casa','35','Ceilândia Norte (Ceilândia)','72210050','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('358','QNM 4 Conjunto C','Casa 41','Ceilândia Norte (Ceilândia)','72210043','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('359','Chácara 3/344 inca 8- Brazlândia','','Chácara 3/344','','Incra 8 Brazlândia ','DF');

INSERT INTO TB_ENDERECO VALUES('360','QNN 1 Conjunto B','Rua do giraffas','Ceilândia Norte (Ceilândia)','72225012','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('361','QNP 26 Conjunto X','12','Ceilândia Sul (Ceilândia)','72235623','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('362','Qn 209cj 2 lote 21','Nenhuma','Samambaia norte','72300000','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('363','QI 416 Conjunto C','304','Samambaia Norte (Samambaia)','72320313','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('364','QR 425 Conjunto 11','casa 19','Samambaia Norte (Samambaia)','72327011','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('365','Quadra QC 11 Rua D','casa 37','Jardins Mangueiral (São Sebastião)','71699621','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('366','QR 223 Conjunto 2','13','Samambaia Norte (Samambaia)','72345202','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('367','QNM 2 Conjunto F','23','Ceilândia Norte (Ceilândia)','72210026','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('368','Eqnn 8/10 bloco E loja 02','','Ceilândia Sul','','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('369','QNN 3 Conjunto E','','Ceilândia Norte (Ceilândia)','72225035','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('370','QND 41casa 11','','Taguatinga Norte (Taguatinga)','72120410','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('371','QN 225 Conjunto 1 casa 15','','Samambaia Norte (Samambaia)','72345351','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('372','Quadra 305 Conjunto 8-A','Casa 04','Recanto das Emas','72621214','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('373','CRS 504 Bloco B','3','Asa Sul','70331525','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('374','QR 401 Conjunto 10 6','','Samambaia Norte (Samambaia)','72319010','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('375','Rua J','Qd 124 \"A\" número 14','Setor Nordeste','73807403','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('376','Quadra 37 Casa 30','A','Setor Leste (Gama)','72465370','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('377','Quadra 10 Conjunto C','Casa 14','Setor Sul (Gama)','72415503','Brasília - Gama','DF');

INSERT INTO TB_ENDERECO VALUES('378','Rodovia DF-001','Condomínio cooperville','Setor Habitacional Vicente Pires','72008001','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('379','QR 204 Conjunto 1','1','Samambaia Norte (Samambaia)','72316081','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('380','Quadra 107 Rua A','Apt 501','Águas claras','70873050','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('381','Rua 10','Casa número 454','Setor Nordeste','73807305','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('382','SHCGN 707 Bloco D','AP 510','Asa Norte','70740734','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('383','QR 120 Conjunto 10A','','Samambaia Sul (Samambaia)','72304020','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('384','QR 120 Conjunto 10A','','Samambaia Sul (Samambaia)','72304020','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('385','Qr 405 conj 1 casa 1/4','','','','','DF');

INSERT INTO TB_ENDERECO VALUES('386','Qc 3 conj 08 lote 03','Bloco C apartamento 101','Riacho Fundo II','71882108','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('387','QR 411 Conjunto 4','19','Samambaia Norte (Samambaia)','72321204','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('388','Rua 11','R 11 Q 24 L 29 Morada Nobre','Morada Nobre','72870366','Valparaíso de Goiás','GO');

INSERT INTO TB_ENDERECO VALUES('389','QNL 10 Conjunto F','Casa 14','Taguatinga Norte (Taguatinga)','72156106','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('390','CND 5','Lote 11 apto 202','Taguatinga Norte (Taguatinga)','72120055','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('391','Quadra 03','Cond Flores da Serra Quadra 02 casa 27','Residencial Florais do Planalto','72873155','Valparaíso de Goiás','GO');

INSERT INTO TB_ENDERECO VALUES('392','Quadra 12 Conjunto M casa 9','','Setor Sul (Gama)','72415613','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('393','Chácara Santa Cruz','','','','Ceilândia','DF');

INSERT INTO TB_ENDERECO VALUES('394','QS 114 Conjunto 6Comércio','','Samambaia Sul (Samambaia)','72302556','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('395','Rua 16','Setor C','Setor Bela Vista','73808790','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('396','SHA conj. 5 chác. 14A lote 4','','Arniqueiras','','Taguatinga','DF');

INSERT INTO TB_ENDERECO VALUES('397','Quadra 304 Conjunto 6','casa 03','Recanto das Emas','72621106','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('398','QR 615 Conjunto 6','03','Samambaia Norte (Samambaia)','72331806','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('399','Rua 205','Casa 65 quadra 18 lote 08','Nova Formosa','73809330','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('400','SQNW 106 Bloco B','','Setor Noroeste','70683640','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('401','C 1 Lotes 9/10 Lojas 2/3','','Taguatinga Centro (Taguatinga)','72010971','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('402','Setor Habitacional Sol Nascente','Condomínio Recanto da Paz conjunto G lote 2','Ceilândia Sul (Ceilândia)','72236800','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('403','QNP 14 Conjunto J CASA 19','A','Ceilândia Sul (Ceilândia)','72231410','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('404','QNN 20 Conjunto I','guariroba','Ceilândia Sul (Ceilândia)','72220209','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('405','QNG 43','','Taguatinga Norte (Taguatinga)','72130430','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('406','QS 12 Conjunto 7A','Casa 15','Riacho Fundo I','71825207','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('407','Qr408 conj16, casa 09','casa 09','Brasilia','71318318','Brasilia','DF');

INSERT INTO TB_ENDERECO VALUES('408','QR 415 Conjunto 12','Casa 03','Samambaia Norte (Samambaia)','72323012','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('409','QR 615 Conjunto 5','Casa 35','Samambaia Norte (Samambaia)','72331805','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('410','Rua 8 Chácara 246','Rua de frente com a escola classe 02 ,muro laranja com duas listras brancas','Vila São José (Vicente Pires)','72003580','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('411','QNF 8 lt 35','Casa 4 fundos da qnf 6','Taguatinga Norte (Taguatinga)','72125580','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('412','Setor Habitacional Sol Nascente','Lote 29 quadra 28','Ceilândia Sul (Ceilândia)','72236800','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('413','QS 5 Rua 860','','Areal (Águas Claras)','71955180','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('414','Rua 16','Setor C','Setor Bela Vista','73808790','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('415','Rua 06 chácara 271','Casa 33A','Vicente Pires','72585006','Brasília ','DF');

INSERT INTO TB_ENDERECO VALUES('416','QNL 5 Bloco C','apartamento  211','Taguatinga Norte (Taguatinga)','72150613','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('417','Rua 3','Quadra 124 A','Formosa','73807130','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('418','QR 401 Conjunto 26','casa 14','Samambaia Norte (Samambaia)','72319026','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('419','QNP 9 Conjunto M','Casa 17','Ceilândia Norte (Ceilândia)','72240813','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('420','QNM 4 Conjunto C','Casa 39','Ceilândia Norte (Ceilândia)','72210043','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('421','Rua H lote 04 quadra 108','','Parque da colina','','','GO');

INSERT INTO TB_ENDERECO VALUES('422','QR 417 Conjunto 3','','SAMAMBAIA NORTE','72323103','BRASÍLIA ','DF');

INSERT INTO TB_ENDERECO VALUES('423','SHA Conjunto 5 Chácara 115','Lote 08','Setor Habitacional Arniqueira (Águas Claras)','71995505','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('424','Quadra 305 conjunto 8A casa 04','','Recanto das Emas','','Recanto das Emas','DF');

INSERT INTO TB_ENDERECO VALUES('425','Quadra 205 Conjunto 4','','Recanto das Emas','72610504','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('426','Rua 4 Chácara 25','','Setor Habitacional Samambaia (Vicente Pires)','72001305','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('427','shigs 715 bloco h, casa 45','casa 45','Asa Sul','70381708','brasilia','DF');

INSERT INTO TB_ENDERECO VALUES('428','Avenida João Ísper Gebrim 252','','Formosinha','73813210','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('429','QN 204 Conjunto 2','Casa 04','Samambaia Norte (Samambaia)','72316072','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('430','Avenida Tancredo Neves','Nº 92 Apto 102','Setor Bosque','73802005','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('431','Avenida Tancredo Neves, 92','ap 102','Setor Bosque','73802005','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('432','Fercal Leste Quadra 18','','Setor Habitacional Fercal (Sobradinho)','73151050','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('433','QI 19','','Setor Industrial (Taguatinga)','72135190','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('434','Rua 9 n° 357','Próximo ao Super mercado Paulo Resende','Setor Nordeste Vila Marilac','73897450','Formosa ','');

INSERT INTO TB_ENDERECO VALUES('435','Vila Marilaque','Rua 9, N° 357','Setor Nordeste','73807450','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('436','Avenida das Araucárias','Ed.peninsula Lt 4530 Bl A apt 2704','Sul (Águas Claras)','71936250','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('437','SEPS 713/913','Edifício Multiplus bloco A apt 208','Asa Sul','70390135','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('438','Rua H lote 4 quadra 108','','parque da colina','72319911','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('439','QNL 23 Bloco B','Apartamento 129','Taguatinga Norte (Taguatinga)','72152312','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('440','Qr 204 conjuto 6','Lote 2 ap 201','Samambaia Norte (Samambaia)','72339800','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('441','Rua 1 Chácara 100','Colônia Agrícola Samambaia, condomínio residencial Palmeiras','Setor Habitacional Samambaia (Vicente Pires)','72002430','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('442','Rua 37 norte','Apto 706','Norte (Águas Claras)','71919360','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('443','smt conjunto 18','casa 3B','','','','');

INSERT INTO TB_ENDERECO VALUES('444','SQN 415 Bloco I','Apto 203','Asa Norte','70878090','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('445','QR 501 Conjunto 6','06','Samambaia Sul (Samambaia)','72311306','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('446','R boca da mata','','Itinga','42700000','Lauro de freitas','BA');

INSERT INTO TB_ENDERECO VALUES('447','520','Rua 10 n°520','Setor Nordeste','73807305','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('448','Rua f n° 580','','Parque da colina','','Formosa-Go','GO');

INSERT INTO TB_ENDERECO VALUES('449','Avenida Eucalipto Quadra 403 Conjunto 6','Casa 10','Recanto das Emas','72630356','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('450','QNG 26','Casa 16','Taguatinga Norte (Taguatinga)','72130260','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('451','Rua 23 nº 155','Fundo da Coca-Cola','Formosinha','73813350','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('452','QR 402 Conjunto 16','','Samambaia Norte (Samambaia)','72318016','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('453','Rua I Qd 31/34 Lt1A','Próximo a creche','Setor Bela Vista','','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('454','Rua 12 quadra 29 lote 03','Sub setor F','Setor Bela Vista','73808775','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('455','QR 501 Conjunto 17','18','Samambaia Sul (Samambaia)','72311317','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('456','QR 105 Conjunto 4','Casa 18','Samambaia Sul (Samambaia)','72301104','Samambaia Sul','DF');

INSERT INTO TB_ENDERECO VALUES('457','QR 412 Conjunto 4','Casa 25','Samambaia Norte (Samambaia)','72320104','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('458','QNN 24 Conjunto A casa 19','','Ceilândia Sul (Ceilândia)','72220240','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('459','Qnd 24 casa 25','','Taguatinga','72120240','Taguatinga','DF');

INSERT INTO TB_ENDERECO VALUES('460','Condomínio Residencial CR 10, Bloco D, Apto 504, Parque das Cachoeiras.','Condomínio Reserva Parque.','Valparaíso De Goiás','72872796','Valparaíso De Goiás','GO');

INSERT INTO TB_ENDERECO VALUES('461','Rua 1 Chácara 105B','Virar a esquerda na Bifurcação, casa(chácara) do portão velho a esquerda de Um portão Branco com uma','Setor Habitacional Samambaia (Vicente Pires)','72002465','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('462','QNN 3 Conjunto E','06','Ceilândia Norte (Ceilândia)','72225035','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('463','QR 403 Conjunto 10','','Samambaia Norte (Samambaia)','72319111','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('464','Rua 206 casa 217','','Nova Formosa','73809335','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('465','Rua 113','','Nova Formosa','73809265','Formosa','GO');

INSERT INTO TB_ENDERECO VALUES('466','Aguas claras quadra 104','Residencial villeneuve bloco b1 apto 1001','','','','DF');

INSERT INTO TB_ENDERECO VALUES('467','QNM 40 Conjunto C','','Taguatinga Norte (Taguatinga)','72146003','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('468','QNM 40 Conjunto C','','Taguatinga Norte (Taguatinga)','72146003','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('469','QNP 16 Conjunto S','8','Ceilândia Sul (Ceilândia)','72231619','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('470','QR 205 Conjunto 3','Casa 6','Samambaia Norte (Samambaia)','72341203','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('471','Setor SAGOCA','Esplanada 1204 A','Taguatinga Norte (Taguatinga)','72145760','Brasília','DF');

INSERT INTO TB_ENDERECO VALUES('472','qc 4 rua E Torre E1 apartamento 02','apartamento','jardim mangueiral','71699170','brasilia','DF');

INSERT INTO TB_ENDERECO VALUES('473','Rua Visconde de Porto Seguro','N 2120','Centro','73801010','Formosa','GO');




DROP TABLE IF EXISTS TB_EVENTO;


CREATE TABLE `TB_EVENTO` (
  `co_evento` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  `co_agenda` int(11) NOT NULL,
  `co_categoria_evento` int(11) NOT NULL,
  PRIMARY KEY (`co_evento`,`co_imagem`,`co_agenda`,`co_categoria_evento`),
  KEY `fk_TB_EVENTO_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_EVENTO_TB_AGENDA1_idx` (`co_agenda`),
  KEY `fk_TB_EVENTO_TB_CATEGORIA_EVENTO1_idx` (`co_categoria_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


INSERT INTO TB_EVENTO VALUES('1','2018-04-08 00:28:20','236','1','2');

INSERT INTO TB_EVENTO VALUES('2','2018-04-12 19:24:27','237','3','1');

INSERT INTO TB_EVENTO VALUES('3','2018-04-18 23:24:34','238','4','2');

INSERT INTO TB_EVENTO VALUES('4','2018-04-19 12:17:01','0','4','2');

INSERT INTO TB_EVENTO VALUES('5','2018-05-09 20:04:41','0','11','1');

INSERT INTO TB_EVENTO VALUES('6','2018-05-09 20:22:17','0','13','1');

INSERT INTO TB_EVENTO VALUES('7','2018-05-09 20:29:40','0','14','6');

INSERT INTO TB_EVENTO VALUES('8','2018-05-09 20:42:37','0','17','1');

INSERT INTO TB_EVENTO VALUES('9','2018-05-09 20:45:45','0','18','1');

INSERT INTO TB_EVENTO VALUES('10','2018-05-09 21:25:27','0','22','2');

INSERT INTO TB_EVENTO VALUES('11','2018-05-10 19:33:09','0','26','1');

INSERT INTO TB_EVENTO VALUES('12','2018-05-10 19:40:19','0','28','1');

INSERT INTO TB_EVENTO VALUES('13','2018-05-10 19:45:25','0','30','1');

INSERT INTO TB_EVENTO VALUES('14','2018-05-10 19:53:09','0','33','4');

INSERT INTO TB_EVENTO VALUES('15','2018-05-10 19:55:25','0','34','1');

INSERT INTO TB_EVENTO VALUES('16','2018-05-10 20:04:53','0','36','2');

INSERT INTO TB_EVENTO VALUES('17','2018-07-20 10:48:51','0','36','3');

INSERT INTO TB_EVENTO VALUES('18','2018-12-26 22:37:49','0','37','2');

INSERT INTO TB_EVENTO VALUES('19','2019-12-16 21:41:53','0','38','2');




DROP TABLE IF EXISTS TB_FLUXO_CAIXA;


CREATE TABLE `TB_FLUXO_CAIXA` (
  `co_fluxo_caixa` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_realizado` datetime DEFAULT NULL,
  `dt_vencimento` datetime DEFAULT NULL,
  `nu_valor` decimal(8,2) DEFAULT NULL,
  `ds_descricao` text DEFAULT NULL,
  `tp_fluxo` varchar(1) DEFAULT NULL COMMENT '''E'' - Entrada / ''S'' - Saída',
  `st_pagamento` varchar(1) DEFAULT NULL COMMENT 'N - Não iniciado / I - Iniciado / C - Concluido',
  `co_evento` int(11) NOT NULL,
  PRIMARY KEY (`co_fluxo_caixa`,`co_evento`),
  KEY `fk_TB_FLUXO_CAIXA_TB_EVENTO1_idx` (`co_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_FUNCIONALIDADE;


CREATE TABLE `TB_FUNCIONALIDADE` (
  `co_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `no_funcionalidade` varchar(150) NOT NULL,
  `ds_action` varchar(120) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  `st_menu` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não (Se apresenta no menu)',
  `co_controller` int(11) NOT NULL,
  PRIMARY KEY (`co_funcionalidade`,`co_controller`),
  KEY `fk_TB_FUNCIONALIDADE_TB_CONTROLLER1_idx` (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;


INSERT INTO TB_FUNCIONALIDADE VALUES('1','Perfil Master','PerfilMaster','A','S','0');

INSERT INTO TB_FUNCIONALIDADE VALUES('2','Auditoria Listar','ListarAuditoria','A','S','2');

INSERT INTO TB_FUNCIONALIDADE VALUES('3','Auditoria Detalhar','DetalharAuditoria','A','N','2');

INSERT INTO TB_FUNCIONALIDADE VALUES('4','Usuario Cadastrar','CadastroUsuario','A','N','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('5','Usuario Listar','ListarUsuario','A','S','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('6','Meu Perfil Usuario','MeuPerfilUsuario','A','S','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('7','Perfil Listar','ListarPerfil','A','S','5');

INSERT INTO TB_FUNCIONALIDADE VALUES('8','Perfil Cadastrar','CadastroPerfil','A','S','5');

INSERT INTO TB_FUNCIONALIDADE VALUES('9','Funcionalidade Listar','ListarFuncionalidade','A','S','4');

INSERT INTO TB_FUNCIONALIDADE VALUES('10','Funcionalidade Cadastrar','CadastroFuncionalidade','A','S','4');

INSERT INTO TB_FUNCIONALIDADE VALUES('12','Troca Senha Usuario','TrocaSenhaUsuario','A','S','6');

INSERT INTO TB_FUNCIONALIDADE VALUES('13','Dados Complementares Assinante','DadosComplementaresAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('29','Listar Visita','ListarVisita','A','S','7');

INSERT INTO TB_FUNCIONALIDADE VALUES('30','Config Gestao','ConfigGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('31','Gerar Entidades Gestao','GerarEntidadesGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('32','Gerar Backup Gestao','GerarBackupGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('33','Listar Acesso','ListarAcesso','A','S','3');

INSERT INTO TB_FUNCIONALIDADE VALUES('34','Listar Plano','ListarPlano','A','S','8');

INSERT INTO TB_FUNCIONALIDADE VALUES('35','Cadastro Plano','CadastroPlano','A','S','8');

INSERT INTO TB_FUNCIONALIDADE VALUES('36','Listar Assinante','ListarAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('37','Cadastro Assinante','CadastroAssinante','A','S','9');

INSERT INTO TB_FUNCIONALIDADE VALUES('38','Pre Projeto Gestao','PreProjetoGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('39','Acompanhar Projeto Gestao','AcompanharProjetoGestao','A','N','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('40','Limpar Banco Gestao','LimparBancoGestao','A','S','1');

INSERT INTO TB_FUNCIONALIDADE VALUES('41','Cadastro Agenda','CadastroAgenda','A','N','10');

INSERT INTO TB_FUNCIONALIDADE VALUES('42','Calendario','Calendario','A','S','10');

INSERT INTO TB_FUNCIONALIDADE VALUES('43','Listar Inscricao','ListarInscricao','A','S','11');

INSERT INTO TB_FUNCIONALIDADE VALUES('44','Gráficos Inscricao','GraficosInscricao','A','S','11');

INSERT INTO TB_FUNCIONALIDADE VALUES('45','Detalhes Inscricao','DetalhesInscricao','A','S','11');

INSERT INTO TB_FUNCIONALIDADE VALUES('46','Sobre Vc Inscricao','SobreVcInscricao','A','S','11');

INSERT INTO TB_FUNCIONALIDADE VALUES('47','Cadastro FluxoCaixa','CadastroFluxoCaixa','A','S','12');

INSERT INTO TB_FUNCIONALIDADE VALUES('48','Listar FluxoCaixa','ListarFluxoCaixa','A','S','12');

INSERT INTO TB_FUNCIONALIDADE VALUES('49','Cadastro Camisa','CadastroCamisa','A','S','13');

INSERT INTO TB_FUNCIONALIDADE VALUES('50','Listar Camisa','ListarCamisa','A','S','13');

INSERT INTO TB_FUNCIONALIDADE VALUES('51','Desativar Inscricao','DesativarInscricao','A','N','11');

INSERT INTO TB_FUNCIONALIDADE VALUES('52','Ativar Inscricao','AtivarInscricao','A','N','11');

INSERT INTO TB_FUNCIONALIDADE VALUES('53','Listar Pedido','ListarPedido','A','N','13');

INSERT INTO TB_FUNCIONALIDADE VALUES('54','Cadastro Pedido','CadastroPedido','A','N','13');

INSERT INTO TB_FUNCIONALIDADE VALUES('55','Detalhar Inscrição','DetalharInscricao','A','N','11');

INSERT INTO TB_FUNCIONALIDADE VALUES('56','Detalhar Pagamento','DetalharPagamento','A','N','11');

INSERT INTO TB_FUNCIONALIDADE VALUES('57','Editar Parcela','EditarParcela','A','N','11');




DROP TABLE IF EXISTS TB_HISTORIA;


CREATE TABLE `TB_HISTORIA` (
  `co_historia` int(11) NOT NULL AUTO_INCREMENT,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `st_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciada / I - Iniciada / C - Concluida',
  `co_sessao` int(11) NOT NULL,
  PRIMARY KEY (`co_historia`,`co_sessao`),
  KEY `fk_TB_HISTORIA_TB_SESSAO1_idx` (`co_sessao`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORIA VALUES('1','Manter Camisa','<p>Manter camisa</p>','2019-03-27 11:16:40','2019-04-08 14:26:48','C','4');

INSERT INTO TB_HISTORIA VALUES('2','Manter Pedido camisa','<p>Manter Pedido camisa</p>','2019-03-27 11:17:04','2019-04-16 11:57:21','C','4');

INSERT INTO TB_HISTORIA VALUES('3','Solicitar Missão','<p>Solicitar Miss&atilde;o (Formul&aacute;rio para solicitar miss&otilde;es)</p>','2019-04-05 15:55:39','2019-04-05 15:55:39','N','5');

INSERT INTO TB_HISTORIA VALUES('4','Integrar Loja do Bicalho na Ferramenta','<p>Integrar Loja do Bicalho na Ferramenta</p>','2019-04-05 15:57:05','2019-04-05 15:57:05','N','9');

INSERT INTO TB_HISTORIA VALUES('5','Chamada das formações','<p>Chamada das forma&ccedil;&otilde;es (Coordenadores de forma&ccedil;&atilde;o) das forma&ccedil;&otilde;es marcadas na agenda</p>','2019-04-05 15:57:59','2019-04-05 15:58:17','N','7');

INSERT INTO TB_HISTORIA VALUES('6','Manter agenda','<p>Tela de visualiza&ccedil;&atilde;o e edi&ccedil;&atilde;o da agenda validando por perfil, trazer aniversariantes<br />\n\n\n&nbsp;</p>','2019-04-05 15:59:15','2019-04-05 15:59:15','N','6');

INSERT INTO TB_HISTORIA VALUES('7','Manter Peça teatro','<p>Manter Pe&ccedil;a teatro (Nome, roteiro, musicas)</p>','2019-04-05 16:02:21','2019-04-05 16:02:21','N','8');

INSERT INTO TB_HISTORIA VALUES('8','Vender Camisa Estoque','<p>Vender Camisa Estoque tirando do estoque a quantida disponibilizando uma grid com todo o estoque</p>','2019-04-05 17:04:19','2019-04-05 17:04:19','N','4');

INSERT INTO TB_HISTORIA VALUES('9','Manter Produto','<p>Manter Produto</p>','2019-04-05 17:16:32','2019-04-05 17:16:32','N','10');

INSERT INTO TB_HISTORIA VALUES('10','Manter Pedido camisa (Lote)','<p>Manter Pedido camisa (Lote)</p>','2019-04-05 17:19:56','2019-04-05 17:19:56','N','4');

INSERT INTO TB_HISTORIA VALUES('11','Estatistica da camisa','<p>QUantas pedidas, vendidas, por tamanho, lucro valor arrecadado (Com desconto cart&atilde;o); quantas entregues, quantas estoque;</p>','2019-04-08 14:46:15','2019-04-08 14:46:15','N','4');

INSERT INTO TB_HISTORIA VALUES('12','Manter Fluxo de caixa','<p>Manter Fluxo de caixa (Tipo de sa&iacute;das e entradas), usu&aacute;rio atualizando</p>','2019-04-15 14:54:47','2019-04-15 14:54:47','N','11');

INSERT INTO TB_HISTORIA VALUES('13','Pesquisa Avançada Dos Fluxos de caixa','<p>por pessoa, por tipo (Entrada e sa&iacute;da, por evento, por data realizado, situa&ccedil;&atilde;o pagamento)</p>','2019-04-15 14:56:31','2019-04-15 14:58:46','N','11');

INSERT INTO TB_HISTORIA VALUES('14','Manter Caixa','<p>Caixa atual, caixa por evento, valores a receber, valores a pagar, pessoa respons&aacute;vel pelo dinheiro presente, pelo pagamento ou pelo recebimento.</p>','2019-04-15 15:00:24','2019-04-15 15:00:24','N','11');

INSERT INTO TB_HISTORIA VALUES('15','Manter Transferência','<p>Realizar transfer&ecirc;ncia de dinheiro entre entradas e sa&iacute;das e pesosas (Administrativo, conselho e respons&aacute;vel pela miss&atilde;o)</p>','2019-04-15 15:01:26','2019-04-15 15:01:26','N','11');

INSERT INTO TB_HISTORIA VALUES('16','Pesquisa Avançada dos Pedidos da Camisa','<p>Pessoa, tamanho, cor, Sit. pagamento, Status Pedido, Dt Pedido, Dt Entregue, Usu&aacute;rio, Estoque,</p>','2019-04-16 12:04:57','2019-04-16 12:04:57','N','4');

INSERT INTO TB_HISTORIA VALUES('17','Manter Pedido camisa','<p>Manter Pedido camisa pelo site da camisa cadastrada</p>','2019-05-02 11:41:08','2019-05-02 11:41:08','N','12');




DROP TABLE IF EXISTS TB_HISTORICO_HISTORIA;


CREATE TABLE `TB_HISTORICO_HISTORIA` (
  `co_historico_historia` int(11) NOT NULL AUTO_INCREMENT,
  `nu_esforco` int(2) DEFAULT NULL,
  `nu_esforco_restante` int(2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_historico_historia`,`co_historia`),
  KEY `fk_TB_HISTORICO_HISTORIA_TB_HISTORIA1_idx` (`co_historia`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;


INSERT INTO TB_HISTORICO_HISTORIA VALUES('1','13','5','2019-03-27 11:16:40','1');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('2','8','5','2019-03-27 11:17:04','2');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('3','13','13','2019-04-05 15:55:39','3');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('4','40','40','2019-04-05 15:57:05','4');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('5','13','13','2019-04-05 15:57:59','5');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('6','13','13','2019-04-05 15:58:17','5');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('7','13','13','2019-04-05 15:59:15','6');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('8','13','13','2019-04-05 16:02:21','7');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('9','13','13','2019-04-05 17:04:19','8');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('10','13','0','2019-04-05 17:04:40','1');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('11','13','13','2019-04-05 17:16:32','9');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('12','13','13','2019-04-05 17:19:56','10');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('13','8','0','2019-04-08 14:26:48','1');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('14','13','5','2019-04-08 14:26:57','2');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('15','20','20','2019-04-08 14:46:15','11');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('16','5','5','2019-04-15 14:54:47','12');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('17','8','8','2019-04-15 14:56:31','13');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('18','8','8','2019-04-15 14:58:46','13');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('19','20','20','2019-04-15 15:00:24','14');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('20','8','8','2019-04-15 15:01:26','15');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('21','13','0','2019-04-16 11:57:21','2');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('22','8','8','2019-04-16 12:04:57','16');

INSERT INTO TB_HISTORICO_HISTORIA VALUES('23','8','8','2019-05-02 11:41:08','17');




DROP TABLE IF EXISTS TB_IMAGEM;


CREATE TABLE `TB_IMAGEM` (
  `co_imagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) NOT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=494 DEFAULT CHARSET=latin1;


INSERT INTO TB_IMAGEM VALUES('1','leonardo-m-c-bessa-56e8920c23ab6.jpg');

INSERT INTO TB_IMAGEM VALUES('2','amanda-tominaga-5c4a33b191f83.jpg');

INSERT INTO TB_IMAGEM VALUES('351','andressa-carvalho-da-silva-5c6411ce5aae2.jpg');

INSERT INTO TB_IMAGEM VALUES('4','brenda-nayane-duda-moreira-5c60c4efb97ac.jpeg');

INSERT INTO TB_IMAGEM VALUES('350','dierfe-de-deus-lima-5c63f9ec47af8.jpg');

INSERT INTO TB_IMAGEM VALUES('7','amanda-silva-lima-5a259f4e532ad.jpg');

INSERT INTO TB_IMAGEM VALUES('8','jerlane-soares-magalhaes-da-silva-5a25a537f1d0c.jpg');

INSERT INTO TB_IMAGEM VALUES('9','joao-victor-pereira-fernandes-5a25a62b62be8.jpg');

INSERT INTO TB_IMAGEM VALUES('11','thais-lima-rocha-5a25bc8aba273.jpg');

INSERT INTO TB_IMAGEM VALUES('12','thais-lima-rocha-5a25bcd7719e2.jpg');

INSERT INTO TB_IMAGEM VALUES('13','fabricio-alves-oliveira-5a25e55ada86d.jpeg');

INSERT INTO TB_IMAGEM VALUES('247','mariana-lima-de-oliveira-5af9d0164858b.jpg');

INSERT INTO TB_IMAGEM VALUES('15','vitoria-prudencio-lima-5c45cf70192ac.jpg');

INSERT INTO TB_IMAGEM VALUES('17','wallisson-matias-de-sousa-5a2687e5d3b36.jpg');

INSERT INTO TB_IMAGEM VALUES('18','manuela-correa-marangoni-5a2699bda4bb7.JPG');

INSERT INTO TB_IMAGEM VALUES('19','priscila-martins-matias-5c64cf9bc0d79.jpg');

INSERT INTO TB_IMAGEM VALUES('20','mercia-batista-miranda-5c450b899678d.jpg');

INSERT INTO TB_IMAGEM VALUES('21','veronica-cristina-de-lima-ribeiro-5a275871ad572.JPG');

INSERT INTO TB_IMAGEM VALUES('22','kamila-silva-5adf93673b65d.jpeg');

INSERT INTO TB_IMAGEM VALUES('23','diogo-da-silva-cardoso-5a28962de2ab7.jpg');

INSERT INTO TB_IMAGEM VALUES('24','cassio-rodrigues-castro-5a28a6cd3d36c.jpg');

INSERT INTO TB_IMAGEM VALUES('26','eduardo-pires-tominaga-5a29bed5a0225.jpg');

INSERT INTO TB_IMAGEM VALUES('27','thainata-tonha-de-santana-5a2a7763a5979.jpg');

INSERT INTO TB_IMAGEM VALUES('28','raul-dias-miranda-cardoso-5c66b059d6bea.jpg');

INSERT INTO TB_IMAGEM VALUES('29','erica-stephanie-de-sousa-carvalho-5b3ce2df191a7.jpg');

INSERT INTO TB_IMAGEM VALUES('349','lorrane-hester-pereira-rocha-5c62b7e6bcd8e.jpg');

INSERT INTO TB_IMAGEM VALUES('32','pedro-augusto-pacheco-5a2c20026bda4.png');

INSERT INTO TB_IMAGEM VALUES('33','gabriella-lima-tonha-5a2c31037a294.jpg');

INSERT INTO TB_IMAGEM VALUES('34','raul-dias-miranda-cardoso-5a2dc30837843.jpg');

INSERT INTO TB_IMAGEM VALUES('36','luana-ribeiro-bessa-5a2dd73e1d6dd.jpg');

INSERT INTO TB_IMAGEM VALUES('37','leticia-machado-carvalho-bessa-5b3109e1007ff.jpg');

INSERT INTO TB_IMAGEM VALUES('38','evelyn-ribeiro-da-silva-5a2edf7d99956.jpg');

INSERT INTO TB_IMAGEM VALUES('39','vitoria-prudencio-lima-5a2ee1c7795ee.jpg');

INSERT INTO TB_IMAGEM VALUES('40','lara-de-sousa-almeida-5a2eeafd99646.jpg');

INSERT INTO TB_IMAGEM VALUES('41','gabriela-mendes-souza-5a2ef5fb55046.JPG');

INSERT INTO TB_IMAGEM VALUES('42','daniela-mendes-de-souza-5a2ef759696ef.JPG');

INSERT INTO TB_IMAGEM VALUES('43','isabella-garcia-mendes-5a2fea875ed9d.jpeg');

INSERT INTO TB_IMAGEM VALUES('44','vitor-hugo-barroso-5a2ff9d0975a9.jpg');

INSERT INTO TB_IMAGEM VALUES('45','lara-de-sousa-almeida-5a30086bea207.jpg');

INSERT INTO TB_IMAGEM VALUES('46','antonio-carlos-ramos-lima-5a3281c7028bd.jpg');

INSERT INTO TB_IMAGEM VALUES('47','antonio-carlos-ramos-lima-5a328901f34d8.jpg');

INSERT INTO TB_IMAGEM VALUES('48','larissa-mesquita-5a3548a6d260a.jpeg');

INSERT INTO TB_IMAGEM VALUES('50','danielle-patricia-guedes-e-silva-5a37f567d5bc9.jpg');

INSERT INTO TB_IMAGEM VALUES('51','barbara-silva-5a382cd0273e4.JPG');

INSERT INTO TB_IMAGEM VALUES('348','maria-julia-de-freitas-5c61e4b2b5feb.jpg');

INSERT INTO TB_IMAGEM VALUES('55','maria-gabriela-alves-rodrigues-5a385a6e22d3d.JPG');

INSERT INTO TB_IMAGEM VALUES('58','thais-oliveira-da-costa-maia-5c506f8a216dd.jpeg');

INSERT INTO TB_IMAGEM VALUES('59','leticia-martins-de-sousa-5a392db0f3b6e.jpeg');

INSERT INTO TB_IMAGEM VALUES('60','keiter-da-silva-maia-5c50f4eb90ff1.jpg');

INSERT INTO TB_IMAGEM VALUES('61','roniel-rodrigues-albuquerque-5c4bb1a3d882d.jpeg');

INSERT INTO TB_IMAGEM VALUES('62','lilian-machado-carvalho-bessa-5a3aeb2c7d19c.jpg');

INSERT INTO TB_IMAGEM VALUES('64','anna-caroliny-rodrigues-lauro-5a3bccb69e958.jpg');

INSERT INTO TB_IMAGEM VALUES('65','clarisse-vitoria-franca-pereira-5a3bf6f9badea.png');

INSERT INTO TB_IMAGEM VALUES('330','amaury-costa-silva-ramos-5c52fe884a358.jpg');

INSERT INTO TB_IMAGEM VALUES('67','joyce-lopes-ferreira-5afb8e88ceeb1.jpeg');

INSERT INTO TB_IMAGEM VALUES('68','sabrina-belarmina-de-abreu-5a3fe0395f2b1.jpg');

INSERT INTO TB_IMAGEM VALUES('347','ana-carolina-ferreira-da-costa-5c618bbec9540.jpeg');

INSERT INTO TB_IMAGEM VALUES('346','joao-paulo-moreira-da-nobrega-5c60c4092aa4e.jpeg');

INSERT INTO TB_IMAGEM VALUES('71','evelyn-ribeiro-5a426c1a5307a.jpg');

INSERT INTO TB_IMAGEM VALUES('73','adriel-clementino-dos-santos-5a43cf25e52e3.jpeg');

INSERT INTO TB_IMAGEM VALUES('74','linneker-lima-roberto-gomes-5afa3f52bf0b4.jpeg');

INSERT INTO TB_IMAGEM VALUES('75','kamila-silva-5a443ec4a76fd.jpeg');

INSERT INTO TB_IMAGEM VALUES('76','maria-tayanne-5a450f512dfe2.jpg');

INSERT INTO TB_IMAGEM VALUES('77','luamar-de-sousa-da-silva-5a458b9ed3d8f.jpg');

INSERT INTO TB_IMAGEM VALUES('79','isabella-garcia-mendes-5a4773896b254.jpeg');

INSERT INTO TB_IMAGEM VALUES('81','laura-dos-santos-bussolo-5a479c5a028c9.JPG');

INSERT INTO TB_IMAGEM VALUES('82','maylla-souza-balzani-5a47d87adde41.jpg');

INSERT INTO TB_IMAGEM VALUES('83','jessika-layane-da-cruz-rocha-5a4a88bf2863f.jpg');

INSERT INTO TB_IMAGEM VALUES('84','brena-kessia-apolinario-5c6dc5796efd8.jpg');

INSERT INTO TB_IMAGEM VALUES('85','maria-rita-de-franca-oliveira-5a4ad4ff42bd8.jpeg');

INSERT INTO TB_IMAGEM VALUES('86','deivson-rodrigo-carvalho-de-lima-5a4c1a3c900ab.jpg');

INSERT INTO TB_IMAGEM VALUES('87','victtoria-macedo-leal-5c644bbcb7ece.jpg');

INSERT INTO TB_IMAGEM VALUES('88','gustavo-rodrigues-viana-5a4d17654bb74.jpg');

INSERT INTO TB_IMAGEM VALUES('89','edilene-da-cruz-silva-5a4e23efada64.jpg');

INSERT INTO TB_IMAGEM VALUES('345','carolina-romeiro-moraes-5c5f168c5fe1d.jpeg');

INSERT INTO TB_IMAGEM VALUES('93','paloma-maria-ferreira-da-silva-5a4fac86db822.jpg');

INSERT INTO TB_IMAGEM VALUES('94','maria-leticia-souza-de-jesus-5a4fb4c0a4762.jpeg');

INSERT INTO TB_IMAGEM VALUES('95','daniel-silva-almeida-5a4fbfea1a304.jpg');

INSERT INTO TB_IMAGEM VALUES('98','jennifer-bianca-candido-souza-5a5139eb89171.jpeg');

INSERT INTO TB_IMAGEM VALUES('100','maysa-pereira-dias-5a515096dc444.jpg');

INSERT INTO TB_IMAGEM VALUES('101','maysa-pereira-dias-5a5153d36cf9c.jpg');

INSERT INTO TB_IMAGEM VALUES('102','fernanda-soares-conceicao-5a515f69774ba.jpg');

INSERT INTO TB_IMAGEM VALUES('103','leticia-maria-lima-gomes-5a51631351f0e.png');

INSERT INTO TB_IMAGEM VALUES('104','amanda-neves-de-carvalho-5a521cba1cda0.jpg');

INSERT INTO TB_IMAGEM VALUES('105','amanda-neves-de-carvalho-5a5221db076b0.jpg');

INSERT INTO TB_IMAGEM VALUES('344','nathalia-saraiva-de-souza-5c5ee669db849.jpg');

INSERT INTO TB_IMAGEM VALUES('108','pedro-henrique-pires-fontes-5a529da62250c.jpg');

INSERT INTO TB_IMAGEM VALUES('109','ronny-ken-dias-tominaga-5a52a1923f1e3.jpg');

INSERT INTO TB_IMAGEM VALUES('110','bianca-ceci-maria-da-silva-vieira-justiniano-pinto-5a52a240c32d5.jpg');

INSERT INTO TB_IMAGEM VALUES('111','victor-hugo-souza-rodrigues-5a52bbef65f75.jpg');

INSERT INTO TB_IMAGEM VALUES('112','tayane-moreira-da-mota-5c4abbaba1510.jpg');

INSERT INTO TB_IMAGEM VALUES('113','laura-marina-da-silva-doca-chagas-5a53d20cc19ff.JPG');

INSERT INTO TB_IMAGEM VALUES('114','ana-karolyna-figueredo-dos-santos-5a53e74e59b29.jpg');

INSERT INTO TB_IMAGEM VALUES('115','bruno-lima-de-souza-5a53ef3756803.jpg');

INSERT INTO TB_IMAGEM VALUES('116','murillo-medeiros-da-costa-5a5404d1b9f59.jpg');

INSERT INTO TB_IMAGEM VALUES('117','nathalya-pimentel-temote-5a540af140329.jpg');

INSERT INTO TB_IMAGEM VALUES('118','pedro-henrique-da-silva-dutra-5a540b816f0ec.jpeg');

INSERT INTO TB_IMAGEM VALUES('119','joao-carlos-da-costa-souza-5a5411126e681.jpg');

INSERT INTO TB_IMAGEM VALUES('121','lara-de-sousa-almeida-5a54f9a8c2095.jpg');

INSERT INTO TB_IMAGEM VALUES('122','larissa-nobre-da-cruz-5a555914de5cf.jpg');

INSERT INTO TB_IMAGEM VALUES('343','adriana-arruda-de-jesus-5c5ebf942d7fe.jpeg');

INSERT INTO TB_IMAGEM VALUES('124','bruna-alves-de-almeida-5a57e1e117b38.jpg');

INSERT INTO TB_IMAGEM VALUES('125','debora-duarte-honorio-5a58b5422f36c.jpg');

INSERT INTO TB_IMAGEM VALUES('127','yara-raquel-figueredo-rocha-5a58ca7466767.jpeg');

INSERT INTO TB_IMAGEM VALUES('128','elton-barauna-de-souza-5a5a0a16c8b2c.jpg');

INSERT INTO TB_IMAGEM VALUES('129','vitor-ribeiro-da-silva-5a5a2272a202d.jpg');

INSERT INTO TB_IMAGEM VALUES('245','catherine-mendes-de-jesus-5af76e2271f31.jpg');

INSERT INTO TB_IMAGEM VALUES('132','romulo-dias-miranda-cardoso-5a5d4f2a288eb.jpg');

INSERT INTO TB_IMAGEM VALUES('133','emanuelle-beatriz-de-souza-pereira-5a5e04ed71003.jpeg');

INSERT INTO TB_IMAGEM VALUES('134','thais-araujo-xavier-5a5e0569e2a99.jpg');

INSERT INTO TB_IMAGEM VALUES('135','leila-pires-tominaga-5a5e2b22797d6.jpg');

INSERT INTO TB_IMAGEM VALUES('342','victoria-cristina-sousa-lima-5c5d86be65013.jpg');

INSERT INTO TB_IMAGEM VALUES('139','brunna-natiely-herculano-vieira-5a5e9e829edb6.jpg');

INSERT INTO TB_IMAGEM VALUES('140','jhony-ferreira-5a5fc8581e1af.jpg');

INSERT INTO TB_IMAGEM VALUES('341','milena-de-oliveira-5c5d86077ad82.jpg');

INSERT INTO TB_IMAGEM VALUES('142','jefferson-fillipe-de-souza-lopes-5a5fd2248d29f.jpg');

INSERT INTO TB_IMAGEM VALUES('246','lucas-cunha-ribeiro-5af788c845568.JPG');

INSERT INTO TB_IMAGEM VALUES('144','gabrielle-rodrigues-oliveira-5a5fdbbc9b731.jpg');

INSERT INTO TB_IMAGEM VALUES('340','alan-matos-lourenco-5c5cdaa110980.jpg');

INSERT INTO TB_IMAGEM VALUES('253','breno-silva-de-jesus-5b0b6de86df15.jpeg');

INSERT INTO TB_IMAGEM VALUES('147','silvia-miki-yamamoto-5a60e9528aec7.jpeg');

INSERT INTO TB_IMAGEM VALUES('148','larissa-goncalves-ferreira-5b3cd71d4d429.jpg');

INSERT INTO TB_IMAGEM VALUES('149','maria-eduarda-freitas-5a612d14e8698.jpg');

INSERT INTO TB_IMAGEM VALUES('150','maria-karlene-ramos-lima-5b0cad2b3c128.jpg');

INSERT INTO TB_IMAGEM VALUES('160','cecilia-rubia-nascimento-silva-5a66296c1d456.jpeg');

INSERT INTO TB_IMAGEM VALUES('162','matheus-salvino-azevedo-5a6677c7a5dc3.jpg');

INSERT INTO TB_IMAGEM VALUES('163','wesley-salvino-de-farias-5a6679ff23e7f.jpg');

INSERT INTO TB_IMAGEM VALUES('164','victor-samuel-azevedo-de-oliveira-5a667cb497129.jpg');

INSERT INTO TB_IMAGEM VALUES('339','ana-flavia-moreira-e-silva-coelho-5c5ccc795b424.jpg');

INSERT INTO TB_IMAGEM VALUES('166','luiz-antonio-bizerra-de-oliveira-5a6757e72178a.jpg');

INSERT INTO TB_IMAGEM VALUES('260','iv-vigilia-alegria-que-vem-de-deus-5b49067ddf106.jpg');

INSERT INTO TB_IMAGEM VALUES('168','guilherme-moreira-ferreira-5a67d988eaac8.jpg');

INSERT INTO TB_IMAGEM VALUES('169','guilherme-balbino-da-silva-5a67edecee754.jpg');

INSERT INTO TB_IMAGEM VALUES('170','marina-lopes-rodrigues-5a687ed11609e.jpeg');

INSERT INTO TB_IMAGEM VALUES('171','beatriz-feitosa-dias-5a688ad89bd30.jpg');

INSERT INTO TB_IMAGEM VALUES('172','leticia-da-silva-pereira-5a68a6b7315ec.jpg');

INSERT INTO TB_IMAGEM VALUES('173','rivelino-nunes-pereira-filho-5a68a90ff1d17.jpg');

INSERT INTO TB_IMAGEM VALUES('174','samara-desconzi-5a6a09716beec.JPG');

INSERT INTO TB_IMAGEM VALUES('175','wesley-alves-de-castro-5a6a41c6e91dc.jpeg');

INSERT INTO TB_IMAGEM VALUES('338','natalia-afonso-soares-5c5c586834aab.jpeg');

INSERT INTO TB_IMAGEM VALUES('177','deise-mendes-5a6b12fdd39e4.jpg');

INSERT INTO TB_IMAGEM VALUES('178','fernanda-karla-rodrigues-lima-5a6b4f7c2bf35.jpg');

INSERT INTO TB_IMAGEM VALUES('179','laiane-de-oliveira-slva-5a6bc8ba5ee8f.jpg');

INSERT INTO TB_IMAGEM VALUES('270','jakeline-vilela-de-sousa-5c450bcdf2a2d.jpg');

INSERT INTO TB_IMAGEM VALUES('181','guilherme-vale-silva-matos-5a6cb4a3bd882.jpg');

INSERT INTO TB_IMAGEM VALUES('182','gabriella-vale-silva-matos-5a6cb675aec83.jpg');

INSERT INTO TB_IMAGEM VALUES('183','izabella-vaz-bandeira-5a6ce54b1fcea.jpg');

INSERT INTO TB_IMAGEM VALUES('185','fernanda-coelho-do-nascimento-5a6e6edb9c5a7.jpg');

INSERT INTO TB_IMAGEM VALUES('186','monike-nardi-5a6ef0fee0e5d.jpg');

INSERT INTO TB_IMAGEM VALUES('187','arlan-santos-coimbra-5a6faf2f314a5.jpg');

INSERT INTO TB_IMAGEM VALUES('188','leonara-almeida-5a6fc8eb1cf05.jpg');

INSERT INTO TB_IMAGEM VALUES('337','gabrielly-mangabeira-lourenco-de-lima-5c5b95f4c1920.jpeg');

INSERT INTO TB_IMAGEM VALUES('278','catherine-mendes-de-jesus-5c4519b75ad63.jpg');

INSERT INTO TB_IMAGEM VALUES('190','jonas-rodrigues-de-sousa-5c6d8f0de8b5e.jpg');

INSERT INTO TB_IMAGEM VALUES('191','joao-victor-oliveira-barros-5a711ba466122.jpg');

INSERT INTO TB_IMAGEM VALUES('192','amaury-costa-silva-ramos-5a71aca4a839a.jpg');

INSERT INTO TB_IMAGEM VALUES('193','luiz-miguel-barbosa-barros-5a7335ba3e198.jpg');

INSERT INTO TB_IMAGEM VALUES('194','jose-ferreira-dos-santos-5a73a2fbc17c5.JPG');

INSERT INTO TB_IMAGEM VALUES('195','luy-brenno-santos-de-souza-5a73b22a5eef9.JPG');

INSERT INTO TB_IMAGEM VALUES('196','ernando-souza-de-paula-5a74620d7b044.jpg');

INSERT INTO TB_IMAGEM VALUES('197','higor-rodrigues-dias-5a749fff17f9c.jpg');

INSERT INTO TB_IMAGEM VALUES('198','higor-dias-5a74a3361fb57.jpg');

INSERT INTO TB_IMAGEM VALUES('199','hellen-thais-dias-rodrigues-5a74a5ec9d873.JPG');

INSERT INTO TB_IMAGEM VALUES('200','diego-rocha-da-silva-5a75c7bbc0efe.jpg');

INSERT INTO TB_IMAGEM VALUES('201','soniara-aparecida-mendes-maia-5a7656b2d944f.jpg');

INSERT INTO TB_IMAGEM VALUES('202','raquel-da-costa-silva-5a76578390c81.jpg');

INSERT INTO TB_IMAGEM VALUES('203','julia-faraj-benn-5a7658b5172e5.jpg');

INSERT INTO TB_IMAGEM VALUES('204','matheus-martins-da-costa-5a772563a5ab3.jpg');

INSERT INTO TB_IMAGEM VALUES('205','wemerson-andrade-messias-santos-5a775f6c18744.jpeg');

INSERT INTO TB_IMAGEM VALUES('329','karen-geovanna-figueredo-dos-santos-5c50f4fe21b1d.jpg');

INSERT INTO TB_IMAGEM VALUES('207','gabriel-de-souza-lima-5a77a4afd9f8e.jpg');

INSERT INTO TB_IMAGEM VALUES('208','polyanna-da-costa-lima-5a77d82edb9d1.jpg');

INSERT INTO TB_IMAGEM VALUES('336','antonia-simone-ramos-lima-maciel-5c5b2ad80976b.jpg');

INSERT INTO TB_IMAGEM VALUES('210','lais-vieira-sousa-5a78baf8ede37.jpg');

INSERT INTO TB_IMAGEM VALUES('211','ana-lidia-de-holanda-nunes-5a78dc4b32aa8.jpg');

INSERT INTO TB_IMAGEM VALUES('212','alex-gehlhaar-5a78f4083f8d6.jpg');

INSERT INTO TB_IMAGEM VALUES('213','joyce-ferreira-gomes-5a78f8fb2f1be.jpg');

INSERT INTO TB_IMAGEM VALUES('215','tiago-moreira-gomes-5a7ace45ce896.jpg');

INSERT INTO TB_IMAGEM VALUES('216','abigayl-kathleen-costa-da-penha-5a7ae5d5c4f65.jpg');

INSERT INTO TB_IMAGEM VALUES('217','maria-luiza-camargo-raposo-de-melo-5a7b043773170.jpg');

INSERT INTO TB_IMAGEM VALUES('218','elliel-kassio-5a7b16ed16f84.jpg');

INSERT INTO TB_IMAGEM VALUES('219','daniel-negreiro-marciel-5a7b1e1083b80.jpg');

INSERT INTO TB_IMAGEM VALUES('220','carlos-augusto-silva-damacena-5a7b8079eacf4.png');

INSERT INTO TB_IMAGEM VALUES('377','joao-victor-ferreira-de-araujo-5c6db33612195.jpg');

INSERT INTO TB_IMAGEM VALUES('223','guilherme-henrique-da-silva-costa-5a7c64f9e1878.jpg');

INSERT INTO TB_IMAGEM VALUES('224','erika-pereira-do-prado-5a7c7201c7f63.jpeg');

INSERT INTO TB_IMAGEM VALUES('225','rafael-fontenele-5a7c75f873d32.jpeg');

INSERT INTO TB_IMAGEM VALUES('226','leticia-coelho-brito-5a7cb81c1cdac.jpg');

INSERT INTO TB_IMAGEM VALUES('227','tamires-ferreira-barbosa-felix-5a7cc40160e82.jpg');

INSERT INTO TB_IMAGEM VALUES('228','brunna-adryah-guimaraes-mourao-5a7cf2fe8366f.jpg');

INSERT INTO TB_IMAGEM VALUES('229','julia-vitoria-negreiro-marciel-5a7cf60c686a8.jpg');

INSERT INTO TB_IMAGEM VALUES('230','joao-victor-alves-coelho-5a7d010f44bf1.jpg');

INSERT INTO TB_IMAGEM VALUES('231','camila-santos-gabriel-5a7d06cdba13d.png');

INSERT INTO TB_IMAGEM VALUES('232','vitor-valentin-benetti-5a7db1742d733.jpg');

INSERT INTO TB_IMAGEM VALUES('233','geovanna-emily-araujo-silva-5a7dbc9d11742.jpg');

INSERT INTO TB_IMAGEM VALUES('234','alexsandra-maiberg-hausser-5a7dbe93ee582.jpg');

INSERT INTO TB_IMAGEM VALUES('235','pedro-paulo-alves-coelho-5a7e204a3a794.jpg');

INSERT INTO TB_IMAGEM VALUES('236','Eventos/CapaEventos/vi-retiro-de-carnaval-santifique-se-5ac98c54e3d03.jpg');

INSERT INTO TB_IMAGEM VALUES('237','Eventos/CapaEventos/festival-de-pastel-5acfdc9bdcc97.JPG');

INSERT INTO TB_IMAGEM VALUES('238','Eventos/CapaEventos/ii-abastecimento-espiritual-gej-5ad7fde213a9b.jpg');

INSERT INTO TB_IMAGEM VALUES('239','fernanda-gomes-de-freitas-moura-5c5dabcb34685.jpeg');

INSERT INTO TB_IMAGEM VALUES('241','suyane-tallita-reis-silva-5ae5cd8ec73b8.JPG');

INSERT INTO TB_IMAGEM VALUES('335','thamires-barbosa-de-almeida-5c5b2862a7945.jpeg');

INSERT INTO TB_IMAGEM VALUES('334','raquel-beserra-5c5ad8d014dbf.jpg');

INSERT INTO TB_IMAGEM VALUES('252','antonia-simone-ramos-lima-maciel-5b03052a9f401.jpg');

INSERT INTO TB_IMAGEM VALUES('255','antonia-simone-ramos-lima-maciel-5b15acc4dc94c.jpg');

INSERT INTO TB_IMAGEM VALUES('256','ana-carolina-silva-5b15c5c1eacd3.jpeg');

INSERT INTO TB_IMAGEM VALUES('257','wesley-barbosa-de-carvalho-maciel-lima-5c64350ed06b7.jpg');

INSERT INTO TB_IMAGEM VALUES('261','leonardo-machado-carvalho-bessa-5c4abc533e242.jpg');

INSERT INTO TB_IMAGEM VALUES('264','fernanda-gomes-de-freitas-moura-5c3c7e49a6679.jpg');

INSERT INTO TB_IMAGEM VALUES('267','edwirges-cassia-de-macedo-5c438a497f3e6.jpg');

INSERT INTO TB_IMAGEM VALUES('268','daniela-santos-de-almeida-5c450a67892a4.jpg');

INSERT INTO TB_IMAGEM VALUES('333','joao-victor-ribeiro-da-silva-5c5864af479cf.jpg');

INSERT INTO TB_IMAGEM VALUES('271','anderson-braga-inocentes-5c450c0a05b0d.jpeg');

INSERT INTO TB_IMAGEM VALUES('272','matheus-klismann-carvalho-costa-5c450c3749d83.jpg');

INSERT INTO TB_IMAGEM VALUES('273','mariana-salles-de-melo-5c450e417c224.jpg');

INSERT INTO TB_IMAGEM VALUES('274','thais-cristina-campos-santos-5c450f36baf7c.jpeg');

INSERT INTO TB_IMAGEM VALUES('276','yanka-evelyn-rodrigues-dos-santos-5c4abbdb7f299.jpg');

INSERT INTO TB_IMAGEM VALUES('277','relka-maria-ponte-aguiar-5c451094b7384.jpg');

INSERT INTO TB_IMAGEM VALUES('279','geovanna-victhoria-cardoso-siqueira-5c4520da90c58.jpg');

INSERT INTO TB_IMAGEM VALUES('280','ana-carolina-meireles-felipe-5c4525942598f.jpg');

INSERT INTO TB_IMAGEM VALUES('281','keyce-cristina-oliveira-dos-santos-5c452a7592b0e.jpg');

INSERT INTO TB_IMAGEM VALUES('282','monique-vieira-pereira-pinheiro-5c4abb4b5fe62.jpg');

INSERT INTO TB_IMAGEM VALUES('283','linneker-lima-roberto-gomes-5c4abb821ec11.jpg');

INSERT INTO TB_IMAGEM VALUES('285','gabriellen-cintia-de-oliveira-campos-5c45c045f05bb.jpg');

INSERT INTO TB_IMAGEM VALUES('286','taynara-rodrigues-de-azevedo-5c4abb6a093c3.jpg');

INSERT INTO TB_IMAGEM VALUES('287','beatriz-simoes-da-silva-melo-5c45c59fe4cbf.png');

INSERT INTO TB_IMAGEM VALUES('332','gabriel-walker-5c55b570cb2e7.jpg');

INSERT INTO TB_IMAGEM VALUES('290','lilian-machado-carvalho-bessa-5c45cfcf03a80.jpg');

INSERT INTO TB_IMAGEM VALUES('292','lucas-cunha-ribeiro-5c45e2677ce62.jpg');

INSERT INTO TB_IMAGEM VALUES('293','sara-da-mota-mendonca-5c45ed7c25afb.jpeg');

INSERT INTO TB_IMAGEM VALUES('331','matheus-humberto-miranda-ribeiro-5c532c51ba145.jpg');

INSERT INTO TB_IMAGEM VALUES('295','savio-bispo-reis-5c45fb4dd24b8.jpeg');

INSERT INTO TB_IMAGEM VALUES('296','danilo-arantes-sebastiao-5c4602d7ce37a.jpg');

INSERT INTO TB_IMAGEM VALUES('297','isabela-cristina-capitulino-ximenes-aragao-5c4623c51e1cf.jpg');

INSERT INTO TB_IMAGEM VALUES('298','leticia-machado-carvalho-bessa-5c462dfdb8825.jpg');

INSERT INTO TB_IMAGEM VALUES('299','maria-clara-dos-santos-ribeiro-5c463ab9a2bc3.jpg');

INSERT INTO TB_IMAGEM VALUES('300','maria-claudia-bispo-reis-5c49a138463d1.jpg');

INSERT INTO TB_IMAGEM VALUES('301','jackson-alves-5c47afec2447f.jpeg');

INSERT INTO TB_IMAGEM VALUES('303','sinara-caroline-queiroz-simas-5c491167c6856.jpg');

INSERT INTO TB_IMAGEM VALUES('304','maria-isabel-amorim-de-sousa-5c4926571d537.jpg');

INSERT INTO TB_IMAGEM VALUES('305','sinara-caroline-queiroz-simas-5c49cb0622735.jpg');

INSERT INTO TB_IMAGEM VALUES('306','sinara-caroline-queiroz-simas-5c49cfd4a1227.jpeg');

INSERT INTO TB_IMAGEM VALUES('307','leticia-machado-carvalho-bessa-hsh-5c49d83e5f24c.jpg');

INSERT INTO TB_IMAGEM VALUES('308','ellen-patricia-fonseca-5c4a05df2c267.JPG');

INSERT INTO TB_IMAGEM VALUES('309','ellen-patricia-fonseca-5c4a079eeefb2.JPG');

INSERT INTO TB_IMAGEM VALUES('310','ellen-patricia-fonseca-5c4a09790eae9.jpg');

INSERT INTO TB_IMAGEM VALUES('311','ellen-patricia-fonseca-5c4a0c4f61cc3.JPG');

INSERT INTO TB_IMAGEM VALUES('312','ellen-patricia-fonseca-5c4a0dc10e298.JPG');

INSERT INTO TB_IMAGEM VALUES('313','ellen-patricia-fonseca-5c4a425a5e969.JPG');

INSERT INTO TB_IMAGEM VALUES('314','rayssa-pereira-de-oliveira-5c4a5279219a2.JPG');

INSERT INTO TB_IMAGEM VALUES('315','polyana-veloso-de-oliveira-5c4a674f1d401.jpg');

INSERT INTO TB_IMAGEM VALUES('316','sinara-caroline-queiroz-simas-5c4b027179ef9.jpg');

INSERT INTO TB_IMAGEM VALUES('317','jeane-silva-de-andrade-5c4b899f65eb4.jpg');

INSERT INTO TB_IMAGEM VALUES('318','leticia-miranda-moraes-5c4b8b3292e84.jpg');

INSERT INTO TB_IMAGEM VALUES('319','joao-victor-luziano-pereira-calisto-5c4ba67690706.jpg');

INSERT INTO TB_IMAGEM VALUES('320','luana-ribeiro-bessa-5c4c379de8193.jpg');

INSERT INTO TB_IMAGEM VALUES('321','aline-carvalho-de-lima-5c4c547c77c6e.jpeg');

INSERT INTO TB_IMAGEM VALUES('322','jucelia-saraiva-dos-santos-5c4e0fefdb9f7.jpg');

INSERT INTO TB_IMAGEM VALUES('323','ayrton-ferreira-lopes-5c4f0417d2c6d.jpg');

INSERT INTO TB_IMAGEM VALUES('324','henrique-carvalho-assuncao-5c4f34b30ce77.jpg');

INSERT INTO TB_IMAGEM VALUES('325','thaynara-barbosa-de-almeida-5c4f3ed6acac8.jpg');

INSERT INTO TB_IMAGEM VALUES('326','jessica-camila-campos-santos-5c4f7a19a0be2.jpg');

INSERT INTO TB_IMAGEM VALUES('327','gabriel-da-silva-barbosa-5c4f93dad68c4.jpg');

INSERT INTO TB_IMAGEM VALUES('328','lucrece-neri-portela-5c50295dc0830.jpg');

INSERT INTO TB_IMAGEM VALUES('352','karina-barbosa-mendes-5c6487239a98d.jpg');

INSERT INTO TB_IMAGEM VALUES('353','marcelo-alves-da-silva-5c655cffaf238.jpg');

INSERT INTO TB_IMAGEM VALUES('354','isabela-araujo-dos-santos-5c65716a364a8.jpeg');

INSERT INTO TB_IMAGEM VALUES('355','ana-karoliny-martins-tavares-5c659d8352c35.jpg');

INSERT INTO TB_IMAGEM VALUES('356','bruno-silva-dos-santos-5c65a156eebae.png');

INSERT INTO TB_IMAGEM VALUES('357','welington-barbosa-de-carvalho-maciel-lima-5c65fef75d6f0.jpg');

INSERT INTO TB_IMAGEM VALUES('358','ana-paula-carvalho-da-silva-5c660234815fc.jpg');

INSERT INTO TB_IMAGEM VALUES('359','sarah-guimaraes-pereira-cavalcante-5c6763a0ea11f.jpeg');

INSERT INTO TB_IMAGEM VALUES('360','sandra-raquel-de-oliveira-silva-5c68045cd7a20.jpg');

INSERT INTO TB_IMAGEM VALUES('361','daniela-farias-gomes-5c685f02e9a4b.jpg');

INSERT INTO TB_IMAGEM VALUES('362','dion-lucas-serafim-bispo-5c699f2fa655c.jpg');

INSERT INTO TB_IMAGEM VALUES('363','lucas-barbosa-farias-5c6aaab9f2452.jpg');

INSERT INTO TB_IMAGEM VALUES('364','danyelle-souza-silva-5c6abad14f063.jpg');

INSERT INTO TB_IMAGEM VALUES('365','ana-lucia-gomes-figueiro-alves-5c6b1bc9d7730.jpg');

INSERT INTO TB_IMAGEM VALUES('366','stephanie-paiva-silva-5c6b1fb931453.jpg');

INSERT INTO TB_IMAGEM VALUES('367','tio-fofao-5c6b20a8c5393.jpg');

INSERT INTO TB_IMAGEM VALUES('368','luis-fellype-moraes-de-aquino-5c6b3e1053f32.jpeg');

INSERT INTO TB_IMAGEM VALUES('369','eduardo-miranda-de-souza-santana-5c6b3e4954872.jpg');

INSERT INTO TB_IMAGEM VALUES('370','barbara-sany-gomes-alves-5c6b5e0bc9287.jpg');

INSERT INTO TB_IMAGEM VALUES('371','maria-eduarda-cardoso-de-araujo-5c6b62ee3cc32.jpeg');

INSERT INTO TB_IMAGEM VALUES('372','flavia-carolina-ferreira-linhares-5c6bd9b682be9.jpg');

INSERT INTO TB_IMAGEM VALUES('373','yasmim-oliveira-ferreira-dos-santos-5c6c677ec0b78.jpeg');

INSERT INTO TB_IMAGEM VALUES('374','renata-francisca-nogueira-dos-santos-5c6c7df087ee3.jpg');

INSERT INTO TB_IMAGEM VALUES('375','tiago-steferson-da-silva-araujo-5c6d7156886fa.jpg');

INSERT INTO TB_IMAGEM VALUES('376','bianca-gomes-de-souza-5c6d7236629c1.jpg');

INSERT INTO TB_IMAGEM VALUES('378','gabriel-alvino-martins-5c6f162de9337.jpg');

INSERT INTO TB_IMAGEM VALUES('379','larissa-correia-mariano-5c70750adb152.jpg');

INSERT INTO TB_IMAGEM VALUES('380','barbara-helena-sousa-cirilo-5c72d57d1c845.jpeg');

INSERT INTO TB_IMAGEM VALUES('381','arthur-simon-barbosa-da-silva-e-sa-5c7333db65558.jpg');

INSERT INTO TB_IMAGEM VALUES('382','wanderson-fernandes-de-souza-5c7341cdcab2c.jpg');

INSERT INTO TB_IMAGEM VALUES('383','clara-regina-rodrigues-5c73459c64531.jpg');

INSERT INTO TB_IMAGEM VALUES('384','maria-rita-oliveira-feitosa-5c73fac8dbeba.jpeg');

INSERT INTO TB_IMAGEM VALUES('385','lucianne-karen-nogueira-correia-5c74058146a52.jpg');

INSERT INTO TB_IMAGEM VALUES('386','vitor-araujo-mariano-5c741245ee0da.jpg');

INSERT INTO TB_IMAGEM VALUES('387','rhaissa-domingos-de-castro-5c741a6b9bd02.jpg');

INSERT INTO TB_IMAGEM VALUES('388','paulo-victor-da-silva-souza-5c74239ec40ee.jpg');

INSERT INTO TB_IMAGEM VALUES('389','janderson-willame-goncalves-bezerra-5c745d426ef43.jpg');

INSERT INTO TB_IMAGEM VALUES('390','thiago-marinho-de-oliveira-vilas-boas-5c74775a04ecd.png');

INSERT INTO TB_IMAGEM VALUES('391','isabela-maiter-veras-de-souza-5c747a2ea43be.jpeg');

INSERT INTO TB_IMAGEM VALUES('392','gabriella-andrade-dos-santos-lima-5c74b41392d63.jpg');

INSERT INTO TB_IMAGEM VALUES('393','henrique-nunes-de-sousa-5c75bfcf6efed.jpg');

INSERT INTO TB_IMAGEM VALUES('394','maria-luiza-de-sousa-campos-braga-5c7688aa03b2e.jpg');

INSERT INTO TB_IMAGEM VALUES('395','camila-carvalho-da-silva-5c76899aa3c49.jpg');

INSERT INTO TB_IMAGEM VALUES('396','ludimila-carvalho-da-silva-5c768a8f51881.jpg');

INSERT INTO TB_IMAGEM VALUES('397','mariana-lilian-lima-maia-5c77ee0750cba.jpeg');

INSERT INTO TB_IMAGEM VALUES('398','carlos-eduardo-ribeiro-dos-santos-5c77f2f4aa7d4.jpg');

INSERT INTO TB_IMAGEM VALUES('399','pedro-henrique-ribeiro-dos-santos-5c77f48b927af.jpg');

INSERT INTO TB_IMAGEM VALUES('400','glaucia-penha-mendes-5c78334c8242a.jpg');

INSERT INTO TB_IMAGEM VALUES('401','gabriele-souza-conde-5c7867a0878b0.jpg');

INSERT INTO TB_IMAGEM VALUES('402','samara-adrielly-de-oliveira-gaspar-5c78768903cb6.jpg');

INSERT INTO TB_IMAGEM VALUES('403','thiago-nunes-neves-5c7911f9c7239.jpeg');

INSERT INTO TB_IMAGEM VALUES('404','joao-david-de-jesus-costa-5c7917844666c.jpg');

INSERT INTO TB_IMAGEM VALUES('405','steffany-silva-sobrinho-5c792e87ce76e.jpg');

INSERT INTO TB_IMAGEM VALUES('406','rafaela-barbosa-rafacho-moura-5c796b5ac29a6.JPG');

INSERT INTO TB_IMAGEM VALUES('407','rafael-oliveira-sucupira-5c796fd78ea33.jpg');

INSERT INTO TB_IMAGEM VALUES('408','foi-ela-quem-tudo-fez-5cccedb69499e.jpg');

INSERT INTO TB_IMAGEM VALUES('409','leonardo-machado-carvalho-bessa-5e055335dae04.jpg');

INSERT INTO TB_IMAGEM VALUES('410','leticia-machado-carvalho-bessa-5e055624de975.jpg');

INSERT INTO TB_IMAGEM VALUES('411','luana-ribeiro-bessa-5e055c553fab6.jpg');

INSERT INTO TB_IMAGEM VALUES('412','lilian-machado-carvalho-bessa-5e055c716b7b9.jpg');

INSERT INTO TB_IMAGEM VALUES('413','ariane-nunes-da-silva-5e055ccb652a0.jpg');

INSERT INTO TB_IMAGEM VALUES('414','lucrece-neri-portela-5e056001dd470.jpg');

INSERT INTO TB_IMAGEM VALUES('415','maria-fernanda-pires-da-silva-5e06118596d86.jpeg');

INSERT INTO TB_IMAGEM VALUES('416','larissa-mesquita-5e061c6f1bbe0.jpg');

INSERT INTO TB_IMAGEM VALUES('417','fernanda-ferreira-costa-5e061db762787.jpg');

INSERT INTO TB_IMAGEM VALUES('418','mercia-batista-miranda-5e0625e5af158.jpg');

INSERT INTO TB_IMAGEM VALUES('419','leandro-azevedo-xavier-5e0631e4b9ee7.jpeg');

INSERT INTO TB_IMAGEM VALUES('420','sandra-carmen-da-silva-5e068c40c246c.jpg');

INSERT INTO TB_IMAGEM VALUES('421','evelyn-ribeiro-5e06a1f82344c.jpg');

INSERT INTO TB_IMAGEM VALUES('422','maria-eduarda-freitas-5e06a38f6e381.jpg');

INSERT INTO TB_IMAGEM VALUES('423','wallisson-matias-de-sousa-5e06ba64d48e8.jpg');

INSERT INTO TB_IMAGEM VALUES('424','leticia-gabrielly-lourenco-sitaro-5e07bb74467bf.jpg');

INSERT INTO TB_IMAGEM VALUES('425','sarah-guimaraes-pereira-cavalcante-5e0a0eac0ce7b.jpeg');

INSERT INTO TB_IMAGEM VALUES('426','gabrielle-chaves-silva-5e0a19d173d00.jpg');

INSERT INTO TB_IMAGEM VALUES('427','tiago-vitor-gomes-de-moura-5e0d10662c863.jpg');

INSERT INTO TB_IMAGEM VALUES('428','lariza-wentz-de-oliveira-5e0e152835e77.jpg');

INSERT INTO TB_IMAGEM VALUES('429','higor-rodrigues-dias-5e0eb99d02252.jpg');

INSERT INTO TB_IMAGEM VALUES('430','catherine-mendes-de-jesus-5e0fcc41b3d3a.jpg');

INSERT INTO TB_IMAGEM VALUES('431','monique-vieira-pereira-pinheiro-5e1084ec9ef8b.jpg');

INSERT INTO TB_IMAGEM VALUES('432','tayane-moreira-da-mota-5e11489cd3fd1.jpeg');

INSERT INTO TB_IMAGEM VALUES('433','priscila-de-carvalho-brito-5e116cff28132.jpeg');

INSERT INTO TB_IMAGEM VALUES('434','luis-eduardo-rodrigues-ramos-5e11a23f5f68d.jpg');

INSERT INTO TB_IMAGEM VALUES('435','mariana-cortez-da-silva-de-paoli-5e13453f0151f.jpg');

INSERT INTO TB_IMAGEM VALUES('436','vitoria-prudencio-lima-5e1397d14816c.JPG');

INSERT INTO TB_IMAGEM VALUES('437','ana-grazielle-de-oliveira-gomes-5e14ab31c7809.jpg');

INSERT INTO TB_IMAGEM VALUES('438','ludmilla-gomes-da-silva-5e14ada9ab790.jpeg');

INSERT INTO TB_IMAGEM VALUES('439','ana-carolina-meireles-felipe-5e14b9115e805.jpg');

INSERT INTO TB_IMAGEM VALUES('440','gabrielly-mangabeira-lourenco-de-lima-5e14bf380f84f.jpeg');

INSERT INTO TB_IMAGEM VALUES('441','sara-da-mota-mendonca-5e14d14cb6bd5.jpeg');

INSERT INTO TB_IMAGEM VALUES('442','italo-fernando-da-silva-luiz-5e14d5f145ae7.jpg');

INSERT INTO TB_IMAGEM VALUES('443','amaury-costa-silva-ramos-5e14fe99df027.jpeg');

INSERT INTO TB_IMAGEM VALUES('444','emily-pereira-do-nascimento-5e15385ee71e0.jpg');

INSERT INTO TB_IMAGEM VALUES('445','anne-raphaella-gomes-de-jesus-5e15f7c41b39c.jpg');

INSERT INTO TB_IMAGEM VALUES('446','giovanna-borges-abrantes-5e1604817ecac.jpg');

INSERT INTO TB_IMAGEM VALUES('447','');

INSERT INTO TB_IMAGEM VALUES('448','barbara-goncalves-bittencourt-5e178423ee8a2.jpeg');

INSERT INTO TB_IMAGEM VALUES('449','marina-melo-dutra-5e1f3d9845e10.jpg');

INSERT INTO TB_IMAGEM VALUES('450','lavinia-vieira-pereira-pinheiro-5e219e9086581.jpg');

INSERT INTO TB_IMAGEM VALUES('451','maryana-nunes-da-silva-5e2302789afa1.jpg');

INSERT INTO TB_IMAGEM VALUES('452','barbara-oliveira-lopes-5e24ea4abf6db.jpg');

INSERT INTO TB_IMAGEM VALUES('453','gabriela-dias-almeida-5e2734e806871.jpg');

INSERT INTO TB_IMAGEM VALUES('454','sara-luiz-da-silva-5e27856640516.jpg');

INSERT INTO TB_IMAGEM VALUES('455','lucas-rodrigues-dos-santos-5e283cd0af5b9.jpg');

INSERT INTO TB_IMAGEM VALUES('456','ayana-b-sousa-5e28e0bb38be7.jpeg');

INSERT INTO TB_IMAGEM VALUES('457','anne-caroline-simoes-ferreira-dantas-5e28e1c6ae0de.jpeg');

INSERT INTO TB_IMAGEM VALUES('458','alice-de-souza-vaz-da-silva-5e2cbaccc96d4.jpg');

INSERT INTO TB_IMAGEM VALUES('459','mariana-dos-santos-silva-5e2ce0f1afeae.jpg');

INSERT INTO TB_IMAGEM VALUES('460','linneker-lima-roberto-gomes-5e2f117aaffaa.jpeg');

INSERT INTO TB_IMAGEM VALUES('461','bruno-serra-de-oliveira-5e30b4112039f.jpg');

INSERT INTO TB_IMAGEM VALUES('462','isabela-teixeira-martins-5e30bf875fdda.jpeg');

INSERT INTO TB_IMAGEM VALUES('463','bernard-pinto-naces-5e30d3b61be30.jpeg');

INSERT INTO TB_IMAGEM VALUES('464','ryan-reis-fontenele-5e323fe84d883.jpg');

INSERT INTO TB_IMAGEM VALUES('465','caio-felipe-goulart-torres-5e377aa425d28.jpeg');

INSERT INTO TB_IMAGEM VALUES('466','maria-luiza-vitor-da-silva-5e3868aa04c67.jpg');

INSERT INTO TB_IMAGEM VALUES('467','matheus-henrique-vitor-da-silva-5e388049c48c2.jpg');

INSERT INTO TB_IMAGEM VALUES('468','rafael-paulino-de-oliveira-5e38fd5622f4d.jpg');

INSERT INTO TB_IMAGEM VALUES('469','graciene-de-souza-lemos-5e39644bd434f.jpg');

INSERT INTO TB_IMAGEM VALUES('470','ana-paula-de-zouza-5e39d5ea8f6e5.jpg');

INSERT INTO TB_IMAGEM VALUES('471','daniel-santos-guedes-5e3a2d2f3fd35.jpg');

INSERT INTO TB_IMAGEM VALUES('472','antonia-micaele-souza-silva-5e3b8c1213799.jpg');

INSERT INTO TB_IMAGEM VALUES('473','natalia-de-lima-5e3e8bb1f1c89.jpeg');

INSERT INTO TB_IMAGEM VALUES('474','marcela-figueiredo-ribeiro-5e3f80a5b3199.jpg');

INSERT INTO TB_IMAGEM VALUES('475','jonatas-goncalvels-de-souza-5e4080f26634c.jpg');

INSERT INTO TB_IMAGEM VALUES('476','tayna-gomes-de-sousa-5e41a819db626.jpg');

INSERT INTO TB_IMAGEM VALUES('477','matheus-da-silva-souto-5e41f406072ff.jpg');

INSERT INTO TB_IMAGEM VALUES('478','joao-victor-luziano-pereira-calisto-5e41f6747aa0d.jpg');

INSERT INTO TB_IMAGEM VALUES('479','lais-sabino-leal-5e4363b674e9d.jpg');

INSERT INTO TB_IMAGEM VALUES('480','esther-angelica-costa-sousa-5e44242b174db.jpeg');

INSERT INTO TB_IMAGEM VALUES('481','kamilly-victoria-oliveira-da-silva-5e455d1b15dc7.jpeg');

INSERT INTO TB_IMAGEM VALUES('482','andressa-louise-de-deus-mateus-5e45b1646b0f4.jpeg');

INSERT INTO TB_IMAGEM VALUES('483','wendel-lucas-sacramento-rosa-5e45b3aba2b2b.jpg');

INSERT INTO TB_IMAGEM VALUES('484','priscila-lorrrane-lopes-de-sousa-5e49e65376b3c.jpg');

INSERT INTO TB_IMAGEM VALUES('485','gabriella-de-oliveira-guedes-5e4b161a6afa8.jpg');

INSERT INTO TB_IMAGEM VALUES('486','ysabelle-romanna-vaz-borges-5e4b30a5f1b66.jpeg');

INSERT INTO TB_IMAGEM VALUES('487','luiz-guilherme-vieira-rodrigues-5e4bd04c163d7.jpg');

INSERT INTO TB_IMAGEM VALUES('488','sandra-raquel-de-oliveira-silva-5e4bf407345a1.jpg');

INSERT INTO TB_IMAGEM VALUES('489','glaydstone-sousa-meneses-5e4cacd3e0101.png');

INSERT INTO TB_IMAGEM VALUES('490','douglas-tihago-albernaz-de-faria-5e4e9e5909d8a.jpg');

INSERT INTO TB_IMAGEM VALUES('491','polyana-albernaz-de-faria-5e4ea5d66790f.jpg');

INSERT INTO TB_IMAGEM VALUES('492','edmundo-da-silva-lima-filho-5e4ec1f6c9d84.jpg');

INSERT INTO TB_IMAGEM VALUES('493','gabrielle-de-souza-spindola-5e5049c620298.jpeg');




DROP TABLE IF EXISTS TB_IMAGEM_ASSINANTE;


CREATE TABLE `TB_IMAGEM_ASSINANTE` (
  `co_imagem_assinante` int(10) NOT NULL AUTO_INCREMENT,
  `co_assinante` int(11) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_imagem_assinante`,`co_assinante`,`co_imagem`),
  KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_IMAGEM_EVENTO;


CREATE TABLE `TB_IMAGEM_EVENTO` (
  `co_imagem_evento` int(10) NOT NULL AUTO_INCREMENT,
  `co_evento` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  PRIMARY KEY (`co_imagem_evento`,`co_evento`,`co_imagem`),
  KEY `fk_TB_EVENTO_has_TB_IMAGEM_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_EVENTO_has_TB_IMAGEM_TB_EVENTO1_idx` (`co_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_INSCRICAO;


CREATE TABLE `TB_INSCRICAO` (
  `co_inscricao` int(11) NOT NULL AUTO_INCREMENT,
  `ds_pastoral` text DEFAULT NULL,
  `ds_retiro` varchar(1) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Atvo / D - Desistente',
  `ds_membro_ativo` varchar(1) DEFAULT 'N',
  `st_equipe_trabalho` varchar(1) DEFAULT 'N',
  `ds_situacao_atual_grupo` varchar(1) DEFAULT NULL,
  `nu_camisa` int(2) DEFAULT NULL,
  `no_responsavel` varchar(80) DEFAULT NULL,
  `nu_tel_responsavel` varchar(15) DEFAULT NULL,
  `ds_descricao` text DEFAULT NULL,
  `ds_medicacao` text DEFAULT NULL,
  `ds_alimentacao` text DEFAULT NULL,
  `ds_motivo` text DEFAULT NULL,
  `co_evento` int(11) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_inscricao`,`co_evento`,`co_pessoa`,`co_imagem`),
  KEY `fk_TB_INSCRICAO_TB_EVENTO1_idx` (`co_evento`),
  KEY `fk_TB_INSCRICAO_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_INSCRICAO_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8;


INSERT INTO TB_INSCRICAO VALUES('1','','N','2017-12-30 19:59:43','A','N','N','','4','LEILA TOMINAGA','61982522602','Sou top\n\n\nSou Filha de Dom Bosco\n\n\nA neném dos tios Tominaga','','Sou diabética.','','1','2','2');

INSERT INTO TB_INSCRICAO VALUES('2','','S','2017-12-04 12:45:16','D','N','N','','8','MãE','6134588070','Sou o Igor! ','','','','1','3','3');

INSERT INTO TB_INSCRICAO VALUES('3','Grupo Jovem Arcanjos e EJNS','S','2018-01-06 19:32:35','A','N','N','','2','MINHA MãE LúCIA','61986280131','Não sei falar muito sobre mim não, mas tudo bem.. Tenho 17 anos, gosto de participar de retiros e eu amei participar do Santifique-se esse ano.. Gosto de dançar, ler, estudar e aprender coisas diferentes ou no mínimo novas, além de conversar e ouvir as pessoas.','','','','1','4','4');

INSERT INTO TB_INSCRICAO VALUES('4','GEJ Dom Bosco','S','2017-12-30 19:23:11','A','S','S','','8','MãE ','61991774916','Sou um rapaz muito ativo, participativo, alegre é muito sério também.\n\n\nNão sou muito fã de falar de mim, mas sou isto e um pouco mais !','','','','1','189','5');

INSERT INTO TB_INSCRICAO VALUES('5','Acólitos e coroinhas','N','2017-12-30 19:23:25','A','S','S','','7','MãE ','62999535024','Sou gente boa','','','','1','6','6');

INSERT INTO TB_INSCRICAO VALUES('6','','N','2018-01-08 10:30:31','A','S','S','','3','KêNIA ','61930825870','Amanda\n\n\n19 anos','','','','1','7','7');

INSERT INTO TB_INSCRICAO VALUES('7','Gej','N','2017-12-30 19:59:54','A','S','S','','2','MINHA MãE ','61994186538','Eu me chamo Jerlane sou do gej tenho  16 anos sou extrovertida brincalhona meiga seria amuuh participar dos eventos do gej amuuh fazer amizade com as pessoas','','','','1','8','8');

INSERT INTO TB_INSCRICAO VALUES('8','','S','2018-01-18 19:44:51','A','N','N','','9','MARIA OZENITA PEREIRA','61982361967','Não tenho nenhum tipo de alergia','','','','1','9','9');

INSERT INTO TB_INSCRICAO VALUES('9','GEJ DOM BOSCO','S','2018-01-15 22:54:24','A','S','S','','3','DENISE','61934595330','Trago dentro de mim um pouco da alegria que vem de Deus! *-*','','','','1','10','10');

INSERT INTO TB_INSCRICAO VALUES('10','Renovaćao carismatica do Santuário Sao Francisco','S','2017-12-04 19:22:18','A','N','N','','1','ELIANE','61982257021','Trabalho como professora, catolica praticante e gostaria de participar para me fortalecer e fortalecer a fé.','','','','1','11','11');

INSERT INTO TB_INSCRICAO VALUES('12','GEJ Dom Bosco','S','2017-12-04 22:16:26','A','S','N','','9','PAI ','6182701888','Carismático e desinibido.','','','','1','13','13');

INSERT INTO TB_INSCRICAO VALUES('13','GEJ Dom Bosco','S','2018-01-15 23:02:13','A','S','S','','3','MãE ','61981214179','Desinibida.','','','','1','14','14');

INSERT INTO TB_INSCRICAO VALUES('14','GEJ DOM BOSCO','S','2018-01-17 22:33:29','A','S','S','','4','PAI','61992197688','FELIZ POR SER DO GEJ DOM BOSCO','','','','1','39','15');

INSERT INTO TB_INSCRICAO VALUES('15','','N','2017-12-30 19:29:12','A','S','S','','7','MARIA JOSé','61933593245','Membro da equipe de música Gej Dom Bosco, ex-acólito e cerimoniário da Paróquia São José Operário.','','','','1','16','16');

INSERT INTO TB_INSCRICAO VALUES('16','','S','2017-12-05 09:49:57','A','N','N','','3','NEILDO','6132086444','Hellou sou wallisson tenho 18 anos, isso durante a inscrição, participo da igreja desde de muito novo mas só resolvi viver na fé católica á pouco tempo. Participo do grupo de cerimôniarios em minha paróquia e um outro grupo jovem, fillis Mater Dei .','','','','1','17','17');

INSERT INTO TB_INSCRICAO VALUES('17','EJNS','S','2017-12-05 11:06:05','D','N','N','','3','MINHA MãE CAROL','61992091401','Sou tímida, gosto de jogar futebol ou qualquer esporte.','','','','1','18','18');

INSERT INTO TB_INSCRICAO VALUES('18','GEJ-Dom bosco','S','2017-12-30 19:29:26','A','S','S','','2','RITA MARIA ','61933593574','Otima pessoa para se conviver.','','','','1','19','19');

INSERT INTO TB_INSCRICAO VALUES('19','grupo jovem luz e fogo','S','2017-12-05 13:38:18','D','N','N','','5','MARISA ','61991157598','bom falar de mim e um pouco difícil pois eu sou  uma pessoa muito descontraída que  amo Deus .','','','','1','20','20');

INSERT INTO TB_INSCRICAO VALUES('20','','N','2017-12-06 00:39:45','D','N','N','','2','MARIO ROBERTO','61983261868','Meu nome é Verônica, tenho 17 anos, não participo de nenhuma pastoral, mas todo domingo vou a missa. Sou uma pessoa muito feliz e que ama a igreja católica.','','','','1','21','21');

INSERT INTO TB_INSCRICAO VALUES('21','GEJ DOM BOSCO','S','2017-12-30 19:29:46','A','S','S','','6','MãE ','61986130447','oie, sou tolerante a lactose e sensível à glúten então plmrdds lembrem-se disso quando forem montar o cardápio, grata.\n\n\nP.S.: ficou faltando um lugarzinho para colocar restrições alimentares e se tem alguma doença/se precisa de medicação.','','','','1','73','22');

INSERT INTO TB_INSCRICAO VALUES('22','Catequese, Cerimoniários e Música','N','2017-12-06 23:15:25','A','N','N','','6','MARIA DAS GRAçAS','61934593014','Há um tempo que já estou na caminhada, além disso, sou consagrado à Santíssima Virgem e participo da Paróquia Santo Inácio de Loyola.','','','','1','23','23');

INSERT INTO TB_INSCRICAO VALUES('23','Assunção','S','2017-12-07 00:26:21','D','N','N','','6','BEATRIZ','61993116666','Sou bastante amigo e faço amizade rápido','','','','1','24','24');

INSERT INTO TB_INSCRICAO VALUES('24','Ministério de Coroinhas e Acólitos de São Tarcísio, Ministério Jovem (RCC)','S','2017-12-07 17:42:39','A','N','N','','4','EDI ','61986521612','Sou uma garota que não faz muito tempo q se converteu por inteiro, mais ou menos 1 ano.\n\n\nFui pro meu 1° retiro faz pouco tempo, e foi uma graça, estou querendo ir para esse para começar o ano com o pé direito mas graça de Deus','','','','1','25','25');

INSERT INTO TB_INSCRICAO VALUES('25','Grupo de Coroinhas, Grupo Jovem Adonai','S','2017-12-07 20:21:09','A','N','N','','7','LEILA TOMINAGA','61982512602','Filho dos Tios Tominaga, Irmão da Tominaga.\n\n\n##########  Saúde ###########\n\n\n- Alergia a temperos industriais(Sazon, Ajinomoto, Knorr, Maggi e etc).\n\n\n- Sangue tipo B+','','','','1','26','26');

INSERT INTO TB_INSCRICAO VALUES('26','','N','2017-12-08 09:28:35','D','N','N','','7','ANDERSON JOAQUIM DE SANTANA','61932018084','Sou uma pessoa pouco comunicativa com quem não conheço. Odeio falsidade. Estou tá igreja tem um tempinho mas dei uma afastada e estou querendo voltar.','','','','1','27','27');

INSERT INTO TB_INSCRICAO VALUES('27','Gej','S','2018-01-05 17:32:01','A','S','S','','7','MãE ','61933598257','Sou feliz!','','','','1','34','28');

INSERT INTO TB_INSCRICAO VALUES('28','Gej dom Bosco','S','2017-12-08 23:24:28','D','S','N','','3','MãE','6133571919','Sou tranquila,eu gosto de fazer as minhas coisas na hora certa','','','','1','29','29');

INSERT INTO TB_INSCRICAO VALUES('29','','N','2018-01-16 23:27:31','A','S','S','','4','LUCILENE AGUIAR','61995990533','\"Sou apenas um lápis na mão de Deus É ele quem me escreve.\"\n\n\nMadre Teresa de Calcutá','','','','1','31','30');

INSERT INTO TB_INSCRICAO VALUES('30','','N','2017-12-09 15:40:18','D','N','N','','4','GESLâNIA ','6199043516','Fui convidado por um membro do grupo e  decidi participar para ouvir sobre a palavra do senhor  e conhecer o pessoal da igreja com o intuito de complemento ao grupo','','','','1','32','32');

INSERT INTO TB_INSCRICAO VALUES('31','Guardiãs','S','2017-12-09 16:52:51','D','N','N','','5','LUCIENE ','61996979071','Sou uma pessoa tranquila,amo as coisas de igreja, gosto de fazer novas amizades','','','','1','33','33');

INSERT INTO TB_INSCRICAO VALUES('32','GEJ Dom Bosco','S','2018-01-15 22:37:51','A','S','S','','4','LEDA','61992724933','Ser aquilo que Deus quer fazer de mim!','','','','1','36','35');

INSERT INTO TB_INSCRICAO VALUES('33','','S','2017-12-11 19:17:46','A','N','N','','3','ROSANGELA ALVES MENDES ','61985548484','Sou uma universitária e frenquento a igreja Católica.','Não','Não','','1','41','41');

INSERT INTO TB_INSCRICAO VALUES('34','','S','2017-12-11 19:23:37','A','N','N','','4','ROSANGELA ALVES MENDES ','61985548484','Sou estudante e frenquento a igreja Católica.','Não','Não','','1','42','42');

INSERT INTO TB_INSCRICAO VALUES('35','','S','2017-12-12 13:46:24','A','N','N','','7','ELIETE','61986325346','Não','Não','Não','','1','44','44');

INSERT INTO TB_INSCRICAO VALUES('36','','S','2017-12-14 12:21:53','A','N','N','','7','BRENA KESSIA','61992563934','Olá sou carlos sou tranquilo trabalho de pedreiro estou a procura da igreja entender mais de Deus me sentir na presença dele estou precisando por isso estou animado ir para esse retiro. .','Nao','Nao','','1','47','47');

INSERT INTO TB_INSCRICAO VALUES('37','','S','2017-12-16 14:24:06','A','N','N','','3','JOSé EVARISTO','61981019362','Faço parte da Equipe Jovem AJUC, sempre fui católica, sou pouco tímida','Não','Não','','1','48','48');

INSERT INTO TB_INSCRICAO VALUES('38','','S','2018-01-06 19:49:15','A','S','S','','7','MAE ','61995905439','Uma pessoa super tranquila, alegre e que ama ajuda o próximo na medida possível','','','','1','49','49');

INSERT INTO TB_INSCRICAO VALUES('39','','N','2017-12-18 15:05:43','A','N','N','','7','TIOS TOMINAGA','61982512602','Sou consagrada a Santíssima Virgem a 2 anos. Tenho uma vida de intimidade e amor com Deus. Canto em um ministério, estou começando na intersecao, faço parte da coordenação do grupo jovem Adonaí. Tenho espírito adorador Eucarístico amante da Mãe de Deus ❤ Sou muito animada e pretendo louvar, adorar e confiar mais ainda naquele que É!','Não','Não','','1','50','50');

INSERT INTO TB_INSCRICAO VALUES('40','Nossa Senhora de Fátima','S','2017-12-30 19:31:06','A','S','S','','6','ANDRé FONSECA BORGES','61998783533','Eu sou uma pessoa gentil, e de bem com a vida hehe :)','Antialérgico - Loratamed','Boa','','1','51','51');

INSERT INTO TB_INSCRICAO VALUES('41','Grupo Jovem','S','2017-12-18 22:11:23','A','N','N','','7','MAE','6191621818','Participo do Grupo Jovem JEDI, tenho 4 anos de caminhada, sou consagrado a Virgem Maria. Nunca participei de um acampamento, sou um pouco tímido mas tenho facilidade de comunicação e pro ativo.','','','','1','52','52');

INSERT INTO TB_INSCRICAO VALUES('42','Gej','S','2017-12-30 19:31:22','A','S','S','','5','EDILEUSA','61992226161','Me chamo Karolina não tenho restrição de medicamentos , nem alimentação','','','','1','53','53');

INSERT INTO TB_INSCRICAO VALUES('43','','S','2017-12-18 22:16:45','D','N','N','','3','MãE','61985754119','Sou do grupo JEDI da paróquia São João Batista.','','Alérgica a corante , intolerante a lactose','','1','54','55');

INSERT INTO TB_INSCRICAO VALUES('44','Grupo Jovem','S','2017-12-30 19:31:55','A','N','N','','3','EDILEUZA MãE','61984946458','Não gosto de falar sobre mim\n\n\nRs rs :)','Omeprazol','Intolerância à lactose','','1','55','56');

INSERT INTO TB_INSCRICAO VALUES('45','Grupo JEDI','N','2018-01-21 21:56:12','A','N','N','','7','MARIA JOSé','61991340627','Bem humorado, paciente, verdadeiro legal','Não','Não','','1','56','57');

INSERT INTO TB_INSCRICAO VALUES('46','','S','2017-12-30 19:32:19','A','S','S','','4','IVANILDES MãE','61934586671','Católica desde o ventre da minha mãe, dedicada, muitos vezes chata e mandona, tenho um marido maravilhoso e uma família que amo. Estou no Gej há cerca de 3 anos e sou apaixonada por esse grupo.','Não.','Não.','','1','57','58');

INSERT INTO TB_INSCRICAO VALUES('47','Gej Dom Bosco','S','2017-12-30 19:32:34','A','S','S','','3','MáRCIA REJANE ','61999661640','Meu nome é Letícia, tenho 17 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.','','','','1','58','59');

INSERT INTO TB_INSCRICAO VALUES('48','','S','2017-12-30 19:32:47','A','S','S','','7','IVANILDES MãE','61934586671','Brincalhão,meio timído. Fui coroinha durante muitos anos, e atualmente só participo do Gej. Me casei ano passado. Sou militar da Aeronáutica, e atualmente estudo pra concurso.','Não.','Não.','','1','59','60');

INSERT INTO TB_INSCRICAO VALUES('49','Gej Dom Bosco','N','2018-01-06 19:50:37','A','S','S','','7','LETíCIA MARTINS ','61991426490','Meu nome é Roniel, tenho 21 anos, sou da Paróquia São João Evangelista e participo do Grupo de Evangelização de Jovens Dom Bosco.','','','','1','60','61');

INSERT INTO TB_INSCRICAO VALUES('50','Grupo de jovens gej dom bosco','S','2018-01-10 13:01:07','A','S','N','','4','THAYNARA ','61995250255','Sou feliz com o que tenho','Não','Não como carne vermelha','','1','62','63');

INSERT INTO TB_INSCRICAO VALUES('51','','S','2017-12-21 13:01:09','D','N','N','','4','JEFFERSON ','61992225838','Sou consagrada, 1,60 de altura','Dipirona 25 gotas','Abacaxi','','1','63','64');

INSERT INTO TB_INSCRICAO VALUES('52','','S','2017-12-21 16:01:28','D','N','N','','3','JOANA DARC','61985315391','Sou muito alegre','Não','Não','','1','64','65');

INSERT INTO TB_INSCRICAO VALUES('53','','S','2017-12-23 22:00:34','D','N','N','','4','MãE','6134593241','Sou a Joyce, tenho 19 anos. Não sei oq falar sobre mim, mas espero nesse retiro top, buscar uma reconciliação e mais intimidade com Jesus, tchau.','','','','1','65','67');

INSERT INTO TB_INSCRICAO VALUES('54','','S','2017-12-24 15:13:28','D','N','N','','2','SILVANA DE ABREU SILVA','61991837377','24 anos, natural de Brasília, tenho 3 irmãos e moro com minha mãe. Consagrada a Maria pelo metodo de São Luís Montfort, caseira, procuro sempre aprender mais sobre a Santa Igreja.','Faço uso de um antidepressivo, é o utilizo uma vez ao dia, depois do café da manhã.','','','1','66','68');

INSERT INTO TB_INSCRICAO VALUES('55','Gej dom Bosco','S','2017-12-26 11:17:29','D','S','S','','3','MáRCIA FRANCINA DE OLIVEIRA ','61985175039','Sou uma pessoa que e brincalhona, ama retiro e chora muito nos retiros, tenho um amor imenso por nossa senhora e o título que mais amo e nossa senhora aparecida','Quando tenho crise de enxaqueca eu tomo (ibuprofeno, dipirona e etc.)','Não tenho','','1','67','69');

INSERT INTO TB_INSCRICAO VALUES('56','','S','2017-12-26 11:34:19','D','N','N','','3','JOELMA  MãE','61992419993','Bom...\n\n\nEstou afastada da igreja no momento, estou querendo me reconciliar e voltar de vez.','Não','Não','','1','68','70');

INSERT INTO TB_INSCRICAO VALUES('57','Grupo de jovens Fillis Mater Dei','S','2017-12-26 13:34:49','D','N','N','','3','LúCIA','61984651243','18 anos, consagrada a Nossa Senhora de Fátima, Coordenadora do Grupo Jovem Fmd, frequente na Paróquia Nossa Senhora da Assunção.','','','','1','69','71');

INSERT INTO TB_INSCRICAO VALUES('58','Catequese e grupo de jovem','S','2017-12-26 13:35:08','D','N','N','','7','PAI','61985012045','Sou bem chorona kkk, sou bem tímida, porém crio amizades bem rápido. Gosto muito de dança kk','','','','1','70','72');

INSERT INTO TB_INSCRICAO VALUES('59','','S','2017-12-27 14:49:41','A','N','N','','6','ROSANGELA ALVES MENDES','61985548484','Sou uma pessoa tímida mas que gosta muito de diversão...','','','','1','71','73');

INSERT INTO TB_INSCRICAO VALUES('60','Jupes','S','2017-12-28 13:35:44','D','N','N','','7','LOURDES','61982478621','Paróquia São Paulo apóstolo\n\n\nCoordenadora 2018-2019 grupo de jovens\n\n\nSanta Terezinha s2','','','','1','74','76');

INSERT INTO TB_INSCRICAO VALUES('61','','S','2017-12-28 22:26:05','A','N','N','','6','PAI','992263829','Eu sou da paróquia São João Evangelista  da samambaia norte  e faço parte do grupo de oração.','Eu uso o remédio contra crise de ansiedade.Chama fluoxetina,todos os dias pela manhã.','Não','','1','75','77');

INSERT INTO TB_INSCRICAO VALUES('62','sao joao evangelista','S','2017-12-29 16:59:22','A','N','N','','4','NEIDE','61985609412','sou uma menina tímida, não gosto muito de fazer atividades em grupo pois me sinto um pouco desconfortável, gosto muito de escrever, sou catequista mas sinto que minha fé ainda esta muito abalada.','','','','1','76','78');

INSERT INTO TB_INSCRICAO VALUES('63','','S','2017-12-30 09:07:52','A','N','N','','3','ROSANGELA ','6185548484','18 anos, devota de Nossa Senhora ','Não','Não','','1','77','79');

INSERT INTO TB_INSCRICAO VALUES('64','','S','2017-12-30 19:22:55','A','S','S','','9','ELIENE','61934594937','———-','','','','1','72','80');

INSERT INTO TB_INSCRICAO VALUES('65','Grupo Servir, quadrilha e ministério de música da Verbo Divino, e tbm participo do grupo SIM e ministério de música da Paroquia Nossa senhora Rosario de Pompeia','S','2017-12-30 12:02:00','D','N','N','','5','OSVALDO BUSSOLO ','61981173673','Eu sou muito extrovertida, adoro cantar, dançar é comigo mesmo, amo teatro, e gosto muito de ajudar a igreja, pelo menos as q eu frequento, gosto muito de me divertir com meus amigos, e minha família tambem, sou aberta a opiniões sobre vários assuntos e sou bastante teimosa quando quero algo (e sempre consigo).','Não uso','Não tenho','','1','79','81');

INSERT INTO TB_INSCRICAO VALUES('66','Guardiã do Santissimo sacramento','S','2017-12-30 16:18:32','D','N','N','','5','NAMORADO ','6199620997','Estudante de Direito e pós graduanda em direito penal, investigação forense e perícia criminal','Clonazepan','Alergica a pimenta','','1','80','82');

INSERT INTO TB_INSCRICAO VALUES('67','Renascer com Maria','S','2018-01-01 17:15:10','D','N','N','','3','ELIDIA','61998397590','Sou estudante, e quero viver uma experiência nova de carnaval.','Não','Não','','1','81','83');

INSERT INTO TB_INSCRICAO VALUES('68','','N','2018-01-18 22:59:45','A','N','N','','6','KARLENE','61993055454','Sou uma pessoa calma gosto de ouvir conselhos , gosto de estar com minha família','Nao','Nao','','1','82','84');

INSERT INTO TB_INSCRICAO VALUES('69','Ministério de acólitos e coroinhas','S','2018-01-01 22:40:30','A','N','N','','3','JOANA DARC DE FRANçA OLIVEIRA','6134582228','tenho 15 anos, sou crismada, sou coroinha, faço parte do grupo jovem','Não','Não','','1','83','85');

INSERT INTO TB_INSCRICAO VALUES('70','EAC, EJC','S','2018-01-02 21:48:11','D','N','N','','7','ZILMA ','61992408401','Sou bem timido com pessoas novas, gosto de Cantar, dança, e rezar. Gosto de fazer teatro.','','','','1','84','86');

INSERT INTO TB_INSCRICAO VALUES('71','GEJ Dom Bosco','S','2018-01-03 10:18:02','A','S','S','','3','DELCIA APARECIDA','61986118724','Neste retiro de carnaval completará 1 ano que conheço o grupo. Faço parte da promessa que Deus tem pro GEJ de ser mais e de conquistar a juventude para Cristo pelo exemplo e intercessão de Dom Bosco. Sou católica apostólica romana, consagrada a 2 anos, pertencente a Virgem Maria, tenho a modéstia como meu \'estilo de vida\' e vocacionada a missão.','Não.','Não','','1','85','87');

INSERT INTO TB_INSCRICAO VALUES('72','','N','2018-01-03 15:48:20','D','N','N','','7','MILENA','61985761487','Um moleque que vive sempre em batalha espiritual.. Tende a crescer mais na fé e é isso','','','','1','86','88');

INSERT INTO TB_INSCRICAO VALUES('73','','S','2018-01-04 12:25:33','D','N','N','','6','SEBASTIANA DA CRUZ','61986449871','Sou a Edilene, uma menina alegre e sorridente que gosta de ajudar o próximo. Me interessei pelo retiro porque quero conhecer lugares e pessoas novas','Não','Não','','1','87','89');

INSERT INTO TB_INSCRICAO VALUES('74','Gej','S','2018-01-04 12:24:52','A','S','S','','3','MARIA NAZARE','61982999300','...','','','','1','88','90');

INSERT INTO TB_INSCRICAO VALUES('75','GEJ Dom Bosco','S','2018-01-06 16:02:02','A','S','S','','3','ARNALDO PAI','61986292805','“O que somos é presente de Deus; no que nos transformamos é o nosso presente a Ele.”','Sim\n\n\nAmato - diariamente antes de dormir.','Lactose','','1','37','91');

INSERT INTO TB_INSCRICAO VALUES('76','','N','2018-01-05 14:32:41','A','S','S','','10','MARIA VILANIR','61983232905','EU SOU LEGAL PÔ, QUERO GERAR JESUS PRAS PESSOAS NO RETIRO. VAMOS FAZER UMA BAGAÇA s2','NOT','NOT','','1','90','92');

INSERT INTO TB_INSCRICAO VALUES('77','Grupo jovem JUSLAC','S','2018-01-05 14:49:10','A','N','N','','3','MãE POLIANA ','61982207943','Olá, meu nome é Paloma, tenho 16 anos, sou um pouco tímida, sou de uma família toda católica. Participo de um grupo jovem chamado Juslac da Paróquia Nossa Senhora de Fátima, crismei a pouco tempo e pretendo ser catequista...','Não','','','1','91','93');

INSERT INTO TB_INSCRICAO VALUES('78','Grupo jovem JUSLAC','S','2018-01-05 15:24:15','A','N','N','','3','MARIA DE LURDES SILVA DE SOUZA ','6199950379','Oi, eu sou Maria Letícia, tenho 15 anos,venho de uma família católica, porém meu irmão não é praticante, meu pai se desviou e começou a frequentar centro espírita com minha tia,mas eu e minha mãe somos praticantes, meus pais são separados, sou apaixonada por nossa senhora, e sou alucinada por Jesus, participo de um grupo jovem chamado JUSLAC da capela nossa senhora da conceição,estou à procura da minha vocação e dons, sou crismada a pouco tempo e pretendo ser catequista.','Não, nenhuma.','Como de tudo.','','1','92','94');

INSERT INTO TB_INSCRICAO VALUES('79','Nossa senhora de Fátima','S','2018-01-05 16:11:53','D','N','N','','7','MARIA APARECIDA SILVA','61991891844','Jovem de 16 anos , participo de um grupo chamado Juslac na minha pastoral .','Não','Não','','1','93','95');

INSERT INTO TB_INSCRICAO VALUES('81','GEJ DOM BOSCO','S','2018-01-06 15:57:11','A','S','S','','3','MARIA DE JESUS','61933594933','Tenho 19 anos, sou membro desse grupo lindo e tomei a decisão de entregar toda minha vida para Jesus através da evangelização dos jovens e todos aqueles que necessitam, é isto !!','','','','1','95','97');

INSERT INTO TB_INSCRICAO VALUES('82','','N','2018-01-06 19:04:42','D','N','N','','3','SILVANIA PEREIRA DE SOUZA ','6134752840','Jennifer Bianca, estudo no cemtn e me enterrarei muito por causa de uma amiga que estuda na minha sala, e quero volta pra igreja','','','','1','96','98');

INSERT INTO TB_INSCRICAO VALUES('83','GEJ Dom Bosco','S','2018-01-08 10:29:58','A','S','S','','4','MARIA PEREIRA DOS SANTOS DIAS','61933593317','Tenho 20 anos, faço Direito na UnB, estou estagiando do Tribunal de Contas do DF. Amo chocolate, sorvete e amo ouvir música.','','','','1','98','101');

INSERT INTO TB_INSCRICAO VALUES('84','','N','2018-01-06 21:44:40','A','N','N','','5','ELIOMARA SOARES CONCEIçãO','61999898071','Bom, tenho 17 anos e sou estudante.\n\n\nO que eu mais gosto de fazer é nadar e ficar em casa, às vezes dou umas saídas mas nem sempre.\n\n\nSou alegre e um pouco sem paciência.','Não','Não','','1','100','102');

INSERT INTO TB_INSCRICAO VALUES('85','','N','2018-01-06 22:00:18','A','N','N','','3','MARIA ORLINDA B L GOMES','6134595379','já fiz vários retiros','','','','1','101','103');

INSERT INTO TB_INSCRICAO VALUES('86','','S','2018-01-07 11:12:24','A','N','N','','4','PATRíCIA NEVES','61995438917','Sou religiosa, mas no momento  estou um pouco ansiosa e depressiva','Nao','Não','','1','103','104');

INSERT INTO TB_INSCRICAO VALUES('87','','S','2018-01-07 19:03:38','A','N','N','','4','GENI GOMES ','61986719608','...','','','','1','104','107');

INSERT INTO TB_INSCRICAO VALUES('88','','S','2018-01-07 20:22:29','A','N','N','','8','LEILA TOMINAGA ','61984352161','Sou do grupo Adonai, tenho 18 anos sou o mais lindo do grupo kkkkk kkkkk mentira , sou palhaço','Chocolate de 1hr em 1hr','Pequi','','1','105','108');

INSERT INTO TB_INSCRICAO VALUES('89','Grupo Jovem Adonai','S','2018-01-15 18:29:58','A','N','S','','8','LEILA TOMINAGA','61982512602','Sou casado tenho 3 filhos e trabalho com jovens em minha comunidade','Não','Não','','1','106','109');

INSERT INTO TB_INSCRICAO VALUES('90','Música e grupo jovem','S','2018-01-07 20:42:07','A','N','N','','6','MãE','61996028107','Gosto de interagir com pessoas novas,adoro fazer novas amizades.','','','','1','107','110');

INSERT INTO TB_INSCRICAO VALUES('91','Juventude','S','2018-01-07 22:31:42','A','N','N','','8','CARMELINDA ','61993693578','Tenho 20 anos, sou coordenador do grupo jovens anunciantes de Cristo (JAC) e da pastoral da juventude, na paróquia nossa Senhora de Lourdes, lá também sou catequista e faço parte dos servos da liturgia paroquial. Sou uma pessoa tranquila, alegre. Procuro sempre ajudar quem precisa.','','','','1','108','111');

INSERT INTO TB_INSCRICAO VALUES('92','JACIM','S','2018-01-12 12:41:33','A','N','N','','5','DAYANE MOREIRA DA SILVA','61985615167','SOU BEM CARISMÁTICA','USO REMÉDIO TODOS OS DIAS AS 21 HORAS','SEM RESTRIÇÃO','','1','109','112');

INSERT INTO TB_INSCRICAO VALUES('93','','N','2018-01-08 18:18:17','A','N','N','','8','LETíCIA','6199457429','Meu nome é Laura, tenho 13 anos, vou fazer 14 anos dia 20/01, gosto de ouvir música principalmente indie e kpop, minhas comidas favoritas são hambúrguer e pizza e sou tímida.','','','','1','110','113');

INSERT INTO TB_INSCRICAO VALUES('94','','N','2018-01-08 19:49:01','D','N','N','','4','DENI','6133793695','Participava na renovação carismatica e me afastei tem uns 5 anos','sim, Depakene 2 de manha e 1 a noite, 1 fluoxetina','Intolerância a lactose','','1','111','114');

INSERT INTO TB_INSCRICAO VALUES('95','','N','2018-01-08 20:22:46','D','N','N','','7','AYLTON','61986621536','Sempre fui afastado de Deus, mais eu e minha namorada estamos buscando a Deus','não','não','','1','112','115');

INSERT INTO TB_INSCRICAO VALUES('96','','S','2018-01-08 21:54:56','A','N','N','','7','MãE','6133852979','Ministro de música do ministério pétalas de fogo, retiro para recarregar baterias e auto conhecimento','','','','1','113','116');

INSERT INTO TB_INSCRICAO VALUES('97','','N','2018-01-08 22:21:04','A','N','N','','4','ROSE MãE','61991999329','Eu sou a Nathalya faço parte do ministério de música Pétalas de Fogo,mora no Gama faço parte do segue-me da paróquia Imaculada Conceição do Gama .','Sim remédio para gastrite. Esomeprazol, tomo ele pela manhã.','','','1','114','117');

INSERT INTO TB_INSCRICAO VALUES('98','Música','S','2018-01-08 22:23:28','A','N','N','','7','NEUZA','6136293497','Faço parte de um ministério de música chamado Pétalas de Fogo, nós somos do Gama. Já participei de vários retiros e também já trabalhei em muitos.','Não','Não','','1','115','118');

INSERT INTO TB_INSCRICAO VALUES('99','Música','S','2018-01-08 22:47:13','A','N','N','','8','NIVIA APARECIDA ','06199988184','24 anos, católico, músico, namorando, membro do ministério de música pétalas de fogo, frequento as paróquias do Gama, normalmente a Imaculada','Não uso nenhuma medicação.','Nenhuma.','','1','116','119');

INSERT INTO TB_INSCRICAO VALUES('100','Grupo Jovem Por Amor','S','2018-01-09 11:32:23','A','N','N','','7','SELMéLIA','61991521943','Olá, sou carismática, alegre, risonha, amiga sempre e também meiga! E completamente louca por Jesus!','','','','1','117','120');

INSERT INTO TB_INSCRICAO VALUES('101','','N','2018-01-09 15:19:35','A','N','N','','3','MARIA APARECIDA FERREIRA DE SOUSA ','61992003034','Meu nome é Lara, tenho 16 anos e desejo ter maior intimidade com Cristo','','','','1','118','121');

INSERT INTO TB_INSCRICAO VALUES('102','','N','2018-01-09 22:06:43','A','N','N','','4','PATRíCIA ','6184600568','Sou da Área Pastoral São José em Vicente Pires, sou catequista da Crisma. Gosto de diversão, de conhecer pessoas, e principalmente  de adorar a Deus!','Não','Não','','1','119','122');

INSERT INTO TB_INSCRICAO VALUES('103','GEJ Dom Bosco','S','2018-01-11 10:35:38','A','S','S','','5','MãE ','61930826060','Sou feliz por ser Gejeriana','','','','1','61','123');

INSERT INTO TB_INSCRICAO VALUES('104','','N','2018-01-11 20:14:55','D','N','N','','3','TATIANA MãE','6184355868','sou uma pessoa tranquila, com boa comunicação porém tímida.','','','','1','121','124');

INSERT INTO TB_INSCRICAO VALUES('105','Jovem','S','2018-01-12 11:16:48','A','N','N','','5','AMILTON HONóRIO','61996859527','Participo do grupo jovem Jacim,  quero me aproximar cada vez mais de Deus e de Maria, sou quieta e calada','Sim, tomar todo dia às 14:00 horas','','','1','122','125');

INSERT INTO TB_INSCRICAO VALUES('106','','N','2018-01-12 11:45:37','A','N','N','','6','MARIZETE BISPO REIS','6130835505','Fui desde pequena evangelizada na igreja católica,sou uma pessoa muito religiosa,amorosa, extrovertida e participo do Ministério Jovem (MJ-RCC)','Não','Não','','1','123','126');

INSERT INTO TB_INSCRICAO VALUES('107','','S','2018-01-12 12:47:15','A','N','N','','3','DENNYSEH','61993836591','Tenho 15 anos,fui coroinha 4 anos,sou consagrada a Virgem Maria,estou no segundo ano,amo estudar,pretendo ser acolita.','Não.','Não.','','1','124','127');

INSERT INTO TB_INSCRICAO VALUES('108','GEJ','S','2018-01-13 11:31:01','D','S','N','','7','ADELICE','61992626767','Uma pessoa simples, não tenho frescura com nada e que só quer está na presença de Deus.','','','','1','125','128');

INSERT INTO TB_INSCRICAO VALUES('109','Adonai','N','2018-01-13 13:14:57','A','N','N','','7','MINHA MãE ','6191660308','Sou o Vitor sou transplantado','Sim uso de manhã e à tarde 6:50 e 18:50','Só carambola','','1','126','129');

INSERT INTO TB_INSCRICAO VALUES('110','Grupo jovem','S','2018-01-15 09:53:18','A','N','S','','4','ROSA ALEMIRA ','61934599984','Tenho 19 anos. Trabalho em uma creche e curso pedagogia.','Não','Não','','1','127','130');

INSERT INTO TB_INSCRICAO VALUES('111','','S','2018-01-15 09:52:58','A','S','S','','8','ANDERSON','61932018084','Sou uma pessoa simples','','','','1','97','131');

INSERT INTO TB_INSCRICAO VALUES('112','Gej','S','2018-01-16 09:35:37','A','S','S','','7','MãE','61933598257','Estudante de Relações Internacionais. Um grande sonhador, nascido no século errado.','','','','1','129','132');

INSERT INTO TB_INSCRICAO VALUES('113','ajuc','S','2018-01-18 20:01:59','A','N','N','','3','DORIMAR','61993615001','17 anos moro em Brazlandia sou crismada frequento o AJUC na QNJ SANTA TEREZINHA','','','','1','130','133');

INSERT INTO TB_INSCRICAO VALUES('114','','N','2018-01-16 12:00:04','A','N','N','','8','EDIVANIA FERNANDES DE ARAúJO XAVIER','38999024362','Não gosto das festas de carnaval,e procuro fazer novas amizades que somem na minha vida! Não tem lugar melhor para isso, do que este retiro.','','','','1','131','134');

INSERT INTO TB_INSCRICAO VALUES('115','Grupo Jovem Adonai','N','2018-01-16 22:24:36','A','N','S','','7','RONNY TOMINAGA','61984352161','-SOU A TIA TOMINAGA\n\n\n-DIABÉTICA\n\n\n-MÃE DO EDU E DA RIDICULA DA AMANDA KK\n\n\n-AMO O GEJ E AGRADEÇO O CONVITE DE TRABALHAR NO RETIRO\n\n\n-AMO DOM BOSCO\n\n\n-CASADA COM O TIO TOMINAGA','Mediformina\n\n\nDiamocron','Camarão','','1','132','135');

INSERT INTO TB_INSCRICAO VALUES('116','CATEQUISTA','S','2018-01-19 23:42:49','A','N','N','','8','DIONÍSIO DE OLIVEIRA LIMA JUNIOR ','61981990261','Tenho 29 anos... Gosto de fazer retiros, para buscar cada vez mais aprender. Estar sempre perto de Deus e buscar cada vez mais minha santidade. Sou tagarela, sorridente, faço amizades com facilidade e espero que Deus possa me mostrar algo diferente de todas que já vivenciei!','Sim, fica comigo e sei os horários.','Não','','1','133','136');

INSERT INTO TB_INSCRICAO VALUES('117','','N','2018-01-16 16:50:47','A','N','N','','9','AVó','61992232118','Sou uma jovem timida alegre, uma boa menina...','Não tomo nenhuma medicação analgésico pra dor quando é preciso','','','1','134','137');

INSERT INTO TB_INSCRICAO VALUES('118','','N','2018-01-16 19:03:11','A','N','N','','6','PAI','6192108927','Participa e frequenta a casa das irmãs missionárias da caridade','','','','1','135','138');

INSERT INTO TB_INSCRICAO VALUES('119','Filis Mater Dei','N','2018-01-16 22:53:21','D','N','N','','2','GENIVALDO VIEIRA DA SILVA','61985614318','Sou muito chorona','Uso dipirona para dor de cabeça e  ibupril 600mg para dor','Eu não como feijão e nem verduras rs','','1','136','139');

INSERT INTO TB_INSCRICAO VALUES('120','','S','2018-01-17 20:04:06','A','N','N','','7','GUI ','61999252609','Gente Boa kk','Nao','','','1','137','140');

INSERT INTO TB_INSCRICAO VALUES('121','Gej Dom Bosco','S','2018-01-17 21:10:23','A','S','S','','8','JOSE ARNALDO','61993003405','Sou garoto de programa e bem legal depois eu mesmo vou la e arrumo o textrino melhor','não','não','','1','1','141');

INSERT INTO TB_INSCRICAO VALUES('122','','S','2018-01-17 20:45:55','A','N','N','','8','ELZA','61985727536','Estudo integral pra passar menos tempo em casa e jogador de lol. Prazer. ','','','','1','139','142');

INSERT INTO TB_INSCRICAO VALUES('123','Pastoral Familiar','S','2018-01-17 21:03:18','A','N','N','','5','LUCIANO ','6136244679','...','Remédio para dor de cabeça e no estomago','Não','','1','140','143');

INSERT INTO TB_INSCRICAO VALUES('124','','S','2018-01-17 21:26:51','D','N','N','','6','MARIA DO SOCORRO RODRIGUES SANTOS','6133590378','Eu sou católica, consagrada a 2 anos, amo comer e dormir, amo a igreja e valorizo muito a família e minhas amizades.','','','','1','141','144');

INSERT INTO TB_INSCRICAO VALUES('125','','N','2018-01-18 10:04:17','A','N','N','','6','WESLEY ','61998739058','Sou uma pessoa bem legal, amavel, forte, a príncipio não sou muito comunicativa, tenho um pouco de dificuldade nisso, timidez, geralmente   tenho necessidade de ter uma certa intimidade, amizade. Também sou observadora que só e sou bastante família.','Para hipertensão.\n\n\nTomo pela manhã em jejum.','Até o momento, não.','','1','142','145');

INSERT INTO TB_INSCRICAO VALUES('126','','N','2018-01-18 13:13:12','A','N','N','','8','ANTONIA SIMONE ','61985785437','Não tenho nada para falar.','','Alergia leve com, Trigo, chocolate e derivados.','','1','143','146');

INSERT INTO TB_INSCRICAO VALUES('127','','N','2018-01-18 16:37:04','A','N','N','','3','HELENA','61999726518','sou catolica porem não frequento nenhuma igreja, sou um pouco tímida, mas gosto de fazer novas amizades e ajudar ao proximo','sim, colágeno as 09:00 e 21:30, ômega 3 depois do almoço e da janta e pílula anticoncepcional as 21:30','nenhuma','','1','144','147');

INSERT INTO TB_INSCRICAO VALUES('128','','S','2018-01-18 17:20:57','A','N','N','','4','GUTEMBERG ','61995131698','Sou persistente. Às vezes tímida. E dou risada por tudo!','','','','1','145','148');

INSERT INTO TB_INSCRICAO VALUES('129','Grupo Jovem Fillis Mater Dei','S','2018-01-18 21:26:11','A','N','N','','3','MARIA DAS GRAçAS FREITAS ','61986380391','Sou consagrada a Nossa Senhora de Fátima, sempre andei pelo caminho caminho Deus.','Não','Não','','1','146','149');

INSERT INTO TB_INSCRICAO VALUES('130','Gej Dom  Bosco','S','2018-01-18 22:51:06','A','S','S','','4','MARIA DOS MILAGRES ','61991822946','Sou realizada pelos sonhos conquistados, Apaixonada em crianças, Amooo minha familia, Grata a Deus por tudo que tenho, por isso quero  buscar a Deus cada vez mais... Consagrada a Santíssima Virgem Maria. TOTUS TUS.','Não','Não','','1','147','150');

INSERT INTO TB_INSCRICAO VALUES('131','','N','2018-01-22 16:11:54','A','N','N','','4','MARA RúBIA ARAúJO DO NASCIMENTO SILVA','61985683988','Eu acho que o retiro é uma oportunidade de vida, de conhecer outra forma de ficar perto de Deus','','','','1','157','160');

INSERT INTO TB_INSCRICAO VALUES('132','Ágape','S','2018-01-22 16:14:37','A','N','N','','3','EDILENE SILVA','61992829568','Tenho 16 anos, nasci em um berço \"católico\" só por falar. Conheci Jesus em 2014 e me apronfundei mais em 2015 quando entrei no grupo de jovens ágape da paróquia imaculada conceição.','Toragesic-cólica','','','1','158','161');

INSERT INTO TB_INSCRICAO VALUES('133','','S','2018-01-22 21:46:13','A','N','N','','9','MãE CIDA','61985528477','Me chamam de Salvino e tenho 16 anos, o pai é o pai','','','','1','159','162');

INSERT INTO TB_INSCRICAO VALUES('134','','S','2018-01-22 21:55:41','A','N','N','','8','CIDA','61998513075','SOU WESLEY, TENHO 16 ANOS','NAO','PROTEINA DO PORCO','','1','160','163');

INSERT INTO TB_INSCRICAO VALUES('135','','N','2018-01-22 22:07:15','A','N','N','','8','MãE ROSA','61986364435','Meu nome é Victor, tenho 17 anos e sou legal','','','','1','161','164');

INSERT INTO TB_INSCRICAO VALUES('136','CATEQUESE','S','2018-01-23 13:37:18','D','N','N','','7','SEBASTIANA ','61984327005','Então, não sei o que dizer sobre mim, mas eu venho de uma família bem grande e barulhenta, não me leve a mal eu amo isso, mas dentro de uma casa onde eu parece ter vindo de um outro universo é meio difícil de socializar, todos sempre compartilham das mesmas opiniões, gostos musicais, modo de se vestir e até mesmo apreciam as mesmas series de TV, mas acho que é bom para uma questão de equilíbrio ter tantas diferenças o problema é que eu os amo demais mas é difícil tentar fazer parte quando você é visto como uma total estranha. Não fico muito em casa, trabalho a semana toda e no final de semana tem as atividades da pastoral. Sinceramente não sei mais o que falar rsrs.... Estou ingressando na Fateo para cursar teologia e sinceramente isso me deixa muito animada. Quero um dia casar e constituir uma família conforme Deus sonhou, com todos os filhos que ele nos confiar. Ah, é claro tenho namorado e ele me ajuda muito na questão de caminhar com os olhos fitados para o céu, além do mais é meu melhor amigo. Enfim acho que me excedi nessas linhas mas foi o que saiu, estou ansiosa para o retiro pois já faz algum tempo que estou vivendo uma certa aridez espiritual e sei que de certa forma por mais difícil que seja isso é sinal de coisa boa vindo, afinal o amor dói e sei que mesmo na dor ou na alegria não tem outro lugar  que eu prefira estar do que com Jesus.','','','','1','162','165');

INSERT INTO TB_INSCRICAO VALUES('137','','N','2018-01-23 13:42:29','D','N','N','','9','PALOMA','61995632368','Sou um caraextrovertido gosto de fazer amizades e preciso me reconciliar com deus','Não','Não','','1','163','166');

INSERT INTO TB_INSCRICAO VALUES('138','','S','2018-01-23 20:48:51','A','N','N','','8','ANTôNIA BARBOSA DA SILVA ','6130814673','Sou um jovem consagrado a nossa senhora e espero que esse retiro seja muito mariano','Não','Não','','1','164','167');

INSERT INTO TB_INSCRICAO VALUES('139','','S','2018-01-23 22:55:35','A','N','N','','7','VITóRIA LIMA','61994129510','Apenas um pecador em busca da Salvação.','Não','Não','','1','165','168');

INSERT INTO TB_INSCRICAO VALUES('140','','S','2018-01-24 00:22:35','A','N','N','','8','CLODOALDO ','61992859045','...','Não','Não','','1','166','169');

INSERT INTO TB_INSCRICAO VALUES('141','Guardiãs do Santíssimo Sacramento','S','2018-01-24 10:40:47','A','N','S','','3','VANETE MINHA MãE ','61933594415','Tenho 18 anos, e o meu maior desejo é que Jesus cresça e eu desapareça.','','','','1','167','170');

INSERT INTO TB_INSCRICAO VALUES('142','Grupo de coroinhas, e grupo jovem','S','2018-01-24 11:32:07','A','N','N','','3','VANESSA','61982051087','Sou consagrada a Nossa Senhora Rosa Mística, sou uma das coordenadoras do grupo jovem da minha paróquia','','','','1','168','171');

INSERT INTO TB_INSCRICAO VALUES('143','','N','2018-01-24 13:31:01','A','N','N','','3','JOSELMA DE CACIA DA SILVA PEREIRA','6134581834','Sou uma pessoa tranquila, dedicada aos meus estudos e ideais, sempre coloco Deus e Nossa Senhora na frente de todas futuras conquistas, sou simpática e tímida.','','','','1','169','172');

INSERT INTO TB_INSCRICAO VALUES('144','','S','2018-01-24 13:41:02','A','N','N','','6','JOSELMA DE CACIA DA SILVA PEREIRA','61934581834','Sou uma pessoa tranquila, sou judoca profissional, carrego sempre Jesus e Nossa senhora na frente em todas as derrotas e vitórias da vida.','Não','','','1','170','173');

INSERT INTO TB_INSCRICAO VALUES('145','','N','2018-01-25 14:44:32','A','N','N','','6','MARGARETE DESCONZI','3836471034','23 anos','','','','1','171','174');

INSERT INTO TB_INSCRICAO VALUES('146','Grupo Jovem Adonai, Ministério Paraclitus','N','2018-01-25 18:44:53','A','N','N','','7','ANTôNIA ALVES DE OLIVEIRA ','61984880796','Sou namorado da Tominaga\n\n\nSou do Adonai\n\n\nSou tímido\n\n\nSou baixista\n\n\nSou da Paraclitus\n\n\nSou filho único\n\n\nAmo minha namorada♡. (Ps. nem é ela que ta preenchendo a inscrição)','Bomba de asma(em caso de crise asmática)','','','1','172','175');

INSERT INTO TB_INSCRICAO VALUES('147','','S','2018-01-26 08:45:13','A','N','N','','3','PAI ','61992108927','.','','','','1','173','176');

INSERT INTO TB_INSCRICAO VALUES('148','','S','2018-01-26 09:37:32','A','N','N','','7','MãE','61996959283','Formada em Direito, não sou casada, não tenho filhos, trabalho, tenho 30 anos. Extrovertida, gosto de ouvir música, praticar esportes e fazer amizades.','não','não','','1','174','177');

INSERT INTO TB_INSCRICAO VALUES('149','Juventude Missionária Salesiana','S','2018-01-26 13:55:38','A','N','S','','3','MãE ','61986565189','Bom eu me chamo Fernanda a (fernandinha do gej) kkk, já fui do gej mais hoje faço parte apenas da JMS ( juventude missionária salesiana).. e nesse retiro quero me doar de corpo e alma para todas as pessoas que Jesus nos confiou.','não','não','','1','175','178');

INSERT INTO TB_INSCRICAO VALUES('150','','N','2018-01-26 22:32:56','A','N','N','','4','MãE','61986680252','.','','','','1','176','179');

INSERT INTO TB_INSCRICAO VALUES('151','','S','2018-01-27 14:15:32','D','S','N','','2','MáRCIA FRANCINA','61985175039','Sou animada, brincalhona, amo criança','Nao','Nao','','1','177','180');

INSERT INTO TB_INSCRICAO VALUES('152','','N','2018-01-27 15:19:30','A','N','N','','7','MARIA MEDEIROS','61999701675','Moro em Taguatinga, família um pouco complicada','','','','1','178','181');

INSERT INTO TB_INSCRICAO VALUES('153','','N','2018-01-27 15:27:16','A','N','N','','6','MARIA MEDEIROS','61999701675','Garota de Taguatinga, ensino médio 17 anos.','','','','1','179','182');

INSERT INTO TB_INSCRICAO VALUES('154','','N','2018-01-27 18:47:05','A','N','N','','2','LIDIANE MARINE','61999290418','Um pouco tímida e insegura.','Não.','Não.','','1','180','183');

INSERT INTO TB_INSCRICAO VALUES('155','GEJ DOM BOSCO','S','2018-01-27 23:36:11','A','S','S','','7','TIA ZEZE','61930835505','Simpático e engraçado. Super amigo e Carismático.','Não','Não posso comer carne','','1','181','184');

INSERT INTO TB_INSCRICAO VALUES('156','Catequese e Coordenação de grupo de coroinhas','S','2018-01-28 22:46:17','A','N','N','','4','MARIA DE NAZARé','61983663811','Sou uma pessoa que gosta de ajudar as outras, é o que mais me dar prazer na vida. Sou bastante tímida, mas depois consigo me soltar com o tempo, estou com relacionamento fragilizado no que diz respeito a mim e Deus por causa de uma tentativa de suicídio, e espero de todo coração voltar a ter alegria e está novamente ao lado Dele.','Após o café da manhã : Exodus ( 1 comprimido), Sulfato Ferroso ( 1 cp), Cálcio (2 cps) e materna (1 cp).\n\n\nAntes de dormir: Donaren ( 1 cp) e Carbolitium ( 1 cp).','Gordura e açúcar.','','1','182','185');

INSERT INTO TB_INSCRICAO VALUES('157','','S','2018-01-29 08:01:33','A','N','N','','3','ROSANA ','61998129491','Eu sofro de crises convulsivas ( convulsão) e  tenho TDH ( déficit de atenção)','Tegretol tomar as 7hrs da manhã e as 7hrs da noite','','','1','183','186');

INSERT INTO TB_INSCRICAO VALUES('158','','N','2018-01-29 21:33:01','A','N','N','','7','DALVA ','6134591490','Tenho 22 anos. E como nunca fiz um retiro esse ano eu decidir saber como é .','','','','1','184','187');

INSERT INTO TB_INSCRICAO VALUES('159','','S','2018-01-29 23:22:49','A','N','S','','4','ROMANA ','61981122316','Eu sonho com o céu a todo tempo!','','','','1','185','188');

INSERT INTO TB_INSCRICAO VALUES('160','','N','2018-01-30 22:24:00','A','N','N','','8','PAI','61984827324','A eu sou muito estrofertido gosto de comer e brincar com a cara dos outros','','','','1','186','189');

INSERT INTO TB_INSCRICAO VALUES('161','','N','2018-01-30 22:33:36','A','N','N','','7','PAI','61984827324','Faço amizade muito fácil, gosto de rir.','','','','1','187','190');

INSERT INTO TB_INSCRICAO VALUES('162','RCC, coroinha','N','2018-01-30 23:28:02','A','N','N','','7','MãE','61984467627','Eu sou um jovem da renovação carismática católica,e coroinha','Não','Não','','1','188','191');

INSERT INTO TB_INSCRICAO VALUES('163','Equipe Jovem AJUC','S','2018-02-01 13:43:52','A','N','S','','8','ANTôNIA BARBOSA DA SILVA','61985545695','Sou mais conhecido como Eude Maria, tenho 17 anos, 2 anos que estou na caminhada á um que prego a Palavra de Deus. #DeusValeAPena','Não','Não','','1','190','193');

INSERT INTO TB_INSCRICAO VALUES('164','Dizimo / Liturgia','S','2018-02-01 21:30:00','D','N','N','','7','NARIO','62991895132','Sou Jovem e tenho desejo em ser Sacerdote.','','','','1','191','194');

INSERT INTO TB_INSCRICAO VALUES('165','Fillis Mater Dei','S','2018-02-01 22:34:48','D','N','N','','7','MARIA EUNICIE','61986096929','Jovem enteressado em seguir o caminho de Deus e poder converter o maximos de jovens que eu puder, estou em formação de catequista e cerimoniário.','Nao faço, nao tenho conhecimento profundo á esse ponto','Nenhuma','','1','192','195');

INSERT INTO TB_INSCRICAO VALUES('166','','N','2018-02-02 11:05:14','A','N','N','','6','MAILSON FERREIRA','6183381196','TRANQUÍLO.','NÃO.','NÃO.','','1','193','196');

INSERT INTO TB_INSCRICAO VALUES('167','Cerimoniário e GEJ','S','2018-02-02 15:29:32','A','S','N','','8','SOLANGE ','61992687082','Sou uma pessoa Top','','','','1','194','197');

INSERT INTO TB_INSCRICAO VALUES('168','','N','2018-02-02 15:54:49','A','N','N','','8','SOLANGE ','61992687082','Sou muito seria, porem legal ! não gosto de muitas brincadeiras...\n\n\nMas garanto que sou um amor de pessoa.','','','','1','196','199');

INSERT INTO TB_INSCRICAO VALUES('169','','S','2018-02-03 12:31:21','A','S','N','','7','EDILEUZA','61995264082','Sou o Diego kk','Não','Não','','1','197','200');

INSERT INTO TB_INSCRICAO VALUES('170','','S','2018-02-03 22:41:21','A','N','N','','7','EDNA','6195648386','Sou Soniara, tenho 28 anos, moro no Guará, sou estudante da UnB do curso de Serviço Social, gosto de música, não frequento nenhum grupo jovem, gosto de dormir e de ler.','Não.','Não.','','1','198','201');

INSERT INTO TB_INSCRICAO VALUES('171','','S','2018-02-03 22:44:49','A','N','N','','6','MAE','61998143543','Alguem em busca de seus objetivos, creio que na presença de Deus nada sera impossivel para quem nele cre.\n\n\nEstudo psicologia o que me ajuda cada vez mais a ter amor,compaixão e solidariedade com meu proximo.','sim.\n\n\npropanolol duas vezes ao dia 11:00 da manha e 23:00 da noite\n\n\npaara pressão.','nao.','','1','199','202');

INSERT INTO TB_INSCRICAO VALUES('172','','S','2018-02-03 22:49:55','A','N','N','','7','EDNA ','6195648386','Sou Júlia, tenho 20 anos, estudante de Pedagogia da UnB, apaixonada por escolarização de surdos, gosto de dormir, comer, ler e ser feliz! :)','Não.','Não.','','1','200','203');

INSERT INTO TB_INSCRICAO VALUES('173','','S','2018-02-04 13:23:13','D','N','N','','8','MARINALVA MARTINS','6184837287','Um jovem buscando voltar ao amor de Deus.','','Alergia a Camarão.','','1','201','204');

INSERT INTO TB_INSCRICAO VALUES('174','','N','2018-02-04 17:30:48','A','S','N','','6','PAI','61992999241','Sou uma pessoa tranquila e bacana','Não','','','1','202','205');

INSERT INTO TB_INSCRICAO VALUES('175','','S','2018-02-04 19:27:59','A','N','N','','3','IVANILDES','6134586671','Ex integrante do Gej.','Não.','Não.','','1','203','206');

INSERT INTO TB_INSCRICAO VALUES('176','','N','2018-02-04 22:26:21','A','N','N','','8','EDIVANIA','61985788495','.','','','','1','204','207');

INSERT INTO TB_INSCRICAO VALUES('177','Grupo Jovem','S','2018-02-05 02:06:05','A','N','N','','3','MARCUS VINICIUS GOMES CIRILO','61982886539','Estudante de Enfermagem, namoro, coordeno o Grupo Jovem Getsêmani na Paróquia São Domingos Sávio (R.Fundo1). Espero que o retiro possa fazer com que eu viva mais uma experiencia com Jesus e que isso fortaleça os chamados de Cristo pra mim.\n\n\nVAI SER UM PIPOCO!!!','','','','1','205','208');

INSERT INTO TB_INSCRICAO VALUES('178','','N','2018-02-05 16:43:17','A','N','N','','7','ELIETE APARECIDA BARROSO','6130814590','Sou de boa','Não','Não','','1','206','209');

INSERT INTO TB_INSCRICAO VALUES('179','Paróquia Nossa Senhora da Assunção','N','2018-02-05 18:13:42','A','N','N','','7','FRANCISCO WELLINGTON ','6195706299','Meio tímida','Não','','','1','207','210');

INSERT INTO TB_INSCRICAO VALUES('180','','S','2018-02-05 20:35:53','D','N','N','','2','CARLOS ROBERTO SOUSA NUNES','6133915510','....','','','','1','208','211');

INSERT INTO TB_INSCRICAO VALUES('181','Santa Luzia','N','2018-02-05 22:17:10','A','N','N','','8','JHONY','6199910092','Lindo espero nesse retiro muitas bênçãos','Nao','Como tudo','','1','209','212');

INSERT INTO TB_INSCRICAO VALUES('182','','N','2018-02-05 22:38:17','A','N','N','','1','MãE','61999252609','Emotiva, companheira, sincera, e com muitas falhas também!','Não','Não','','1','210','213');

INSERT INTO TB_INSCRICAO VALUES('183','','S','2018-02-06 07:03:24','A','N','N','','3','MáRCIA','61996252678','Sou bem amigável e alegre.','','','','1','211','214');

INSERT INTO TB_INSCRICAO VALUES('184','JMS','N','2018-02-07 08:00:35','D','N','N','','8','JOCILENE MãE ','61999763010','Super animado, crismado e deposto a ajudar','','','','1','212','215');

INSERT INTO TB_INSCRICAO VALUES('185','','N','2018-02-07 09:41:06','D','N','N','','6','TEREZA MARIA DA COSTA','61992764567','Sou tranquila educada fácil de fazer amizade','Não','Não posso comer salsicha','','1','213','216');

INSERT INTO TB_INSCRICAO VALUES('186','','N','2018-02-07 11:50:45','A','N','N','','2','ODINAIR CAMARGO','6133580426','Divertida, simpática, carismática...','Não','Não','','1','214','217');

INSERT INTO TB_INSCRICAO VALUES('187','Gej','S','2018-02-07 13:10:35','A','S','S','','8','IZABEL','6134599565','Sou um doce de pessoa','','Pouca comida','','1','215','218');

INSERT INTO TB_INSCRICAO VALUES('188','','S','2018-02-07 13:41:02','A','N','N','','4','CRISTINA','6185864901','Meu nome é Daniel','Não','Não','','1','216','219');

INSERT INTO TB_INSCRICAO VALUES('189','Cerimoniários','S','2018-02-07 20:40:54','A','N','N','','7','MARIA DE LOURDES LIMA SILVA','61993641140','Estudante de Direito, solteiro, cerimôniário há 5 anos, membro do Grupo Jovem Getsêmani da Paróquia São Domingos Sávio do Riacho Fundo I','','','','1','217','220');

INSERT INTO TB_INSCRICAO VALUES('190','','N','2018-02-07 21:29:52','A','N','N','','6','SOLIMAR','6134593974','.','','','','1','218','221');

INSERT INTO TB_INSCRICAO VALUES('191','','N','2018-02-07 21:36:42','A','N','N','','3','CASA ','6135591305','.','','','','1','219','222');

INSERT INTO TB_INSCRICAO VALUES('192','','S','2018-02-08 12:55:50','A','N','N','','7','GLACE CLEIA ','6132086243','Eu estou indo para o ensino médio, ou músico, toco violino, sou do grupo jovem adonai, tenho 16 anos','','','','1','220','223');

INSERT INTO TB_INSCRICAO VALUES('193','','S','2018-02-08 13:51:27','D','N','N','','2','ERIDAN OU EDER','6130226004','...','Não','Não','','1','221','224');

INSERT INTO TB_INSCRICAO VALUES('194','Escola de Evangelização Santo André','S','2018-02-08 14:08:22','A','N','N','','9','MãE ','61985254244','Gosto de comer hambúrguer','Não','Jamais amigos boca foi feita pra cumê','','1','222','225');

INSERT INTO TB_INSCRICAO VALUES('195','Coroinhas','N','2018-02-08 18:50:34','A','N','N','','4','PAI LICLAUDIO','61981043721','Meu nome é Letícia e meu primeiro retiro de 4 dias sou do grupo jovem ADONAI e quero ser santa','Um comprimido e um spray nasal anti alérgico','Não','','1','223','226');

INSERT INTO TB_INSCRICAO VALUES('196','','S','2018-02-08 19:41:19','A','N','N','','4','MãE','6133760781','Bom eu sou uma pessoa, legal (eu acho kkk),tenho asma porém,  não tenho crise quase nunca, é só isso','Não','Não','','1','224','227');

INSERT INTO TB_INSCRICAO VALUES('197','Coroinhas e grupo jovem Fillis Mater Dei','S','2018-02-08 23:01:47','A','N','N','','2','MãE ','61984887216','Sou timida, mas fui meio obrigada a ser extrovertida com o grupo jovem. Aaah não sei me descrever kk... Aaah gosto de colocar um sorriso no rosto das pessoas e sou aquela que todo mundo recorre para alguma ajuda. Digo o que as pessoas precisam ouvir e não o que querem.','Falho muito nisso','Nenhuma, só sou fresca kk','','1','225','228');

INSERT INTO TB_INSCRICAO VALUES('198','','S','2018-02-08 23:14:50','A','N','N','','3','MãE','61985864901','Sou de igreja desde sempre.','','','','1','226','229');

INSERT INTO TB_INSCRICAO VALUES('199','','S','2018-02-09 00:01:48','A','N','N','','8','JOSé RIBAMAR ','61981215733','Pessoa tranquila, bom humor.','','','','1','227','230');

INSERT INTO TB_INSCRICAO VALUES('200','','N','2018-02-09 00:26:19','A','N','N','','7','MãE','61986155796','Sou divertida, alegre e gosto muito de fazer amizades novas.','Não','Não','','1','228','231');

INSERT INTO TB_INSCRICAO VALUES('201','','N','2018-02-09 12:34:26','A','N','N','','7','MARIBEL','61999515144','Tenho 26 anos, formado em Agronomia e trabalho numa propriedade rural da familia.','Nunca pratiquei meditacao.','Nenhuma','','1','229','232');

INSERT INTO TB_INSCRICAO VALUES('202','','N','2018-02-09 13:22:02','A','N','N','','7','JOSEJA SOMBRA','61992952077','Bem, eu tenho fobia de lugar cheio. Porém achei que ir pro retiro ia me ajudar nisso','','','','1','230','233');

INSERT INTO TB_INSCRICAO VALUES('203','','S','2018-02-09 13:30:25','A','N','N','','2','ROSANGELA','93992049717','Meu nome é Alexsandra, tenho 22 anos, acabei de me formar em engenharia civil, e no meu último ano foi um pouco difícil conciliar faculdade com a igreja, o que fez me afastar um pouco, porém sempre entreguei meu sonho e minhas dificuldades nas mãos de Deus com a intercessão da Virgem Maria para que não desistisse.\n\n\nParticipei do Santifique-se em 2017 e foi uma experiência sensacional, e tenho certeza que será melhor ainda, porque hoje tenho mais a agradecer do que pedir.','Não','Não','','1','231','234');

INSERT INTO TB_INSCRICAO VALUES('204','','S','2018-02-09 20:27:20','A','N','N','','7','JOSé RIBAMAR COELHO DA SILVA ','61981215733','Tenho 14 anos, tenho vontade de crescer vivendo a juventude santa como Dom Bosco pregava','','','','1','232','235');

INSERT INTO TB_INSCRICAO VALUES('205','','N','2018-04-18 23:20:11','A','S','N','','0','JOSE ARNALDO','61993003405','Nem sei o que dizer','','','','3','1','141');

INSERT INTO TB_INSCRICAO VALUES('206','GEJ Dom bosco','S','2018-04-19 12:06:03','A','S','','','0','ROSA','6130826060','Tira esse campo rsrs','','','','3','61','123');

INSERT INTO TB_INSCRICAO VALUES('207','Gej Dom Bosco','S','2018-04-23 15:24:20','A','S','N','','0','GENI MãE ','61986719608','.','não','não','','3','104','107');

INSERT INTO TB_INSCRICAO VALUES('208','','N','2018-04-23 22:14:54','A','S','N','','0','ELIENE','61992439969','','','','','3','72','80');

INSERT INTO TB_INSCRICAO VALUES('209','','S','2018-04-24 15:47:46','A','S','','','0','MáRCIA ','61996252678','Sou alegre.','Não.','Não.','','3','211','214');

INSERT INTO TB_INSCRICAO VALUES('210','','N','2018-04-24 15:58:02','A','S','N','','0','LUCILENE AGUIAR','6133588725_','','','','','3','31','30');

INSERT INTO TB_INSCRICAO VALUES('211','GEJ DOM BOSCO','S','2018-04-24 16:27:14','A','S','','','0','PAI','61992197688','Amigável e simples','Não','Não','','3','39','15');

INSERT INTO TB_INSCRICAO VALUES('212','GEJ DOM BOSCO','S','2018-04-24 17:28:24','A','S','','','0','MãE  EURIDES ','61986130447','','','Lactose','','3','73','22');

INSERT INTO TB_INSCRICAO VALUES('213','Gej Dom Bosco','S','2018-04-24 18:30:57','D','S','N','','0','MãE ','61984569701','','','','','3','49','49');

INSERT INTO TB_INSCRICAO VALUES('214','Gej Dom Bosco','S','2018-04-25 15:22:00','D','S','','','0','MARIA DE JESUS ','61992240268','Sou linda e amo o meu grupo lindo, anseio por esse abastecimento!','remedio para enxaqueca apenas, de 8 em 8hrs','','','3','95','97');

INSERT INTO TB_INSCRICAO VALUES('215','Gej','S','2018-04-25 16:06:03','A','S','','','0','MARIA NAZARE','61981429638','...','','','','3','88','90');

INSERT INTO TB_INSCRICAO VALUES('216','','S','2018-04-25 17:16:45','A','S','','','0','SANDRA LIMA DE OLIVEIRA','61981990261','sou uma pessoa carismática, faço amizade com facilidade, sorridente, que quer servi cada vez mais a Deus,busco a santidade.','Sim, fica comigo','Não','','3','133','136');

INSERT INTO TB_INSCRICAO VALUES('217','GEJ','S','2018-04-25 18:24:59','A','S','N','','0','DENISE','6134595330_','','','','','3','10','10');

INSERT INTO TB_INSCRICAO VALUES('218','GEJ Dom Bosco','S','2018-04-25 21:52:45','A','S','','','0','EDI ','61986521612','','','Fungo (cogumelos)','','3','25','25');

INSERT INTO TB_INSCRICAO VALUES('219','','S','2018-04-26 09:52:29','A','S','N','','0','MARIA JOSÉ CUNHA RIBEIRO','6133593245_','','- Não.','- Não.','','3','16','16');

INSERT INTO TB_INSCRICAO VALUES('220','Gej','S','2018-04-26 21:08:52','A','S','','','0','EDILEUSA','6133596361','Meigazinha ♥️','Antialérgico','Nao','','3','53','53');

INSERT INTO TB_INSCRICAO VALUES('221','Gej','S','2018-04-26 21:14:05','A','S','N','','0','EDILEUSA','61992226161','Legal','','','','3','97','131');

INSERT INTO TB_INSCRICAO VALUES('222','Gej dom bosco','S','2018-04-28 14:26:17','D','N','N','','0','MARCIA ','61985175039','Sou uma menina bem risonha mais quando estou num retiro choro que só, sou amigável, amo crianças, apaixonada por Jesus sacramentado e nossa senhora Aparecida','Não','Nenhuma','','3','67','69');

INSERT INTO TB_INSCRICAO VALUES('223','','S','2018-04-29 10:48:28','A','N','','','0','DILVA','6133595307','','','','','3','233','240');

INSERT INTO TB_INSCRICAO VALUES('224','','S','2018-04-29 10:50:07','A','N','','','0','LIDIANE MAE','61984774148','','Não','Não','','3','234','241');

INSERT INTO TB_INSCRICAO VALUES('225','Gej Dom Boeco','S','2018-04-30 11:27:22','A','S','N','','0','TIA ZETE','6130835505','','','N posso comer sem carne kkkkk','','3','181','184');

INSERT INTO TB_INSCRICAO VALUES('226','Equipe Jovem AJUC','S','2018-04-30 11:35:58','D','N','','','0','MARIA','6191452408','Sou católico carismático/tradicional, escravo a Jesus por meio da Virgem Maria. Tenho 24 anos. Trabalho e estudo...','Sim, vitamina B e biotina, uma vez por dia','Nenhuma graças a Deus','','3','235','242');

INSERT INTO TB_INSCRICAO VALUES('227','','S','2018-04-30 11:58:51','A','S','N','','0','MARIZETE','6196814642','','','','','3','236','243');

INSERT INTO TB_INSCRICAO VALUES('228','GEJ Dom Bosco','S','2018-04-30 13:18:51','A','S','','','0','MãE ','61981214179','Estou aguardando ansiosamente por esse retiro!','','','','3','14','14');

INSERT INTO TB_INSCRICAO VALUES('229','GEJ Dom Bosco','S','2018-04-30 14:24:41','A','S','','','0','MARIA ','61992240268','Gosto de interagir com todos e sou um pouco vergonhosa','Não','Não, mas faço dieta sobre prescrição médica','','3','62','63');

INSERT INTO TB_INSCRICAO VALUES('230','Gej Dom Bosco','S','2018-05-01 11:45:34','A','S','','','0','MARIZETE BISPO REIS ','61999376262','Sou uma menina extrovertida e bonita kkkkkkk','Não','Não','','3','123','126');

INSERT INTO TB_INSCRICAO VALUES('231','Gej Dom Bosco','S','2018-05-01 14:02:57','A','S','','','0','DELCIA APARECIDA JOSé MACêDO','61986118724','Não muito a falar sobre mim, sou católica e luto a cada dia para ser mais, amo minha Mãezinha das Graças e procuro viver minha vocação. Sou intercessora aonde vou e busco ser também através do meu testemunho o Evangelho de Cristo perto das pessoas.','','','','3','85','87');

INSERT INTO TB_INSCRICAO VALUES('232','GEJ Dom Bosco','S','2018-05-01 14:19:28','A','S','','','0','MARIA LOUZENICE CARVALHO DA SILVA ','6130131416','','','','','3','135','138');

INSERT INTO TB_INSCRICAO VALUES('233','GEJ Dom Bosco','S','2018-05-01 14:25:12','A','S','','','0','MARIA LOUZENICE CARVALHO DA SILVA ','6130131416','','','','','3','173','176');

INSERT INTO TB_INSCRICAO VALUES('234','Grupo de Evangelização de Jovens Dom Bosco','S','2018-05-04 10:59:22','A','S','','','0','MãE','61991774916','Sou tímido, é tmmj !','','','','3','189','5');

INSERT INTO TB_INSCRICAO VALUES('235','','S','2018-05-06 19:48:42','A','S','N','','0','ALEMIRA DONA ROSA','6134599984','','Não','Não','','3','127','130');

INSERT INTO TB_INSCRICAO VALUES('236','','S','2018-05-09 18:43:52','A','S','','','0','SELMéLIA','6130831451','','','','','3','117','120');

INSERT INTO TB_INSCRICAO VALUES('237','','S','2018-05-09 21:51:37','A','S','','','0','DEUS','6130826060','sou uma pessoa devota de Dom Bosco','','','','3','6','244');

INSERT INTO TB_INSCRICAO VALUES('238','Pastoral familiar','S','2018-05-12 21:23:25','A','S','','','0','LUCIANO','6136244679','...','Não','Não','','3','140','143');

INSERT INTO TB_INSCRICAO VALUES('239','Gej Dom Bosco','S','2018-05-14 22:58:05','A','S','N','','0','MARIA ','61991822946','Sou mt feliz! ','','','','3','147','248');

INSERT INTO TB_INSCRICAO VALUES('240','','S','2018-05-15 22:51:05','A','N','','','0','JANAINA LOPES ','61992641163','','','','','3','65','67');

INSERT INTO TB_INSCRICAO VALUES('241','','S','2018-05-20 14:59:17','A','N','','','0','FERNANDA','61984527524','.','.','','','3','237','249');

INSERT INTO TB_INSCRICAO VALUES('242','Grupo jovem Ajuc','S','2018-05-20 21:00:51','D','N','','','0','MãE ','6192795334','Sou doido','Não, a medicação que me usa','Quero tudo que tiver','','3','238','250');

INSERT INTO TB_INSCRICAO VALUES('243','Gej','S','2018-05-27 23:48:08','D','S','','','0','MARIA ','6130835611','','Não','Não','','3','240','253');

INSERT INTO TB_INSCRICAO VALUES('244','GEJ DOM BOSCO','S','2018-05-29 09:08:10','D','S','','','0','ROSILEDA','61992724933','','','','','3','36','35');

INSERT INTO TB_INSCRICAO VALUES('245','','S','2018-05-31 19:19:05','D','S','','','0','SONIA','6134588070','','','','','3','3','3');

INSERT INTO TB_INSCRICAO VALUES('246','','S','2018-06-04 18:19:01','A','S','','','0','WESLEY','6198579058','','','','','3','142','255');

INSERT INTO TB_INSCRICAO VALUES('247','','S','2018-06-04 20:05:38','A','N','','','0','MãE ','6186130447','sou irmã da melhor pessoa desse brasil vulgo kamila','','','','3','241','256');

INSERT INTO TB_INSCRICAO VALUES('248','GEJ Dom Bosco','S','2018-06-04 21:53:38','D','S','','','0','PAI ARNALDO','61993003405','','','','','3','37','91');

INSERT INTO TB_INSCRICAO VALUES('249','GEJ','S','2018-06-04 23:41:10','A','S','','','0','JESUS CRISTO','61983232905','Sou bem legal, amo o GEJ!','','','','3','90','92');

INSERT INTO TB_INSCRICAO VALUES('250','','S','2018-06-07 11:29:21','A','S','','','0','LILIAN BESSA','61983701441','','','','','3','218','221');

INSERT INTO TB_INSCRICAO VALUES('251','','S','2018-06-09 17:52:49','D','N','','','0','JOELMA ','61992419993','','Não','Não','','3','68','70');

INSERT INTO TB_INSCRICAO VALUES('252','Música','S','2018-06-17 17:34:57','A','S','','','0','PAI','61984827324','Sou muito risonho , estou a disposição de quem precisa de ajuda , gosto muito de se interagir','Não','Não','','3','187','190');

INSERT INTO TB_INSCRICAO VALUES('253','','S','2018-06-18 08:36:15','A','S','','','0','IVANILDES MAIA ','61982789273','','','','','3','203','206');

INSERT INTO TB_INSCRICAO VALUES('254','','S','2018-06-21 08:27:50','D','S','','','0','IVANILDES','6134586671','','Não','Não','','3','59','60');

INSERT INTO TB_INSCRICAO VALUES('255','','S','2018-06-21 08:29:41','D','S','','','0','IVANILDES ','6134586671','','Não','Não','','3','57','58');

INSERT INTO TB_INSCRICAO VALUES('256','','S','2018-06-21 13:20:13','A','S','','','0','SIMONE','6198785437','','Puran t4\n\n\nPela manhã em jejum','','','3','143','257');

INSERT INTO TB_INSCRICAO VALUES('257','','N','2018-06-30 00:23:43','A','S','','','0','EDILEUZA MãE','61992474253','','Nenhum.','Intolerante a lactose.','','3','55','56');

INSERT INTO TB_INSCRICAO VALUES('258','Grupo de jovens(Jedi)','S','2018-06-30 14:11:20','A','N','','','0','MãE MARIA JOSé ','61985180784','Bom, so queria dizer que sou apaixonada por Jesus haha','Omenax remédio para o estômago, bebo somente as uma vez ao dia que é pela manhã.','','','3','70','72');

INSERT INTO TB_INSCRICAO VALUES('259','','S','2018-06-30 21:31:48','A','N','N','','0','MINISTéRIO DE MúSICA RAINHA DA PAZ','61984827324','Sou uma pessoa legal gosto de conhecer pessoas novas','Não','Não','','3','186','189');

INSERT INTO TB_INSCRICAO VALUES('260','','N','2018-07-02 11:55:36','A','N','N','','0','SEBASTIANA GONçALVES','61984327005','Oi,\n\n\nBom, não sei muito bem o que falar rs, tenho 20 anos e não participo de nenhuma pastoral no momento, digamos que estou a procura do lugar onde devo servir a Deus.','','','','3','162','165');

INSERT INTO TB_INSCRICAO VALUES('261','Grupo Jovem JEDI','S','2018-07-02 21:10:24','A','N','N','','0','NEIDE ','61991621818','','','','','3','52','52');

INSERT INTO TB_INSCRICAO VALUES('262','','S','2018-07-02 22:33:19','A','N','N','','0','MARIA ADILINA NUNES MARTINS ','61984946694','Sou Ariane, tenho 19 anos, moro com  minha mãe e meu irmão mais velho. Venho de uma família de base cristã, e tenho frequentado a igreja e buscar ter um relacionamento agradável com Jesus!!!','','','','3','242','258');

INSERT INTO TB_INSCRICAO VALUES('263','','S','2018-07-03 14:21:10','A','S','N','','0','MARIA JOSé ','61991340627','Meu nome é Leandro nasci em Teresina, mas moro em Brasília desde os 2 anos de idade, tenho um filho de dois anos que se chama Miguel.','Não','','','3','56','259');

INSERT INTO TB_INSCRICAO VALUES('264','Gej','S','2018-07-03 18:28:45','A','S','N','','0','MãE','6134598976','Sou uma.pessoa difertida','Não','Não','','3','219','222');

INSERT INTO TB_INSCRICAO VALUES('265','Catequistas','S','2018-07-03 20:48:35','A','N','N','','0','PAI','6130814673','Sou uma pessoa difertida','Não','Não','','3','164','167');

INSERT INTO TB_INSCRICAO VALUES('266','','S','2018-07-03 20:58:46','A','N','N','','0','MARCIA','61992232118','Só.uma menina.timida  porém muita amiga dipostar aprendr','Nao','','','3','134','137');

INSERT INTO TB_INSCRICAO VALUES('267','','S','2018-07-04 11:18:05','A','S','N','','0','GUTO','61984235595','','','','','3','145','148');

INSERT INTO TB_INSCRICAO VALUES('268','Gej','S','2018-07-04 12:08:16','A','N','N','','0','SOLANGE','6133571919','','','','','3','29','29');

INSERT INTO TB_INSCRICAO VALUES('269','','N','2019-01-05 17:26:32','A','S','S','','8','ZE DO BIGODE','61993003405','','','','','37','1','261');

INSERT INTO TB_INSCRICAO VALUES('270','','N','2019-01-13 16:08:10','D','N','N','','6','SHIRLEI','61985458403','Boa tarde, Sou estudante e gosto de estar buscando conhecer mais o universo espiritual,','Não','Não','Desistente','37','243','263');

INSERT INTO TB_INSCRICAO VALUES('271','GEJ Dom Bosco','S','2019-01-14 10:19:22','A','S','S','','4','GENI GOMES ','61999661105','Lindíssima da cabeça aos PÉS.','Não pessoal.','Se eu ficar mais de 1h sem comer, passo mal.','','37','104','264');

INSERT INTO TB_INSCRICAO VALUES('272','','S','2019-01-17 16:42:38','A','N','N','','7','ANNA CAROLINA DA SILVA LUIZ','6133586345','','','','','37','244','265');

INSERT INTO TB_INSCRICAO VALUES('273','','N','2019-01-18 14:44:59','D','N','N','','9','CLEONICE DO CARMO','61994434101','','Não','Não','Desistentes','37','245','266');

INSERT INTO TB_INSCRICAO VALUES('274','Catequese','S','2019-01-19 18:36:25','D','N','N','','7','ROSELI MACEDO','16992555474','Meus nome é Edwirges, tenho 29 anos. Estou precisando me reecontrar na fé.','Não','Não','Não vai poder!','37','246','267');

INSERT INTO TB_INSCRICAO VALUES('275','','N','2019-01-20 21:55:19','A','N','N','','5','TEREZA ','61992678292','Sou uma pessoa que não sou de falar muito, sou tímida, resumindo não sei falar sobre mim.','Não','Não','','37','247','268');

INSERT INTO TB_INSCRICAO VALUES('276','','S','2019-01-20 21:56:34','D','N','N','','3','MáRCIA FRANCINA ','61985175039','Um pouco risonha, adora falar, e a que chora muito tmb, animada','Não','Nenhuma','Não comparecerá.','37','67','269');

INSERT INTO TB_INSCRICAO VALUES('277','','S','2019-01-20 21:59:00','D','N','N','','2','MáRCIA FRANCINA','61985175039','','','Nenhuma','Não comparecerá','37','177','180');

INSERT INTO TB_INSCRICAO VALUES('278','Grupo jovem Luiz e  fogo','S','2019-01-20 22:00:10','D','N','N','','8','MARISA DE FáTIMA MIRANDA ','61991157538','Eu sou uma pessoa determinada e confio muito em Deus','Tomo hormônio\n\n\nCálcio\n\n\nFluxetina\n\n\nGlifagen','Nao tenho','Não tem dinheiro para ir ao retiro','37','20','20');

INSERT INTO TB_INSCRICAO VALUES('279','Ajuc','S','2019-01-20 22:00:58','D','N','N','','4','EDILENE SILVA','61992829568','Tenho 17 anos e já fiz o retiro ano passado, gostei muito e quero fazer de novo','','Intolerância a lactose','Desistente','37','158','161');

INSERT INTO TB_INSCRICAO VALUES('280','','S','2019-01-20 22:01:18','D','N','N','','8','LUZIA','61983455785','','Sim. Anticoncecional','Intolerância a lactose','Desistência','37','248','270');

INSERT INTO TB_INSCRICAO VALUES('281','','S','2019-01-20 22:02:18','D','N','N','','4','CLEIA BRAGA','61992005632','','Não','Não','Desistente','37','249','271');

INSERT INTO TB_INSCRICAO VALUES('282','Grupo Fuc','S','2019-01-20 22:03:04','A','N','N','','7','ANTONIA','61986053149','','Não','Não','','37','250','272');

INSERT INTO TB_INSCRICAO VALUES('283','','N','2019-01-20 22:11:46','D','N','N','','4','ANGéLICA','6132537681','Sou Mariana Salles tenho 1,58 sou zoada por não chegar a 1,60. Jovem apaixonada por Maria, filha de um casal maravilhooosaaa irmã mais velha de 3 garotos maravilhosos. Coordenadora de um grupo de jovens cheio de amor e união. Em uma caminhada difícil porém com um namorado e amigos sempre cmg.','Não','Não','Desiatencia','37','251','273');

INSERT INTO TB_INSCRICAO VALUES('284','','S','2019-01-20 22:15:51','A','N','N','','4','SELMéLIA CAMPOS SANTOS ','61991521943','','','','','37','252','274');

INSERT INTO TB_INSCRICAO VALUES('285','Grupo jovem ajuc','S','2019-01-20 22:18:24','A','N','N','','2','FABIANA','61999615844','','','Amendoim, castanha, nozes e amêndoas','','37','253','275');

INSERT INTO TB_INSCRICAO VALUES('286','','S','2019-01-20 22:20:27','A','S','S','','3','LUCIANO','6136244679','','','','','37','140','276');

INSERT INTO TB_INSCRICAO VALUES('287','','N','2019-01-20 22:21:42','A','S','N','','2','DUCARMO','6130410144','','Nao','Nao','','37','254','277');

INSERT INTO TB_INSCRICAO VALUES('288','Renovação carismática católica','S','2019-01-20 22:25:08','D','N','N','','6','LUIZ','61991723442','Sou católico','Não','Não','Desiatencia','37','56','259');

INSERT INTO TB_INSCRICAO VALUES('289','GEJ Dom Bosco','S','2019-01-20 23:00:39','A','S','S','','6','EDI MARCELINA DE JESUS','61986521612','','Beclosol, soro nasal e loratadina (tratamento da rinite)','Cogumelos','','37','25','278');

INSERT INTO TB_INSCRICAO VALUES('290','','N','2019-01-20 23:31:06','A','N','N','','7','MAE','61998459548','','','','','37','255','279');

INSERT INTO TB_INSCRICAO VALUES('291','','S','2019-01-20 23:51:16','D','N','N','','9','MãE ','61996226916','Tenho alguns anos de caminhada, sou pregadora( mais não gosto de falar muito)\n\n\nMe chamam de bombom( pode chamar também)\n\n\nTenho 20 anos\n\n\nGosto de cantar\n\n\nAinda tenho que crescer muito espiritualmente','','','Desistência','37','256','280');

INSERT INTO TB_INSCRICAO VALUES('292','','S','2019-01-21 00:12:05','D','N','N','','7','MãE ','61995138360','Bom sou bem tímida tenho bastante vergonha,gosto muito de sorri,um pouquinho difícil de fazer amizades.','','Carne de porco(tudo que contém\n\n\nCarne de porco)','','37','257','281');

INSERT INTO TB_INSCRICAO VALUES('293','','S','2019-01-21 00:24:51','A','S','N','','8','DAYANE MOREIRA  MãE ','61995593633','Sou uma pessoa comunicativa, espontânea, extrovertida e compreensiva. As vezes impaciente.','Sim. Todas as noites as 21','Não','','37','109','112');

INSERT INTO TB_INSCRICAO VALUES('294','Gej dom bosco','S','2019-01-21 07:25:45','A','S','S','','4','EDILEUZA','61992474253','','Sim, Omeprazol.','Intolerância a lactose','','37','55','282');

INSERT INTO TB_INSCRICAO VALUES('295','GEJ','S','2019-01-21 09:48:15','A','S','S','','9','ELIENE LIMA ','6134594937','','','','','37','72','283');

INSERT INTO TB_INSCRICAO VALUES('296','','S','2019-01-21 10:14:20','D','N','N','','3','ANNE MARY BARROS SOBRINHO','61992506224','','Não','Não','Não Veio','37','258','284');

INSERT INTO TB_INSCRICAO VALUES('297','Grupo de Jovens','N','2019-01-21 10:39:54','A','N','N','','7','MARIA JOSé ','61985180784','','','','','37','70','72');

INSERT INTO TB_INSCRICAO VALUES('298','Justo/eac','S','2019-01-21 10:51:18','A','N','N','','4','MIRIAN ','61982263156','Sou bem extrovertida, gosto de fazer novas amizades, as vezes tenho facilidade pra fazer isso as vezes não, quando vou participar de qualquer coisa me entrego completamente.','Não','Não','','37','259','285');

INSERT INTO TB_INSCRICAO VALUES('299','Grupo jovem','S','2019-01-21 11:01:27','A','S','S','','4','ROSA ','6134599984','','Não','Não','','37','127','286');

INSERT INTO TB_INSCRICAO VALUES('300','','S','2019-01-21 11:14:08','D','N','N','','3','JOSE NEIDE ','61994186718','','','','Não Veio','37','260','287');

INSERT INTO TB_INSCRICAO VALUES('301','','S','2019-01-21 11:15:38','D','N','N','','9','FABIO VINíCIUS ','61993996974','Eu estive no retiro Yeshua eu me senti tocado quando falaram desse retiro de carnaval.  Então quis fazer a inscrição','','','Não vai poder!','37','261','288');

INSERT INTO TB_INSCRICAO VALUES('302','','N','2019-01-21 11:48:00','D','N','N','','3','CLEBERSON','61996812452','','','','Não veio','37','262','289');

INSERT INTO TB_INSCRICAO VALUES('303','GEJ DOM BOSCO','S','2019-01-21 11:56:00','A','S','S','','3','PAI','61992197688','Sou do GEJ e sou feliz.','Não','Não','','37','39','15');

INSERT INTO TB_INSCRICAO VALUES('304','GEJ Dom bosco','S','2019-01-21 11:57:35','A','S','S','','5','ROSA','6130826060','Lilian Bessa <lililasp@gmail.com>\n\n\nter, 30 de out de 2018 17:31\n\n\npara eu\n\n\n\n\n\nComo o trigo que morre e se entrega a terra\n\n\n\n\n\nQuero morrer por Ti Amado meu,\n\n\n\n\n\nDia após dia até a última gota','','','','37','61','290');

INSERT INTO TB_INSCRICAO VALUES('305','Coroinhas','S','2019-01-21 12:28:54','D','N','N','','6','MãE','6130459380','','','','Desistiu','37','263','291');

INSERT INTO TB_INSCRICAO VALUES('306','G.E.J. DOM BOSCO','S','2019-01-21 13:16:55','A','S','S','','7','MARIA JOSé','6133593245','Membro do GEJ, integrante da comissão do retiro de carnaval 2019.','Não','Não','','37','16','292');

INSERT INTO TB_INSCRICAO VALUES('307','Pós-crisma','S','2019-01-21 14:04:12','A','N','N','','3','JOELMA LUIZ DA MOTA MENDONçA ','61984044255','','','','','37','264','293');

INSERT INTO TB_INSCRICAO VALUES('308','','N','2019-01-21 14:22:21','D','N','N','','4','ZE DO BIGODE','61993003405','','','','','37','147','248');

INSERT INTO TB_INSCRICAO VALUES('309','Música','S','2019-01-21 14:54:58','D','N','N','','8','MARIA IVAN MENDES NUNES ','61993203570','','','Não como carne nenhuma, nem frango, nem peixe.','Desistência.','37','265','294');

INSERT INTO TB_INSCRICAO VALUES('310','','S','2019-01-21 15:03:10','A','S','S','','7','MARIZETE MãE ','6130835505','','','','','37','236','295');

INSERT INTO TB_INSCRICAO VALUES('311','','S','2019-01-21 15:35:20','D','N','N','','8','EDNA DE OLIVEIRA ARANTES','6133767432','','','','Desistente','37','266','296');

INSERT INTO TB_INSCRICAO VALUES('312','','N','2019-01-21 17:55:49','D','N','N','','3','MãE ','61985202790','','Não','Não','','37','267','297');

INSERT INTO TB_INSCRICAO VALUES('313','Gej Dom Bosco','S','2019-01-21 18:39:26','A','S','S','','3','JOSé ARNALDO','61993003405','','Sim','','','37','37','298');

INSERT INTO TB_INSCRICAO VALUES('314','','N','2019-01-21 19:33:46','A','N','N','','7','SUELI ','61984059117','Sou muito brincalhona , extrovertida mais bem seria quando tem que ser!','Não','Não','','37','268','299');

INSERT INTO TB_INSCRICAO VALUES('315','','S','2019-01-22 00:09:40','A','S','S','','3','MARIZETE BISPO REIS ','61999376262','','Não','Não','','37','123','300');

INSERT INTO TB_INSCRICAO VALUES('316','GEJ DOM BOSCO','S','2019-01-22 22:06:04','A','S','S','','8','MãE','61985776626','Eu gosto de açaí e tenho uma madrinha que tem o maior pé','Não','Quiabo','','37','237','301');

INSERT INTO TB_INSCRICAO VALUES('317','','S','2019-01-23 14:20:00','A','S','N','','5','MARIA ADILINA','61984946694','','','','','37','242','302');

INSERT INTO TB_INSCRICAO VALUES('319','','S','2019-01-24 20:55:23','A','N','N','','8','LIDIANE','61992232118','Tímida legal amiga','Não','Não','','37','134','313');

INSERT INTO TB_INSCRICAO VALUES('320','','S','2019-01-24 22:04:09','A','N','N','','4','MARIA','6133593657','Meu nome é Rayssa,\n\n\nTenho 22 anos,\n\n\nSou professora de natação,\n\n\nSou comunicativa, gosto de fazer novas amizades, amo ir á missa e participar de eventos da igreja.','Não','Não','','37','271','314');

INSERT INTO TB_INSCRICAO VALUES('321','','S','2019-01-24 23:33:03','A','N','N','','4','MARIA','61998133042','Meu nome é Polyana, tenho 20 anos, curso Direito  e estou no 7º Semestre. Gosto de fazer novas amizades e estar próxima de Deus.','Não','Não','','37','272','315');

INSERT INTO TB_INSCRICAO VALUES('322','Gej Dom Bosco','S','2019-01-25 10:33:26','A','S','S','','3','DELCIA APARECIDA JOSé MACêDO','61994193625','Sou católica apostólica romana e membro do GEJ Dom Bosco há quase 2 anos. Esse ano integro a comissão desse retiro de carnaval maravilhoso e espero ajudar no que for necessário para que o mesmo aconteça da melhor forma possível.','','','','37','85','87');

INSERT INTO TB_INSCRICAO VALUES('323','Catequese','N','2019-01-25 10:34:57','A','N','N','','3','SEBASTIANA','61984327005','','Não','Não','','37','162','316');

INSERT INTO TB_INSCRICAO VALUES('324','Nossa senhora de Fátima','S','2019-01-25 20:11:44','D','N','N','','8','MARIA DO CARMO','6136253201','Gostou muito de participar de retiro de igreja , e primeiro retiro que vou fazer no tempo de carnaval','Não','Não','Não vai mais.','37','273','317');

INSERT INTO TB_INSCRICAO VALUES('325','','N','2019-01-25 20:18:26','D','N','N','','2','LUCILEIDE DO NASCIMENTO MIRANDA ','6198225122','','Não','Não','Desistiu','37','274','318');

INSERT INTO TB_INSCRICAO VALUES('326','GRUPO JOVEM, VICENTINO,CERIMONIARIO','S','2019-01-25 22:14:47','A','N','N','','8','JOÃO VICTOR LUZIANO','61996143499','Sou de Formosa, tenho 18 anos, participo da paróquia Santa luzia, onde eu fico a frente de duas pastorais coroinhas  e grupo jovem JP2.','Não','Não','','37','275','319');

INSERT INTO TB_INSCRICAO VALUES('327','','S','2019-01-25 23:02:28','A','S','S','','7','RAISSA RODRIGUES','61985067172','','','','','37','60','61');

INSERT INTO TB_INSCRICAO VALUES('328','','S','2019-01-26 08:34:06','A','S','S','','3','LEDA MãE','61992724933','','','','','37','36','320');

INSERT INTO TB_INSCRICAO VALUES('329','Catequese','S','2019-01-26 10:37:16','D','N','N','','2','MãE ','61986486945','Tenho 20 anos , sou catequista desde dos 15 , canto na igreja , sou carismática , animada , bem comunicativa e extrovertida . Não tenho frescura com nada gosto de tudo e todo tipo de comida .','','','Desistência','37','276','321');

INSERT INTO TB_INSCRICAO VALUES('330','','S','2019-01-26 22:55:22','A','N','N','','8','DONA ELIETE','6186315346','','Não','Não','','37','206','209');

INSERT INTO TB_INSCRICAO VALUES('331','Renovação Carismática Católica','N','2019-01-27 18:09:20','A','S','N','','3','ADELIZA SARAIVA DOS SANTOS','6133596039','','Não','Não','','37','277','322');

INSERT INTO TB_INSCRICAO VALUES('332','','S','2019-01-28 11:31:12','A','N','N','','6','LEANDRO','61994174728','Sou uma pessoa muito calma e','Não','Nenhuma','','37','278','323');

INSERT INTO TB_INSCRICAO VALUES('333','','S','2019-01-28 14:58:27','A','N','N','','8','PADRINHO','6130826060','sou uma pessoa sonhadora, um cristão!','não','não como carne vermelha, não bebo refrigerante','','37','6','324');

INSERT INTO TB_INSCRICAO VALUES('334','Gej Dom Bosco','S','2019-01-28 15:41:42','A','S','S','','4','MARIA DE JESUS ','61992240268','amo servir, nasci pra isso !','','','','37','95','325');

INSERT INTO TB_INSCRICAO VALUES('335','GEJÃO','S','2019-01-28 19:54:33','A','S','S','','5','SELMELIA CAMPOS SANTOS','61991521943','Sou desse barco já, a gente vai é para o céu ! <3','','','','37','117','326');

INSERT INTO TB_INSCRICAO VALUES('336','GEJÃO','S','2019-01-28 21:44:27','A','S','S','','10','MARIA VILANIR','61983232905','QUERO É SER SANTO. BORA TB ?','','','','37','90','327');

INSERT INTO TB_INSCRICAO VALUES('337','','S','2019-01-29 08:22:22','A','S','S','','3','LUCIA NERI','6133588725','','','','','37','31','328');

INSERT INTO TB_INSCRICAO VALUES('338','','S','2019-01-29 13:21:46','A','S','S','','4','IVANILDES ','6134586671','Amo o GEJ ❣️','Não','Não','','37','57','58');

INSERT INTO TB_INSCRICAO VALUES('339','','S','2019-01-29 13:23:33','A','S','S','','7','IVANILDES ','6134586671','Eu amo o GEJ','Não','Não','','37','59','60');

INSERT INTO TB_INSCRICAO VALUES('340','GEJ DOM BOSCO','S','2019-01-29 22:11:05','A','S','S','','3','DENISE','6134595330','.','Não','Não','','37','10','329');

INSERT INTO TB_INSCRICAO VALUES('341','GEJ Dom Bosco','S','2019-01-31 11:56:24','A','S','S','','8','MãE','61991774916','Sou tímido apesar de não parecer, sou um rapaz bem participativo no que for preciso e necessário.','','Ovo.','','37','189','330');

INSERT INTO TB_INSCRICAO VALUES('342','JEDI','S','2019-01-31 15:11:46','A','N','N','','7','RITA ALEXANDRINO MIRANDA','61985160924','Uma pessoa bem tranquila, amigável e bem disposto para tudo.','Alodipina, uma vez ao dia pela manha','','','37','279','331');

INSERT INTO TB_INSCRICAO VALUES('343','Justo, Cerimoniario Da Santissima Trindade','S','2019-02-02 13:21:21','A','N','N','','7','LUDMILLA MARIA ','61981773752','Sou uma pessoa Legal, comunicativa, brincalhona, estou sempre buscando melhorar, sou sempre feliz, to sempre sorrindo para todos e tudo','Nenhuma','Nenhuma','','37','280','332');

INSERT INTO TB_INSCRICAO VALUES('344','','N','2019-02-04 14:13:35','A','N','N','','8','MARTA','6133595819','','','frutos do mar','','37','281','333');

INSERT INTO TB_INSCRICAO VALUES('345','','N','2019-02-06 10:53:36','A','N','N','','4','IBSEM GOIANO FREIRE','6133578741','','Não','Não','','37','282','334');

INSERT INTO TB_INSCRICAO VALUES('346','','S','2019-02-06 16:33:07','A','S','S','','4','MARIA ','61992240268','Extrovertida, alegre não tenho tempo ruim para nada','Não','Não','','37','62','335');

INSERT INTO TB_INSCRICAO VALUES('347','Gej Dom Bosco','S','2019-02-06 16:43:36','A','S','S','','5','WESLEY','61985739058','','','','','37','142','336');

INSERT INTO TB_INSCRICAO VALUES('348','','N','2019-02-07 00:20:37','A','N','N','','2','ALBERTO LOURENçO DE LIMA NETO','61999873009','Sou da Paróquia Maria de Nazaré em Samambaia Sul, participo do ministério de intercessão do grupo jovem Adonai e conheci o Gej Dom Bosco em uma missão realizada na cidade Ocidental no dia 21/07/2018. Estou ansiosa para poder participar do Santifique-se, pois ouvi falar muito bem do retiro e tenho certeza de que será um avivamento para minha alma que anda um tanto desanimada nos últimos dias...','','','','37','283','337');

INSERT INTO TB_INSCRICAO VALUES('349','','S','2019-02-07 14:10:17','A','N','N','','4','MARIA ZILDA','6133590830','Natália, tenho 18 anos, curso direito, gosto de fazer novas amizades sempre, e quero me aproximar de Deus cada vez mais.','Não','Não','','37','284','338');

INSERT INTO TB_INSCRICAO VALUES('350','','N','2019-02-07 22:25:29','D','N','N','','8','EDIONE APARECIDA E SILVA COELHO','61996446583','Vestibulanda de medicina, solteira,  participo da igreja católica há 4 anos, já participei de grupo jovem (fui coordenadora por um ano aproximadamente),  sou uma pessoa tranquila, comunicativa e que tenta absorver o máximo das experiências vividas.','Anticoncepcional (todos os dias as 16:00)\n\n\nAddera D3 (sexta feira após o almoço)\n\n\nUso de antialérgico em caso de crise alérgica (rinite ou dermatite de contato)','','Desistente','37','285','339');

INSERT INTO TB_INSCRICAO VALUES('351','','S','2019-02-07 23:25:53','A','N','N','','6','CARLOS ROBERTO','61996748164','','','','','37','286','340');

INSERT INTO TB_INSCRICAO VALUES('352','','S','2019-02-08 11:37:12','D','N','N','','5','GILCILENE','61992101477','','','','Desistência','37','287','341');

INSERT INTO TB_INSCRICAO VALUES('353','','S','2019-02-08 11:40:14','D','N','N','','2','CASA DA MINHA AVó ','6135360250','Sou uma pessoa educada sou engraçada amo esta na presença do Senhor e quero conhecer um pouco mais sobre o retiro de vocês gosto de novas amizades.','Nenhuma','Nenhum','Não vai mais.','37','288','342');

INSERT INTO TB_INSCRICAO VALUES('354','Catequese','S','2019-02-09 09:55:01','D','N','N','','6','PRISCILA','61981284027','Extrovertida,simpática, super simples, amo ajudar o próximo...','Remédio controlado uma vez ao dia.','Nenhuma','Problemas de família!','37','289','343');

INSERT INTO TB_INSCRICAO VALUES('355','','S','2019-02-09 12:40:42','D','N','N','','5','ADEMAR OU SANDRA','6133568751','','Não.','Não.','Desistncia.','37','290','344');

INSERT INTO TB_INSCRICAO VALUES('356','Grupo jovem','N','2019-02-09 16:06:05','A','N','N','','3','MãE ','61996636754','Formada em enfermagem, católica, participando de grupo jovem JEDI.','Cloridrato de ciclobenzaprina, iaz','Não','','37','291','345');

INSERT INTO TB_INSCRICAO VALUES('357','','S','2019-02-10 22:38:33','A','N','N','','7','ROSANEUSA','61999282507','','','','','37','292','346');

INSERT INTO TB_INSCRICAO VALUES('358','Pastoral da Juventude','S','2019-02-10 22:42:24','A','N','N','','3','LúCIA DUDA','61986280131','Eu namoro, tenho 18 anos, minha cor favorita é amarelo e eu sou devota de Santa Terezinha do Menino Jesus e de São Rafael Arcanjo.','Não','Nenhuma','','37','4','4');

INSERT INTO TB_INSCRICAO VALUES('359','','S','2019-02-11 12:50:39','D','N','N','','1','KêNIA','61984474122','','','','DESISTIU!','37','293','347');

INSERT INTO TB_INSCRICAO VALUES('360','','N','2019-02-11 19:10:11','D','N','N','','4','MãE ','61981452800','','','','MOTIVOS PESSOAIS.','37','294','348');

INSERT INTO TB_INSCRICAO VALUES('361','','S','2019-02-12 10:11:19','D','N','N','','2','MãE','61981810890','Sou nem extrovertida, amo dançar, interagir e sorrir. Aproveita cada momento como se fosse os últimos.','Não','Nenhuma, como de tudo kkk','Sem condições para pagamento.','37','295','349');

INSERT INTO TB_INSCRICAO VALUES('362','','N','2019-02-13 09:05:17','D','N','N','','7','PAI ','61998425042','','','','Desistência','37','296','350');

INSERT INTO TB_INSCRICAO VALUES('363','','S','2019-02-13 10:47:11','A','N','N','','1','TERESA ','61985285904','','','','','37','297','351');

INSERT INTO TB_INSCRICAO VALUES('364','Gej Dom Bosco','S','2019-02-13 13:17:35','A','S','S','','10','ANTONIA SIMONE RAMOS LIMA MACIEL ','6198575437','','Puran T4 50 mg 30 minutos antes do café da manhã','Massa, trigo, chocolate','','37','143','257');

INSERT INTO TB_INSCRICAO VALUES('365','','S','2019-02-13 19:07:47','D','N','N','','6','LúCIA ','6191352908','Mãe do Isaac Sávio, com o desejo ardente de retomar a vida missionária.','','','Não veio','37','298','352');

INSERT INTO TB_INSCRICAO VALUES('366','Musica','S','2019-02-13 19:22:30','A','N','N','','3','MãE ','61999299714','','','','','37','107','110');

INSERT INTO TB_INSCRICAO VALUES('367','','S','2019-02-14 00:17:00','D','N','N','','3','RITA MARIA','61982572351','','','','Desistência','37','19','19');

INSERT INTO TB_INSCRICAO VALUES('368','JUVENTUDE MISSIONÁRIA SALESIANA','S','2019-02-14 10:20:16','A','N','N','','8','IZANILDA ','6135850167','Sou um jovem conservador que estuda direito e é um rapaz que segue as leis de Deus, inclusive aquelas que outras pessoas insistem em desrespeitá-las como fazer sexo antes do casamento. Este é o Marcelo Alves.','Nope!','Nope!','','37','299','353');

INSERT INTO TB_INSCRICAO VALUES('369','Gej Dom Bosco','S','2019-02-14 11:47:22','A','S','S','','3','MãE ','61981214179','Tenho 17 anos e quero me aprofundar mais no amor de Deus.','Não','Não','','37','14','354');

INSERT INTO TB_INSCRICAO VALUES('370','','N','2019-02-14 14:55:31','D','N','N','','4','MARIA SELMA MARTINS ','61985997899','','','','Não irá mais para o retiro devido o trabalho.','37','300','355');

INSERT INTO TB_INSCRICAO VALUES('371','','N','2019-02-14 15:11:51','A','N','N','','7','ILZA HELENA DA SILVA','61981159435','','','','','37','301','356');

INSERT INTO TB_INSCRICAO VALUES('372','','N','2019-02-14 21:51:19','A','N','N','','8','ANTONIA SIMONE RAMOS LIMA MACIEL ','61985785437','','','','','37','302','357');

INSERT INTO TB_INSCRICAO VALUES('373','','N','2019-02-14 22:05:08','A','N','N','','2','ANTONIA SIMONE RAMOS LIMA MACIEL ','61985785437','','Não','Lactose','','37','303','358');

INSERT INTO TB_INSCRICAO VALUES('374','Gej','S','2019-02-15 10:28:10','A','S','S','','8','MARIA CéLIA MIRANDA DOS SANTOS','6133598257','','','','','37','34','28');

INSERT INTO TB_INSCRICAO VALUES('375','Coroinhas','S','2019-02-15 23:13:05','D','N','N','','3','MARILEIS GUIMARãES ','6134587850','Tenho um ano de caminhada que iniciou em um retiro que foi um divisor de águas para mim. Sinto como se só comecei a viver de fato após compreender o amor que Deus tem por mim e a cada dia o desejo de servi-lo com sinceridade e comprometimento, e também de persistir no caminho em busca da Santidade.','Não.','Não.','Vai para outro retiro','37','304','359');

INSERT INTO TB_INSCRICAO VALUES('376','','S','2019-02-16 10:38:53','A','N','N','','8','NATALICIO OLIVEIRA ALMEIDA','61995175025','Fiz a crisma em 2015 e participei de um retiro que foi maravilhoso','Não','Não','','37','305','360');

INSERT INTO TB_INSCRICAO VALUES('377','','S','2019-02-16 17:05:39','A','N','N','','3','IRANI FARIAS DA SILVA ','61992415372','','Remédios controlados','','','37','306','361');

INSERT INTO TB_INSCRICAO VALUES('378','','N','2019-02-17 14:51:44','A','S','S','','7','TIA','6130835505','Venha descobrir.','Não.','Não.','','37','181','362');

INSERT INTO TB_INSCRICAO VALUES('379','','N','2019-02-18 09:53:14','D','N','N','','7','MARCIA TENORIO BARBOSA FARIAS','61984052490','','','MILHO','retirante não vai mais poder ir ao retiro, o mesmo terá que cuidar do filho !','37','307','363');

INSERT INTO TB_INSCRICAO VALUES('380','','N','2019-02-18 11:01:53','D','N','N','','2','MãE  SAMARA','61986379774','sou extrovertida, sou participativa e tenho um gênio forte','','','Não comparecerá','37','308','364');

INSERT INTO TB_INSCRICAO VALUES('381','Grupo jovem J.U.S.T.O','S','2019-02-18 17:55:38','A','N','S','','9','TIO FOFãO','61986444870','Bom tenho 38 anos , me chamam de tia lu ou tia fofuxa , sou uma pessoa que busca incessantemente me preencher do amor de Deus','Não','Não','','37','309','365');

INSERT INTO TB_INSCRICAO VALUES('382','','S','2019-02-18 18:12:25','A','N','N','','7','AURI PAIVA','61999388013','Uma pessoa disposta a vontade do Senhor.','Não.','Não.','','37','310','366');

INSERT INTO TB_INSCRICAO VALUES('383','','S','2019-02-18 18:16:25','A','N','S','','10','TIA FOFUXA','61984248986','','Remédios para enxaqueca','Peixe','','37','311','367');

INSERT INTO TB_INSCRICAO VALUES('384','','N','2019-02-18 20:21:52','A','N','N','','9','PAULO ROGERIO ','61981623646','','','','','37','312','368');

INSERT INTO TB_INSCRICAO VALUES('385','','S','2019-02-18 20:22:49','A','N','N','','9','IODETE','6133723160','Meu nome é Eduardo tenho 17 anos gosto de fazer amizades,sou tímido etc... Esses dias sentir que devo me entregar no meu máximo aos deveres da igreja todos os retiros que eu poder fazer e não me comprometer com os meus outros compromissos eu irei fazer e esse foi um dos motivos para q eu faça o santifique-se, é eu acho que isso não me resume bem mais é um pouco sobre mim','Não','Nem uma','','37','313','369');

INSERT INTO TB_INSCRICAO VALUES('386','J.U.S.T.O/Guardiã','S','2019-02-18 22:38:20','A','N','N','','7','ANA LúCIA','61984248986','','','','','37','314','370');

INSERT INTO TB_INSCRICAO VALUES('387','Vicentinos jovens','S','2019-02-18 22:59:10','A','N','N','','6','MãE GILMARA CARDOSO CAMPOS ','61984087583','','','','','37','315','371');

INSERT INTO TB_INSCRICAO VALUES('388','','S','2019-02-19 07:25:58','A','N','N','','2','LILIANE','6133710726','Sou ruiva ,pequena , extrovertida','Não','Não','','37','316','372');

INSERT INTO TB_INSCRICAO VALUES('389','','N','2019-02-19 17:30:55','D','N','N','','6','YARA','61981551338','Gosto de fazer amizades, sou tranquila de lidar me dou bem com as pessoas ao redor','Não','Não','Não veio','37','317','373');

INSERT INTO TB_INSCRICAO VALUES('390','','N','2019-02-19 19:06:40','A','N','N','','6','CAMILA','61991434270','Eu quero sair mudade desese encontro eu sou uma pessoa boa quero me transforma','Não tenho nenhum uso de médicacao','Nenhuma restrição alimentar','','37','318','374');

INSERT INTO TB_INSCRICAO VALUES('391','Grupo Jovem Arcanjos','S','2019-02-20 09:50:10','A','N','N','','3','JOSELMA DE CACIA DA SILVA PEREIRA','61982830710','\"Sou apaixonada em eventos da igreja, principalmente pelo fato de estar perto de Deus e Nossa Senhora!\"','','','','37','169','172');

INSERT INTO TB_INSCRICAO VALUES('392','','N','2019-02-20 12:25:10','A','N','N','','8','IEURI MELANIA','61985182318','Pessoa que sempre foi cristão, que deseja participar de um retiro para conhecer novas pessoas, e me aproximar do que é sagrado, estudante de filosofia da UnB, estou tendo contato com vários pensadores e como é a epistemologia do mundo, e a resposta sempre teve na igreja para mim, assim quero entrar na igreja católica, e estou conhecendo seus meios, através de missas e retiros e estudos.','nao','nao','','37','319','375');

INSERT INTO TB_INSCRICAO VALUES('393','catequese','N','2019-02-20 12:28:54','A','N','N','','2','IRAILDES GOMES','6130835519','','','','','37','320','376');

INSERT INTO TB_INSCRICAO VALUES('394','Grupo Jovem Arcanjos','S','2019-02-20 14:24:35','A','N','N','','7','JOSELMA DE CACIA DA SILVA PEREIRA','61982830710','\"Sou apaixonado em retiros, principalmente pelo fato de estar perto de Jesus e Nossa Senhora!\"','','','','37','170','173');

INSERT INTO TB_INSCRICAO VALUES('395','','N','2019-02-20 14:31:58','A','N','N','','8','MãE','61984256270','Meu nome e Jonas Faso parte do ministério de música rainha da paz .Eu estou indo a esse retiro para ver se me preencho mais do espírito santo','Não','Não','','37','187','190');

INSERT INTO TB_INSCRICAO VALUES('396','','N','2019-02-20 17:06:14','A','N','N','','8','ANA LUCIA','61984248986','','','','','37','321','377');

INSERT INTO TB_INSCRICAO VALUES('397','','S','2019-02-20 18:24:10','A','N','N','','4','BRUNA ','61991091755','Sou uma pessoa calma gosto muito de sorrir e de fazer novas amizades','Não','Não','','37','82','84');

INSERT INTO TB_INSCRICAO VALUES('398','Ministério de Coroinhas e Acólitos / PASCOM','N','2019-02-21 18:20:46','A','N','N','','6','ABADIA ALVINO','61985254513','','Não.','Não.','','37','322','378');

INSERT INTO TB_INSCRICAO VALUES('399','','S','2019-02-21 19:48:08','A','N','N','','7','MARIA MEDEIROS DA COSTA','61999701675','','','','','37','113','116');

INSERT INTO TB_INSCRICAO VALUES('400','música','S','2019-02-21 22:28:22','A','N','N','','8','NILSON','6133843340','','','','','37','116','119');

INSERT INTO TB_INSCRICAO VALUES('401','Musica','S','2019-02-21 22:44:05','A','N','N','','4','ROSE MARY PIMENTEL','61991999329','','','','','37','114','117');

INSERT INTO TB_INSCRICAO VALUES('402','Grupo Justo','S','2019-02-22 19:17:47','A','N','N','','2','JANDIRA DA MOTA CORREIA','61984191021','Sou tímida e ao mesmo tempo engraçada, não sou de conversar muito.\n\n\nAcho que é isso','Dorflex, Paracetamol e Ibuprofeno.','Não posso comer e nem tomar nada que tenha leite, não como bacon e nem salsicha e sou alérgica a chocolate.','','37','323','379');

INSERT INTO TB_INSCRICAO VALUES('403','Santíssima Trindade','N','2019-02-24 14:33:49','D','N','N','','4','MãE THAIS ','61991334352','Tenho 18 aninhos, e a um tempo atrás me mudei pra longe de minha igreja depois disso ficou difícil eu conseguir ir às missas, sempre gostei muito da minha igreja e por mais que tivessem outras perto da minha nova casa eu não gostava tanto como gostava da santíssima então nisso me afastei, sinto muita falta, vou voltar a frequenta-la e procurei este retiro como forma de me reencontrar com Deus.','Não','Não','Desistencia','37','324','380');

INSERT INTO TB_INSCRICAO VALUES('404','','S','2019-02-24 15:59:12','A','N','N','','7','MãE','55619844676','','','','','37','188','191');

INSERT INTO TB_INSCRICAO VALUES('405','EAC','S','2019-02-24 21:16:27','A','N','N','','8','MARIA JOSE','6133710980','Sou muito estrovetido, brinco muito,um pouco sério,e um pouco nervoso com algumas coisas.','','','','37','325','381');

INSERT INTO TB_INSCRICAO VALUES('406','','N','2019-02-24 22:15:58','A','N','N','','7','UALISON','61991806361','','','','','37','326','382');

INSERT INTO TB_INSCRICAO VALUES('407','Liturgia e Grupo Jovem','S','2019-02-24 22:32:12','A','N','N','','6','ELIZETE RODRIGUES','61984179640','','','','','37','327','383');

INSERT INTO TB_INSCRICAO VALUES('408','Pastoral da música','S','2019-02-25 08:05:58','A','N','N','','7','NEUZA ','61996912605','','Não','Não','','37','115','118');

INSERT INTO TB_INSCRICAO VALUES('409','','S','2019-02-25 09:11:13','A','N','N','','4','ELIAR','61999626703','','Tegretol CR 200mg tomo 2 comprimidos de noite e 1 comprimido de manhã','','','37','183','186');

INSERT INTO TB_INSCRICAO VALUES('410','Acólitos e Cerimoniários da Paróquia São José Operário','N','2019-02-25 11:25:13','A','N','N','','5','SôNIA OLIVEIRA DE MORAES','61986175756','Tenho algum tempo de caminhada na Igreja, mas procuro me aprofundar mais na espiritualidade. Gosto de estudar sobre a Fé católica e sobre os santos.\n\n\nFaço cursinho, mas ainda não tenho certeza sobre o curso superior que quero ingressar.\n\n\nMinha família gosta de sempre estar junto pois somos meio apegados, e é bom pois crescemos juntos na Fé.\n\n\nGosto de ler e estar junto dos amigos.','Não, mas tenho Asma Crônica.','Não','','37','328','384');

INSERT INTO TB_INSCRICAO VALUES('411','Saúde etc','S','2019-02-25 12:10:57','A','N','N','','4','MATHEUS','61981979118','Sou missionária da Divina Misericórdia portadora de dor crônica, Deus é mais em minha vida pra servir os outros. Uso bengala pra um pouco de apoio mas não preciso de ajuda, Deus é mais comigo','Sim mas vou levar na bolsa e é tomado com água','Não como nenhuma carne animal só a clara de ovo podem levar ovo pra lá pra fazerem pra mim no almoço?  Só como a clara, a gema não.','','37','329','385');

INSERT INTO TB_INSCRICAO VALUES('412','','S','2019-02-25 13:05:26','A','N','N','','9','TERESINHA','61993723025','sou o vitor','nao','nao','','37','330','386');

INSERT INTO TB_INSCRICAO VALUES('413','','N','2019-02-25 13:40:12','A','N','N','','1','ONELE DOMINGOS DA GLóRIA ','6199785546','','','','','37','331','387');

INSERT INTO TB_INSCRICAO VALUES('414','Músicos','S','2019-02-25 14:19:27','A','N','N','','7','MãE','61996761700','','','','','37','332','388');

INSERT INTO TB_INSCRICAO VALUES('415','Música e cerimoniário','S','2019-02-25 18:25:24','A','N','N','','7','ISABEL MARIA','61983761058','','','','','37','333','389');

INSERT INTO TB_INSCRICAO VALUES('416','','S','2019-02-25 20:16:42','A','N','N','','7','MãE ','6134599830','','Não','Não','','37','334','390');

INSERT INTO TB_INSCRICAO VALUES('417','','S','2019-02-25 20:28:47','A','N','N','','2','MARIA LUCIA ','6130246814','Meu nome é isabela, tenho 22 anos sou católica, não frequento nenhum tipo de grupo jovem, mais fui tocada para participar desse retiro.','Nenhum','Nenhuma','','37','335','391');

INSERT INTO TB_INSCRICAO VALUES('418','','N','2019-02-26 00:35:48','D','N','N','','3','LILIAN ','61981040036','','N','N','VAI PARA OUTRO RETIRO.','37','336','392');

INSERT INTO TB_INSCRICAO VALUES('419','','N','2019-02-26 19:38:07','A','N','N','','7','MãE ','61999299714','Sou muito tranquilo,comunicativo e solidário.','','','','37','337','393');

INSERT INTO TB_INSCRICAO VALUES('420','','N','2019-02-27 09:55:06','A','N','N','','4','LETíCIA BESSA','61991058681','','','','','37','218','394');

INSERT INTO TB_INSCRICAO VALUES('421','','N','2019-02-27 09:59:07','A','N','N','','3','MARIA LOUZENICE CARVALHO DA SILVA ','6130131416','','','','','37','135','395');

INSERT INTO TB_INSCRICAO VALUES('422','','N','2019-02-27 10:03:11','A','N','N','','3','MARIA LOUZENICE CARVALHO DA SILVA ','6130131416','','','','','37','173','396');

INSERT INTO TB_INSCRICAO VALUES('423','','S','2019-02-28 11:15:03','A','N','N','','8','CLODOALDO PAI','61992859045','','','','','37','166','169');

INSERT INTO TB_INSCRICAO VALUES('424','','S','2019-02-28 11:19:51','A','N','N','','1','JOãO VIANER MAIA PAI','61982504169','','Não.','Não.','','37','338','397');

INSERT INTO TB_INSCRICAO VALUES('425','Acólitos','N','2019-02-28 11:40:52','A','N','N','','7','MARIA ÂNGELA RIBEIRO DE LIMA ','6130328502',':)','Não','Não','','37','339','398');

INSERT INTO TB_INSCRICAO VALUES('426','Acólitos','N','2019-02-28 11:47:39','A','N','N','','7','MARIA ÂNGELA RIBEIRO DE LIMA','6130328502',':)','Não','Não','','37','340','399');

INSERT INTO TB_INSCRICAO VALUES('427','','N','2019-02-28 16:15:24','A','N','N','','8','IRMãS DA CARIDADE','6133593104','','','','','37','341','400');

INSERT INTO TB_INSCRICAO VALUES('428','Um serviço a igreja (Escola de Evangelização Santo André)','S','2019-02-28 19:58:41','A','N','N','','4','VALéRIA MãE','61996515557','','Não','Não','','37','342','401');

INSERT INTO TB_INSCRICAO VALUES('429','','N','2019-02-28 21:02:17','A','N','N','','7','NATALICIO OLIVEIRA ALMEIDA','61991271502','E um lugar que eu sempre quis ter conhecido','','','','37','343','402');

INSERT INTO TB_INSCRICAO VALUES('430','','S','2019-03-01 08:05:30','A','N','N','','4','ROSALITA NUNES MÃE ','61985338446','','Não.','Não.','','37','344','403');

INSERT INTO TB_INSCRICAO VALUES('431','Grupo jovem','S','2019-03-01 08:29:09','A','N','N','','7','MARIA ','61984858518','','','','','37','345','404');

INSERT INTO TB_INSCRICAO VALUES('432','Catequese','S','2019-03-01 10:07:20','A','N','N','','2','ÂNGELA DA COSTA SILVA','61983036086','Meu nome é Steffany, tenho 21 anos, sou catequista da Paróquia São José- Taguatinga Norte, Já participei de alguns retiros, mas de carnaval vai ser  o primeiro.. Espero ter uma experiência maravilhosa e ter dias abençoados!','','Não posso tomar leite, nem comer queijo.. (Gastrite)','','37','346','405');

INSERT INTO TB_INSCRICAO VALUES('433','','S','2019-03-01 14:22:19','A','N','N','','8','ELZA MOREIRA DE SOUZA','61986397701','Gosto de jogos e música. :)','Não.','Sem restrição.','','37','139','142');

INSERT INTO TB_INSCRICAO VALUES('434','','S','2019-03-01 14:26:51','A','N','N','','2','LOURDES BARBOSA RAFACHO MOURA','61984349435','','','Não como carne, só ovo.','','37','347','406');

INSERT INTO TB_INSCRICAO VALUES('435','','N','2019-03-01 14:45:59','A','N','N','','8','GERALDO RABELO SUCUPIRA','61985560803','','','','','37','348','407');

INSERT INTO TB_INSCRICAO VALUES('436','','','','D','N','N','','0','','','','','','','0','0','0');

INSERT INTO TB_INSCRICAO VALUES('437','Gej Dom Bosco 5 anos','S','2019-12-26 21:41:25','A','S','S','','8','JOSE ARNALDO','61993003405','nem sei o que dizer sou eu mesmo','nem sai fora','só não como pouco','','38','1','409');

INSERT INTO TB_INSCRICAO VALUES('438','GEJ Dom Bosco  7 anos e 10 meses','S','2019-12-26 21:53:57','A','S','S','','3','ARNALDO PAI','61993003405','O que somos é presente de Deus; o que nós transformamos e nosso presente a Ele','Sim','Lactose','','38','37','410');

INSERT INTO TB_INSCRICAO VALUES('439','','N','2019-12-26 22:20:21','A','S','S','','3','MãE  LEDA','61992724933','','','','','38','36','411');

INSERT INTO TB_INSCRICAO VALUES('440','','S','2019-12-26 22:20:49','A','S','S','','3','ARNALDO PAI','61993003405','','','','','38','61','412');

INSERT INTO TB_INSCRICAO VALUES('441','Gej Dom Bosco/ 1 ano e 5 meses','S','2019-12-26 22:22:19','A','S','S','','5','MARIA ADILINA NUNES MARTINS','61984946694','','','','','38','242','413');

INSERT INTO TB_INSCRICAO VALUES('442','','N','2019-12-26 22:36:02','A','S','S','','3','LUCILENE AGUIAR','6133588725','','','','','38','31','414');

INSERT INTO TB_INSCRICAO VALUES('443','','S','2019-12-27 11:13:25','A','S','S','','3','MãE FABIANA NASCIMENTO ','61999615844','','','Castanhas, nozes, amêndoas e amendoim','','38','253','415');

INSERT INTO TB_INSCRICAO VALUES('444','Equipe Jovem Ajuc. Há quase 4 anos','S','2019-12-27 11:59:59','D','N','N','','4','MARIA JOANA','61992697228','Sempre fui católica, já participei de vários retiros. Atualmente estou na coordenação do Ajuc, juntamente com mais dois. Estudo, trabalho, moro com meus pais. Acho que é isto.','Não','Não','','38','48','416');

INSERT INTO TB_INSCRICAO VALUES('445','Grupo jovem adonai, 3 anos','S','2019-12-27 12:05:27','A','N','N','','6','VERONICA','6133578840','','Sim, para anêmia, antes do almoço e noretisterona no período da noite','Não','','38','349','417');

INSERT INTO TB_INSCRICAO VALUES('446','Grupo jovem fuc des de semtembro de 2019','S','2019-12-27 12:40:21','D','N','N','','9','MARISA ','61995753532','Sou uma pessoa reservada  e um pouco fechada','Sim\n\nMicrovila\n\nEnalapril\n\nGlifagem\n\nCálcio\n\nDepiridona\n\nVitamina  d\n\nOmeprazol','Não','','38','20','418');

INSERT INTO TB_INSCRICAO VALUES('447','Renovação carismática católica','S','2019-12-27 13:31:33','D','N','N','','6','MARIA JOSé ','61994174743','Lindo extrovertido','Não','Não','','38','56','419');

INSERT INTO TB_INSCRICAO VALUES('448','','N','2019-12-27 21:29:44','D','N','N','','3','ELIOMAR ENOQUE ','61985223191','','','','','38','69','421');

INSERT INTO TB_INSCRICAO VALUES('449','Fillis Matar Dei, 3 anos.','S','2019-12-27 21:36:31','D','N','N','','7','MARIA DAS GRAçAS ','61986380391','','Não','Não','','38','146','422');

INSERT INTO TB_INSCRICAO VALUES('450','','S','2019-12-27 23:13:57','D','N','N','','6','NEILDO DUARTE DE SOUSA','6132086444','','Não','Preciso me alimentar de 2 em 2 horas','','38','17','423');

INSERT INTO TB_INSCRICAO VALUES('451','','N','2019-12-28 17:30:45','A','N','N','','3','CARLA DOS SANTOS LOURENçO','61985602224','Tenho 16 anos, estudo no Claretiano - Centro Educacional Stella Maria, estou no 3° ano do ensino médio, sou católica, sou consagrada a Nossa Senhora de Fátima','Remédio controlado para ansiedade - toml todo dia às 06:10 na manhã\n\nAnticoncepcional - antes de dormir','','','38','351','424');

INSERT INTO TB_INSCRICAO VALUES('452','Grupo Jovem Adonai; 2 anos','S','2019-12-30 11:50:20','D','N','N','','3','MARILEIS GUIMARãES ','6184439650','','Não.','Não.','','38','304','425');

INSERT INTO TB_INSCRICAO VALUES('453','Sou catequista desde 2018 e participo do grupo das Guardiãs desde 2017','S','2019-12-30 12:37:53','A','N','N','','7','ANTONIA DULCE DA SILVA CHAVES','61991871618','','','','','38','352','426');

INSERT INTO TB_INSCRICAO VALUES('454','','N','2020-01-01 18:34:30','A','N','N','','7','NEIDE ','61993473576','','','','','38','353','427');

INSERT INTO TB_INSCRICAO VALUES('455','','N','2020-01-02 13:07:04','A','N','N','','9','IZA MARIA WENTZ','61996675508','Sou tímida','','Leite','','38','354','428');

INSERT INTO TB_INSCRICAO VALUES('456','Cerimoniarios - paróquia Jesus de Nazaré -- 4 anos','N','2020-01-03 00:48:45','D','N','N','','9','SOLANGE ','61992687082','','','','','38','194','429');

INSERT INTO TB_INSCRICAO VALUES('457','GEJ Dom Bosco, quase 2 anos','S','2020-01-03 20:20:34','D','S','N','','4','EDI','61986521612','','Levotiroxina 150g e loratadina 10g','','','38','25','430');

INSERT INTO TB_INSCRICAO VALUES('458','Faço parte do GEJ Dom Bosco a 1 ano e 7 meses','S','2020-01-04 09:28:28','A','S','S','','4','EDILEUZA ','61992474253','','Não.','Intolerância a Lactose.','','38','55','431');

INSERT INTO TB_INSCRICAO VALUES('459','Gej ( não sei quanto tempo )','S','2020-01-04 23:23:25','A','S','S','','8','DAYANE  MãE ','61995593633','Extrovertida, sincera as vezes até demais, falo muito, mas também gosto muito de ajudar sempre estou disposta há fazer o que me pedem. Convivo com facilidade com outras pessoas.','Sim, 1 comprimido durante a noite','Não','','38','109','432');

INSERT INTO TB_INSCRICAO VALUES('460','','N','2020-01-05 01:58:39','D','N','N','','5','NILVA','61981284313','Tenho 28 anos, sou empresária e concursanda. Tenho sentido vontade de buscar a Deus em uma experiência mais profunda. Sou apaixonada por animais, adoro ler, sou muito tímida.','Sim. Pela manhã tomo dois comprimidos para depressão e ansiedade e a noite tomo outro comprimido antes de dormir.','Não como carne (vegetariana)','','38','355','433');

INSERT INTO TB_INSCRICAO VALUES('461','','N','2020-01-05 05:45:51','D','N','N','','7','MARLEIDE JOSE RODRIGUES RAMOS ','6392292960','','Não','Não','','38','356','434');

INSERT INTO TB_INSCRICAO VALUES('462','Liturgia/ Música/Ejoc - 6 anos juntando todos','S','2020-01-06 11:33:35','D','N','N','','7','THIAGO SANTOS GONçALVES','61982896319','Extrovertida, empenhada, espontânea.','Não','Dieta vegetariana','','38','357','435');

INSERT INTO TB_INSCRICAO VALUES('463','GEJ DOM BOSCO / 4 ANOS','S','2020-01-06 17:25:53','A','S','S','','4','PAI','61992197688','SOU DO GEJ E SOU FELIZ','NÃO','NÃO COMO CARNE\n\nARROZ\n\nMACARRÃO\n\nDerivados de glúten e etc (Tenho intolerância)','','38','39','436');

INSERT INTO TB_INSCRICAO VALUES('464','Catequese','N','2020-01-07 13:00:50','A','N','N','','7','JOAQUINA','61985926274','','','','','38','358','437');

INSERT INTO TB_INSCRICAO VALUES('465','movimento joia, subgrupo menor, shalom, primeiro amor','S','2020-01-07 13:11:21','D','N','N','','6','ESTELA ','6133760260','sou carismática, minha vocação e viver para os jovens.\n\nps: devota de santa teresinha número 1 haha','não','não','','38','359','438');

INSERT INTO TB_INSCRICAO VALUES('466','Sou coroinha 5 Ano. Sou de um grupo Missionário chamado consagrado por amor 1 ano e to no processo pra entrar na comunidade colo de Deus 2 ano','S','2020-01-07 14:00:01','A','N','N','','9','ROSAMARIA MAE','61996135147','Sou uma pessoa muito vergonha, mais quando pedem pra fazer alguma coisa eu faço, gosto de aconselhar e conversar, gosto de rezar de ler de fazer as pessoas ficarem bem e estou em um processo de cura interior!','Não','Não','','38','256','439');

INSERT INTO TB_INSCRICAO VALUES('467','Gej Dom Bosco','S','2020-01-07 14:26:18','A','S','S','','2','ALBERTO LOURENçO ','61999873009','','','','','38','283','440');

INSERT INTO TB_INSCRICAO VALUES('468','Shalom','S','2020-01-07 15:43:25','A','N','N','','2','JOELMA LUIZ DA MOTA MENDONçA ','61984044255','','','','','38','264','441');

INSERT INTO TB_INSCRICAO VALUES('469','Gej Dom bosco 10 meses / Comunidade Católica Shalom 9 meses.','S','2020-01-07 16:03:13','A','S','S','','7','HELENA ','61986622428','','NÃO','NÃO','','38','244','442');

INSERT INTO TB_INSCRICAO VALUES('470','GEJ Dom Bosco. A uns 4 anos e pouco.','S','2020-01-07 18:56:42','A','S','S','','8','MARIA DE FáTIMA ','61991775916','Sou um rapaz bem tranquilo no meu dia-a-dia.','','','','38','189','443');

INSERT INTO TB_INSCRICAO VALUES('471','','N','2020-01-07 23:03:11','D','N','N','','2','FRANCISCA JACIRA PEREIRA DO NASCIMENTO ','61981714298','Sou uma pessoa em geral tímida e vergonhosa, porém extremamente extrovertida e comunicativa com as pessoas das quais me sinto confortável. Sou gentil e simpática, e muito amigável.','','','','38','360','444');

INSERT INTO TB_INSCRICAO VALUES('472','','N','2020-01-08 12:39:48','D','N','N','','4','ZILMA GOMES DE MORAIS ','61982298152','Sou uma pessoa muito comunicativa, extrovertida, mas gosto de ter meu espaço é sei a hora de brincar e hora de levar as coisas a sério. Eu participava do Grupo Missionário Consagrados Por Amor, estou afastada por causa de alguns problemas pessoais mas pretendo voltar logo. Gosto de conversar, cantar e conhecer pessoas novas.','Não','Intolerância à lactose','','38','361','445');

INSERT INTO TB_INSCRICAO VALUES('473','Liturgia, 4 anos','N','2020-01-08 13:34:09','A','N','N','','6','MAMãE','61996935497','','Sim, as 9h e as 21h','não','','38','362','446');

INSERT INTO TB_INSCRICAO VALUES('474','','S','2020-01-09 16:51:00','A','N','N','','2','APARECIDA DOS REIS GONçALVES BITTENCOURT ','61985502784','','Não','Não','','38','364','448');

INSERT INTO TB_INSCRICAO VALUES('475','','S','2020-01-09 16:57:16','D','N','N','','3','VISEM GOIANO FREIRE','61993161307','','Não','Nenhuma','','38','282','0');

INSERT INTO TB_INSCRICAO VALUES('476','Grupo jovem Oásis da Esperança (1 ano e dois meses) / Servos do altar (8 meses)','N','2020-01-12 15:26:13','A','N','N','','7','VERA LUCIA MATOS OLIVEIRA','61984807714','','','','','38','286','0');

INSERT INTO TB_INSCRICAO VALUES('477','gej / 11 meses','S','2020-01-13 19:46:19','A','S','S','','7','MARIA APARECIDA ','6134599830','','','Mostarda','','38','334','0');

INSERT INTO TB_INSCRICAO VALUES('478','Grupo de jovens , Ministério de música e renovação carismática .O grupo de jovens é recente 4 meses ,estou a 6 anos no ministério de música e 5 anos na renovação carismática.','N','2020-01-15 13:28:08','A','N','N','','5','MARIA ELZA MELO DUTRA ','6181250664','Sou uma pessoa muito alegre e alto astral, gosto de experimentar coisas novas ,adoro conversar e adquirir conhecimentos tanto da igreja como de qualquer outro assunto e sou uma pessoa muito aberta para novas sujestões ,sou um pouco mandona e chata as vezes .','Não','Não','','38','365','449');

INSERT INTO TB_INSCRICAO VALUES('479','Catequese','N','2020-01-17 00:19:30','D','N','N','','5','NEIDE ','61991621818','Sou uma pessoa bem tímida, já participei da pastoral de teatro confiar , agora estou na catequese.','Não','Não','','38','366','0');

INSERT INTO TB_INSCRICAO VALUES('480','Catequese 1 ano','S','2020-01-17 08:46:24','A','N','N','','4','EDILEUZA MãE','61992474253','','Não','Não','','38','367','450');

INSERT INTO TB_INSCRICAO VALUES('481','Acolidos por Maria','S','2020-01-18 10:04:56','A','N','N','','3','MINHA MãE ','61985552947','','Não','Queijo','','38','368','451');

INSERT INTO TB_INSCRICAO VALUES('482','','N','2020-01-18 16:55:37','A','N','N','','8','SANDRA CARMEN DA SILVA','61986287182','Sou tímido, simpático, não muito fácil de enturmar e sem frescuras','Não','Não','','38','369','0');

INSERT INTO TB_INSCRICAO VALUES('483','','S','2020-01-19 17:48:40','D','N','N','','3','LUCIA','61991352908','Buscando reencontrar a minha essência.','','','','38','298','0');

INSERT INTO TB_INSCRICAO VALUES('484','MAC (Movimento de Amizade com Cristo), EJC, AJUC, Ministério de Música, Liturgia Jovem','S','2020-01-19 20:46:19','A','N','N','','7','DUíLIO DOS SANTOS ','61996281500','Objetivo de ir ao retiro para fazer novas amizades e não ficar atoa no carnaval.','Trileptal (epilepsia) - 1 de manhã/ 2 a noite','Nada','','38','370','452');

INSERT INTO TB_INSCRICAO VALUES('485','Gej Dom Bosco 1 ano','S','2020-01-21 13:50:56','A','S','S','','4','ALEMIRA ','61992703294','Linda, dedicada e proativa','Não','Não','','38','127','0');

INSERT INTO TB_INSCRICAO VALUES('486','Semblante de Cristo, 3 anos','S','2020-01-21 14:29:12','A','N','N','','2','MINHA MãE ','61999486309','Nasci na igreja católica mas só há 4 anos atrás tive o meu primeiro encontro com cristo, desde ai caminho com ele e n\'Ele, em 2019 me consagrei a Virgem Maria o que tornou o meu viver mais dócil e fecundo. O tema desse retiro me alegra muito porque Santa Teresinha é uma santa para mim, de predileção, a tenho como minha melhor amiga do céu e tenho um carinho grandioso por ela.','Não','Não','','38','371','453');

INSERT INTO TB_INSCRICAO VALUES('487','Grupo jovem João Paulo II, há 3 anos, (o grupo está em reconstrução)','N','2020-01-21 20:12:39','A','N','N','','3','VILMA LUIZ DE SOUSA','61999584266','Bom, sou muito carismática, tudo me agrada, sempre ando com um sorriso no rosto. Entretanto, não me dou muito bem com meu pai, já escutei muitas coisas no passado que me afligiu e me magoou bastante, e o que sou hoje, a forma de falar e agir com ele é muitas vezes com minha mãe e meu irmão, são espelhos desses ocorrido, meu pai já me falou tantas barbaridades horríveis no passado sendo uma delas que não devia ter nascido, que sou uma pra nada, etc, que dói bastante, porém sei que a culpa não e dele pois ele sofreu muito no passado que influência no hoje dele, e sei que tem que ser por mim para mudar essa trajetória de dores do passado, lutar contra essa dor e minha maior batalha. E em eventos na qual participei sinto as mudanças acontecendo, inclusive com essa mágoa, pois ela já não e tão intensa como era antes. Minha vontade e me converter totalmente a Deus sem nenhuma reserva e assim poder converter minha família e resgatar almas para Deus, e poder dá meu testemunho de vida, que e bem longa.\n\nEnfim quero muito me aprofundar mais em Deus, quero ir além, conhecer mais, viver mais, sentir mais, e o principal ter mais força para não desistir nunca, adorar mais a Deus mesmo que seja na dor....\n\nBom como pelo visto também gosto mega de conversar, partilhar, interagir e servir a Deus também, pois de pouquinho e pouquinho Deus vai moldando meu Ser com a Mamãe, na qual eu sou totalmente Dela⛓️','Não uso nenhuma medicação','Nenhuma','','38','372','454');

INSERT INTO TB_INSCRICAO VALUES('488','Oásis da Esperança - Paroquia NS Aparecida -  há 3 anos','S','2020-01-22 09:15:13','A','N','N','','7','ALESSANDRA','61993302525','Um jovem buscando o céu.','não','não','','38','373','455');

INSERT INTO TB_INSCRICAO VALUES('489','GEJ 2 Anos','S','2020-01-22 12:59:54','A','S','S','','8','MARINEZ','6130130388','.','não','não','','38','237','0');

INSERT INTO TB_INSCRICAO VALUES('490','','N','2020-01-22 20:54:35','D','N','N','','3','CRISTIANE MãE ','61996654569','','Uso pela manhã- loratadina e anticoncepcional','Frutos do mar','','38','374','456');

INSERT INTO TB_INSCRICAO VALUES('491','EAC 4 anos','S','2020-01-22 20:59:02','D','N','N','','1','LUCIANO PAI','61996321206','','Não','Não','','38','375','457');

INSERT INTO TB_INSCRICAO VALUES('492','','N','2020-01-25 19:01:48','A','N','N','','5','ANA PAULA DE SOUZA','61998497773','','','Carne de porco','','38','376','458');

INSERT INTO TB_INSCRICAO VALUES('493','Gss-guardiãs do santíssimo sacramento','N','2020-01-25 21:44:33','D','N','N','','3','MÃE  ANA MARIA ','61998521650','Bom, eu me considero uma pessoa amigável super gente e bem tagarela kkk, bem simpática até, tenho muito amor no que eu faço,sou guardiã tenho muito amor em ficar perto de Jesus sou devota de Santa Terezinha e Santa Clara e Santa madre Teresa,  sou consagrada a nossa senhora a 1 ano ,amo beber café kkk e amo tbm as coisas simples','Sim,uso soro fisiológico e remédio para minha rinite alérgica os remédio e o zina é avamys','Não','','38','377','459');

INSERT INTO TB_INSCRICAO VALUES('494','','S','2020-01-26 18:40:57','A','S','S','','7','IVANILDES ','6134586671','','Não','Não','','38','59','0');

INSERT INTO TB_INSCRICAO VALUES('495','','S','2020-01-26 18:43:19','A','S','S','','8','IVANILDES ','6134586671','','Não','Não','','38','57','0');

INSERT INTO TB_INSCRICAO VALUES('496','Terço Jovem/ 2 anos','S','2020-01-26 21:50:36','D','N','N','','3','ELENITA TEIXEIRA ','61984519899','','','','','38','378','0');

INSERT INTO TB_INSCRICAO VALUES('497','Acólitos e Cerimôniarios,1 ano','N','2020-01-26 23:09:46','A','N','N','','3','SôNIA OLIVEIRA DE MORAES','61986175756','Sou feliz,tenho sede do amor de Deus todos os dias','','','','38','379','0');

INSERT INTO TB_INSCRICAO VALUES('498','','N','2020-01-27 10:18:06','A','N','N','','4','ROSANA FáTIMA ROSENI NARDI','61999984946','','Tegretol CR 200 mg tomar um comprimido as 7 hrs da manhã e dois comprimidos as 19 hrs da noite','','','38','183','0');

INSERT INTO TB_INSCRICAO VALUES('499','','S','2020-01-27 13:36:10','A','S','S','','9','ELIENE','6134594937','Sanguíneo/colérico, maaas sou gente boa !','Rivotril','','','38','72','460');

INSERT INTO TB_INSCRICAO VALUES('500','Recomeçar 2 dois ano','N','2020-01-28 19:22:09','A','N','N','','7','THEREZA','61996521404','Eu gosto do meus amigo da igreja\n\nGosto muito de fazer as ações e trabalha na ações','Não','Não','','38','380','461');

INSERT INTO TB_INSCRICAO VALUES('501','','N','2020-01-28 20:11:04','A','N','N','','5','NELI DA SILVA TEIXEIRA MARTINS','61996728431','Gosto de participar dos eventos da igreja,sou meio animada,preciso me reconectar a Deus,sou um pouco tímida,toco um pouco teclado e cajon,canto','','','','38','381','462');

INSERT INTO TB_INSCRICAO VALUES('502','recomeçar 1 ano cobertamor 1 ano','S','2020-01-28 21:37:10','D','N','N','','6','RENATA FARIAS','61996391144','','','','','38','382','463');

INSERT INTO TB_INSCRICAO VALUES('503','','N','2020-01-29 08:26:07','A','N','N','','9','MãE SALMA','61999451180','','','','','38','383','0');

INSERT INTO TB_INSCRICAO VALUES('504','Juventude/Grupo Jovem JUAM, PNSA-DF. 1 ano, 8 meses e alguns dias.','S','2020-01-29 23:31:04','A','N','N','','7','VALMINDA REIS FONTENELE','6133583273','Tenho 17 anos, gosto de participar dos eventos da Igreja, gosto de estudar(nem sempre), gosto de defender a Verdade a todo custo, gosto de animes.','','','','38','384','464');

INSERT INTO TB_INSCRICAO VALUES('505','','S','2020-01-30 14:10:27','A','N','N','','3','JULIANA ','6199074417','Em busca de crescimento pessoal, profissional e espiritual.','Não.','Não.','','38','385','0');

INSERT INTO TB_INSCRICAO VALUES('506','','N','2020-01-30 14:55:34','A','N','N','','8','NETINHO','61999428171','Sou tímido.','Não faço uso de medicação','Não tenho restrição alimentar','','38','386','0');

INSERT INTO TB_INSCRICAO VALUES('507','','N','2020-01-31 19:26:31','A','N','N','','7','ANTôNIO','6134830522','Sempre fui católica, e participo da liturgia de minha capela','Não','Não','','38','387','0');

INSERT INTO TB_INSCRICAO VALUES('508','Jauc ( 1 ano), Ânima ( 8 anos)','N','2020-02-02 22:43:00','A','N','N','','8','WESLEY DOS REIS TORRES ','61984023273','Não tenho muito o que dizer, mas tenho muito a oferecer!','Não','Não','','38','388','465');

INSERT INTO TB_INSCRICAO VALUES('509','Pastoral da música há 1 ano, coroinha há muito tempo, Grupo de oração há 1 ano.','N','2020-02-03 15:38:34','D','N','N','','3','GIOVANE JOSé ','61996995175','Sou uma pessoa engraçada , passei por cituações difíceis como a morte da minha avó , que ainda sinto saudade , quando dei crise de anciedade por 3 anos tive que passar por psicológo , crises muito fortes que não queria sair de casa , depois de alguns anos que passou, meu pai começou a cair na deprecão e nisso meu irmão começou a  fazer umas coisas erradas , meu irmão mais velho dando trabalho aí meu pai sai da deprecão e minha mãe entra e foi essa batalha... Só eu escutando meu pai desabafar comigo de um lado minha mãe do outro meu irmão mais velho do outro e meu irmão do meio do outro e eu sem poder falar nada a ninguém não estava aguentando mais , isso me dói até hoje , em pensar que foi muita preciso psicológica eu estava muito chateada e triste porém para não demonstrar fraqueza ou demonstrar para os outros e as pessoas me jugarem... Preferi ficar me silêncio e isso foi acabando comigo ... A hoje estou melhor sou uma garota engraçada legal , pelo menos pelo que eu escudo dos outros rsrsr.','Não , nenhum','Não , nenhum','','38','389','466');

INSERT INTO TB_INSCRICAO VALUES('510','Pastoral dos Acólitos há muito tempo, e Grupo jovem João Paulo ll que está em reconstrução há 2 meses','N','2020-02-03 17:19:21','A','N','N','','7','PAULO HENRIQUE','61996981622','Eu gosto de ver as pessoas feliz mesmo que eu esteja triste.eu Quero me estregar mais eu tenho medo de perder as amizades mais meu coração sente que precisa se entregar mais o medo me empede','Nenhum','Tolerante a lactose','','38','390','467');

INSERT INTO TB_INSCRICAO VALUES('511','Ajuc.2 anos','S','2020-02-04 02:12:54','A','N','N','','8','MáRCIA DE FáTIMA PAULINO ','61992285200','Quero ser Santo e viver no pique da SANTIDADE cabuloso mesmo.','Nenhuma','Nenhuma','','38','391','468');

INSERT INTO TB_INSCRICAO VALUES('512','','N','2020-02-04 09:32:12','A','N','N','','3','MARIA ADELIA','6134042137','Nesse momento um barco desgovernado, estou me reconectando e criando intimidade com Deus','Vitaminas','Lactose e glúten','','38','392','469');

INSERT INTO TB_INSCRICAO VALUES('513','','S','2020-02-04 17:36:58','A','N','N','','8','ANA PAULA','61998487773','Sou uma pessoa alegre e extrovertida','','','','38','393','470');

INSERT INTO TB_INSCRICAO VALUES('514','Grupo jovem Caminha da Cruz; Grupo missionário Consagrados por amor, a 4 meses e a 7 dias respectivamente.','S','2020-02-04 23:49:19','D','N','N','','7','IGOR JOSé DOS SANTOS ','61996304195','Sou Daniel, engenheiro civil, 25 anos. As coisas que mais gosto são: servir a Deus, cozinhar, cuidar da minha família e amigos, dançar, falar, sou bastante expressivo, namoro, gosto muito de musculação. Sou um garoto de família, e do bem.','Captopril 25 mg duas vezes ao dia, com intervalo de 8 a 12 h entre a medicação.','Crustáceos, principalmente camarão, lagosta e caranguejos.','','38','394','471');

INSERT INTO TB_INSCRICAO VALUES('515','','N','2020-02-06 00:46:26','D','N','N','','6','MARIANA NUNES ','0699811060','','Não nenhum','Não nenhuma','','38','395','472');

INSERT INTO TB_INSCRICAO VALUES('516','Jauc (5 anos)','S','2020-02-07 21:07:51','A','N','N','','6','SHIRLEY LOREN DE MORAIS DA SILVA','61985468711','Sou complexo e indeciso','Nops','Nops','','38','396','0');

INSERT INTO TB_INSCRICAO VALUES('517','','N','2020-02-08 07:21:38','A','N','N','','5','DULCINEIDE ','62996328935','24 anos, cirurgiã-dentista','Não','Alimentação vegana','','38','397','473');

INSERT INTO TB_INSCRICAO VALUES('518','GEJ Dom Bosco. 3 anos','S','2020-02-08 17:20:37','A','S','S','','3','EVANILDO DE SOUSA LEAL','61984846116','Membro do GEJ. Intercessora. Somente uma miserável procurando a graça de Deus!','-','-','','38','85','0');

INSERT INTO TB_INSCRICAO VALUES('519','Jauc, há 1 ano','S','2020-02-08 20:44:18','A','N','N','','1','SANDRA  MADRINHA ','61999659659','','Sim, tomo duas vezes ao dia. 12h e 00h','','','38','398','0');

INSERT INTO TB_INSCRICAO VALUES('520','','N','2020-02-09 00:46:46','D','N','N','','8','ZENIRA','61993536149','','','','','38','399','474');

INSERT INTO TB_INSCRICAO VALUES('521','','N','2020-02-09 19:00:18','A','N','N','','10','MãE MARIA IVANETE GONçALVELS DE SOUZA','9981868583','batizado,crismado ,catequista caminho neocatecumenal','sim olanzapina 10mg','não','','38','400','475');

INSERT INTO TB_INSCRICAO VALUES('522','','S','2020-02-09 23:21:08','A','S','S','','4','SELMéLIA','61991521943','','','','','38','252','0');

INSERT INTO TB_INSCRICAO VALUES('523','','N','2020-02-10 00:06:37','D','N','N','','9','PRISCILLA','71991928735','Tenho 63 anos gosto de retiro','Nao','Comida  gordurox','','38','401','0');

INSERT INTO TB_INSCRICAO VALUES('524','JPII','N','2020-02-10 15:59:38','A','N','N','','2','SILVANA GOMES DA SILVA ','61996162341','Sou  sou tímida mas tbm  extrovertida, animada, não sou tão boa porém canto,  etc','','','','38','402','476');

INSERT INTO TB_INSCRICAO VALUES('525','','N','2020-02-10 16:16:09','D','N','N','','4','GLEDS CRISTINE','6198459548','','','','','38','255','0');

INSERT INTO TB_INSCRICAO VALUES('526','Acólito á 7 anos','N','2020-02-10 21:23:34','A','N','N','','7','MAMãE ','61999495701','Sou simples, amo pessoas humildes, as vezes sou chato, gosto muito de está entre amigos, e é isso.','Não','Não','','38','403','477');

INSERT INTO TB_INSCRICAO VALUES('527','','N','2020-02-10 21:33:56','A','N','N','','8','OLINDA ','61996910311','','','','','38','275','478');

INSERT INTO TB_INSCRICAO VALUES('528','','N','2020-02-11 23:32:22','A','N','N','','6','MARLENE','61984330497','','Sim. Lexapro 15mg após o café da manhã\n\nGlifage após o almoço\n\nMolieri 19h30 da noite\n\nDoraren 40 minutos antes de dormir','Não','','38','404','479');

INSERT INTO TB_INSCRICAO VALUES('529','Grupo Jauc há 2 anos','S','2020-02-12 13:13:31','A','N','N','','3','VICTOR GABRIEL','6196741230','Sou católica e faço parte da coordenação do grupo Jauc da paróquia São José. Estou passando por um momento difícil na minha vida com muitas brigas internas e muitas mudanças acontecendo. Preciso amadurecer e me conhecer pra tomar algumas decisões importantes na minha vida. To me sentindo perdida real e preciso me retirar e pensar direito.','','Intolerância à lactose','','38','405','480');

INSERT INTO TB_INSCRICAO VALUES('530','Gej 1 ano e meio','S','2020-02-13 11:28:43','D','N','N','','1','MARCIA FRANCINA DE OLIVEIRA ','61985175039','Gosto de conhecer pessoa novas, sou um pouco na minha, tenho vergonha (até pegar intimidade)','Nao','Nao','','38','177','481');

INSERT INTO TB_INSCRICAO VALUES('531','','N','2020-02-13 17:28:20','A','N','N','','3','GERSON MATEUS','61999383819','Tenho 25 anos, solteira. Não tenho Filhos.\n\nMoro com meus pais.\n\nSou recém graduada em Agronomia, mas ainda não consegui meu primeiro emprego na área, porém trabalho na loja do meu tio de instrumentos musicais.\n\nEm Formosa sou da paroquia São Sebastião, e faço parte da Folia da Roça do Divino Espírito Santo.','Não','Não','','38','406','482');

INSERT INTO TB_INSCRICAO VALUES('532','','N','2020-02-13 17:38:03','A','N','N','','8','DAIANE CRISTINA','6133580333','','','','','38','407','483');

INSERT INTO TB_INSCRICAO VALUES('533','','N','2020-02-16 22:03:15','A','N','N','','3','FLáVIA ','61998141560','','','Intolerante a lactose','','38','408','484');

INSERT INTO TB_INSCRICAO VALUES('534','Grupo de Acólitos e Cerimoniários. Há 4 anos.','S','2020-02-16 22:54:17','A','N','N','','5','SôNIA OLIVEIRA MãE','61986664016','Gosto de aprender coisas novas, amo ler e fazer artesanatos. Sou apaixonada pelo meu serviço no presbitério. Faço faculdade e estou tentando me encontrar na Enfermagem. Procuro crescimento espiritual para adentrar novas moradas, mas para isso sinto que preciso de apoio, que penso que o Gej pode me dar através principalmente do Santifique-se!','Não.','Não.','','38','328','0');

INSERT INTO TB_INSCRICAO VALUES('535','','N','2020-02-17 18:24:30','A','N','N','','2','KARIN ','61998532027','Eu sou uma garota de 16 anos, sonhadora, cheia de planos e metas. Atualmente minha vida religiosa não tem estado em primeiro lugar, e acredito que estar nesse retiro pode me reaproximar de Deus.','Bombinha para asma','Não','','38','409','0');

INSERT INTO TB_INSCRICAO VALUES('536','','S','2020-02-17 19:39:23','A','N','N','','9','CLAUDIA LUCíA DE OLIVEIRA','6133576702','Gosto de conhecer coisas novas e estar na presença de meus amigos e familiares.','Não','Não','','38','410','485');

INSERT INTO TB_INSCRICAO VALUES('537','','N','2020-02-17 21:32:38','A','N','N','','7','MARCOS MANOEL','6196461963','Gosto muito de conversar! Dizem por aí que sou engraçada. Fã de chás e bons livros, e vídeos de comidinhas gostosas. É uma sede enorme de conhecer mais e mais a nossa Igreja!','Não.','Não.','','38','411','486');

INSERT INTO TB_INSCRICAO VALUES('538','Cristo acolhe','S','2020-02-18 08:53:48','A','N','N','','7','RENILDA ','61985364405','Tenho 20 anos.','Não','Não','','38','412','487');

INSERT INTO TB_INSCRICAO VALUES('539','','N','2020-02-18 11:26:16','A','N','N','','8','NATALíCIO','61995175025','Gosto de retiro de carnaval porque é um feriado longo,não tem nada pra fazer em casa,é gosto de participar sempre.','','','','38','305','488');

INSERT INTO TB_INSCRICAO VALUES('540','Pastoral da Criança','N','2020-02-18 11:38:03','A','N','N','','3','LENICE MAURíCIO BARROSO','61992961043','Tradutora e professora de línguas particular','Leucogem para baixa imunidade.','Não','','38','413','0');

INSERT INTO TB_INSCRICAO VALUES('541','Jovens e adolescentes Unidos a Cristo (JAUC) 5 anos.','S','2020-02-18 12:46:38','A','N','N','','10','PATRICIA MãE ','6133541747','','Não','Não','','38','414','0');

INSERT INTO TB_INSCRICAO VALUES('542','GEJ Dom Bosco por 4','N','2020-02-18 13:45:00','A','N','N','','7','JOANA D ARC DE FRANçA OLIVEIRA','61985315392','Sou inteligente, educado..','Nenhum','Nenhuma','','38','415','0');

INSERT INTO TB_INSCRICAO VALUES('543','','S','2020-02-18 14:18:39','A','N','N','','4','MAURO DA SILVA OLIVEIRA','61986298391','Alegre, esforçada, muito divertida e linda é claro rsrsrs...','Anti-inflamatório e Dipirona (para pé).','Nenhuma','','38','64','0');

INSERT INTO TB_INSCRICAO VALUES('544','','N','2020-02-19 00:34:44','D','N','N','','8','MARIA HELENA DOS SANTOS SOUSA','61992053385','Gosto de música, e De lanche','Não','Não','','38','416','489');

INSERT INTO TB_INSCRICAO VALUES('545','Justo','N','2020-02-19 11:28:42','A','N','N','','9','CRISTINA','61984823219','Comunicativo, dedicado, aberto a novos aprendizados.','Amoxilina de 12 em 12 horas, 10 da manhã e 10 da noite','','','38','325','0');

INSERT INTO TB_INSCRICAO VALUES('546','','N','2020-02-19 12:03:18','A','N','N','','10','SELMA','6133710980','Em busca de um aprofundamento pessoal com Deus!','Remédio de pressão alta','Nao','','38','417','0');

INSERT INTO TB_INSCRICAO VALUES('547','','N','2020-02-19 21:33:15','A','N','N','','8','MENINA DAS IRMãS','6134592144','','','','','38','418','0');

INSERT INTO TB_INSCRICAO VALUES('548','','N','2020-02-20 09:25:10','D','N','N','','7','REGINALDO ','61998137341','','','','','38','419','0');

INSERT INTO TB_INSCRICAO VALUES('549','','N','2020-02-20 10:26:02','A','N','N','','7','FRANCK','61996371489','','','','','38','420','0');

INSERT INTO TB_INSCRICAO VALUES('550','','N','2020-02-20 11:25:06','A','N','N','','6','MáRCIA ','61999856941','','Não','Não','','38','421','0');

INSERT INTO TB_INSCRICAO VALUES('551','','N','2020-02-20 11:57:29','A','N','N','','6','ANGISLANE LUZIA ALBERNAZ','61984346460','Sou espírita e tenho uma conexão muito forte com a religião por causa de problemas depressivos, pois foi quando recebi mais sinais.','Remédios pra ansiedade','Não','','38','422','490');

INSERT INTO TB_INSCRICAO VALUES('552','','N','2020-02-20 12:29:27','A','N','N','','3','ANGISLANE LUZIA ALBERNAZ','61984346460','','Não','Não','','38','423','491');

INSERT INTO TB_INSCRICAO VALUES('553','','S','2020-02-20 14:29:26','A','N','N','','7','VIVIANE MONTEIRO','61985153058','Sou casado pai de 4 filhos católico praticante, fiz o querigma, ecc, renovação carismatica, visitas à casa de recuperação.','Benicar para pressão alta','FRUTOS DO MAR','','38','424','492');

INSERT INTO TB_INSCRICAO VALUES('554','','N','2020-02-20 21:44:41','A','N','N','','8','MARIA ORIZALBA VERAS COREIA ','6133594716','Sou uma pessoa difícil, e através desse retiro ter uma mudança de vida','','','','38','425','0');

INSERT INTO TB_INSCRICAO VALUES('555','','N','2020-02-21 08:31:13','A','N','N','','5','CLEITON','86999758770','Sou uma pessoa tranquila  gosto e fazer o bem,busco está alinhada ao Senhor,embora seja difícil.','Não','Não','','38','426','0');

INSERT INTO TB_INSCRICAO VALUES('556','grupo da liturgia na comunidade Joao Paulo II no Mangueiral','N','2020-02-21 11:54:13','A','N','N','','7','RAFAELLA MEDEIROS SILVA','61991703802','','sim,','','','38','427','0');

INSERT INTO TB_INSCRICAO VALUES('557','','N','2020-02-21 18:21:10','A','N','N','','7','GLAUCIA','61996858953','Pouco fechada, não abro meus sentimentos com as pessoas','Não','Não','','38','428','493');

INSERT INTO TB_INSCRICAO VALUES('558','','N','2022-12-12 23:34:12','A','N','N','','3','LLLRRJJ','24242433235','','','','','38','147','0');

INSERT INTO TB_INSCRICAO VALUES('559','','N','2022-12-12 23:50:21','A','N','N','','8','LLLRRJJ','3232142142','','','','','39','1','0');

INSERT INTO TB_INSCRICAO VALUES('560','','N','2022-12-13 23:45:33','A','N','N','','6','LLLRRJJ','11222345563','','','','','39','418','0');




DROP TABLE IF EXISTS TB_MEMBRO;


CREATE TABLE `TB_MEMBRO` (
  `co_membro` int(11) NOT NULL AUTO_INCREMENT,
  `st_estuda` varchar(1) DEFAULT NULL,
  `st_trabalha` varchar(1) DEFAULT NULL,
  `ds_conhecimento` text DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL,
  `st_batizado` varchar(1) DEFAULT NULL,
  `st_eucaristia` varchar(1) DEFAULT NULL,
  `st_crisma` varchar(1) DEFAULT NULL,
  `co_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`co_membro`,`co_pessoa`),
  KEY `fk_TB_MEMBRO_TB_PESSOA1_idx` (`co_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_MODULO;


CREATE TABLE `TB_MODULO` (
  `co_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `no_modulo` varchar(50) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_projeto` int(11) NOT NULL,
  PRIMARY KEY (`co_modulo`,`co_projeto`),
  KEY `fk_TB_MODULO_TB_PROJETO1_idx` (`co_projeto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


INSERT INTO TB_MODULO VALUES('1','Sistema','2019-03-27 11:15:00','1');

INSERT INTO TB_MODULO VALUES('2','Site','2019-04-05 17:08:50','1');

INSERT INTO TB_MODULO VALUES('3','Loja','2019-04-05 17:09:06','1');




DROP TABLE IF EXISTS TB_PACOTE;


CREATE TABLE `TB_PACOTE` (
  `co_pacote` int(11) NOT NULL AUTO_INCREMENT,
  `no_pacote` varchar(50) DEFAULT NULL,
  `ds_descricao` text DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_lancamento` date DEFAULT NULL,
  PRIMARY KEY (`co_pacote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PAGAMENTO;


CREATE TABLE `TB_PAGAMENTO` (
  `co_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_total` decimal(8,2) DEFAULT NULL,
  `nu_valor_pago` decimal(8,2) DEFAULT NULL,
  `nu_valor_desconto` decimal(8,2) DEFAULT NULL,
  `nu_parcelas` int(2) DEFAULT NULL,
  `tp_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciado / I - Iniciado / C - Concluido',
  `ds_observacao` text DEFAULT NULL,
  `co_inscricao` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`co_pagamento`,`co_inscricao`),
  KEY `fk_TB_PAGAMENTO_TB_INSCRICAO1_idx` (`co_inscricao`)
) ENGINE=InnoDB AUTO_INCREMENT=569 DEFAULT CHARSET=utf8;


INSERT INTO TB_PAGAMENTO VALUES('1','160.00','160.00','0.00','2','C','','1');

INSERT INTO TB_PAGAMENTO VALUES('2','150.00','0.00','0.00','1','N','','2');

INSERT INTO TB_PAGAMENTO VALUES('3','150.00','60.00','0.00','2','I','','3');

INSERT INTO TB_PAGAMENTO VALUES('4','150.00','150.00','0.00','1','C','','4');

INSERT INTO TB_PAGAMENTO VALUES('5','150.00','150.00','0.00','1','C','','5');

INSERT INTO TB_PAGAMENTO VALUES('6','150.00','150.00','0.00','1','C','','6');

INSERT INTO TB_PAGAMENTO VALUES('7','150.00','150.00','0.00','1','C','','7');

INSERT INTO TB_PAGAMENTO VALUES('8','150.00','150.00','0.00','2','C','','8');

INSERT INTO TB_PAGAMENTO VALUES('9','150.00','80.00','0.00','2','I','','9');

INSERT INTO TB_PAGAMENTO VALUES('10','150.00','0.00','0.00','1','N','','10');

INSERT INTO TB_PAGAMENTO VALUES('11','150.00','150.00','0.00','1','C','','12');

INSERT INTO TB_PAGAMENTO VALUES('12','150.00','150.00','0.00','2','C','','13');

INSERT INTO TB_PAGAMENTO VALUES('14','150.00','150.00','0.00','1','C','','14');

INSERT INTO TB_PAGAMENTO VALUES('15','150.00','150.00','0.00','1','C','','15');

INSERT INTO TB_PAGAMENTO VALUES('16','160.00','160.00','0.00','1','C','','16');

INSERT INTO TB_PAGAMENTO VALUES('17','150.00','0.00','0.00','1','N','','17');

INSERT INTO TB_PAGAMENTO VALUES('18','150.00','150.00','0.00','1','C','','18');

INSERT INTO TB_PAGAMENTO VALUES('19','150.00','0.00','0.00','1','N','','23');

INSERT INTO TB_PAGAMENTO VALUES('20','150.00','0.00','0.00','1','N','','19');

INSERT INTO TB_PAGAMENTO VALUES('21','150.00','0.00','0.00','1','N','','20');

INSERT INTO TB_PAGAMENTO VALUES('22','150.00','150.00','0.00','1','C','','21');

INSERT INTO TB_PAGAMENTO VALUES('23','150.00','100.00','0.00','2','I','','22');

INSERT INTO TB_PAGAMENTO VALUES('24','150.00','150.00','0.00','2','C','','25');

INSERT INTO TB_PAGAMENTO VALUES('25','150.00','150.00','0.00','1','C','','24');

INSERT INTO TB_PAGAMENTO VALUES('26','160.00','0.00','0.00','1','N','','26');

INSERT INTO TB_PAGAMENTO VALUES('27','150.00','150.00','0.00','2','C','','27');

INSERT INTO TB_PAGAMENTO VALUES('28','150.00','0.00','0.00','1','N','','28');

INSERT INTO TB_PAGAMENTO VALUES('29','150.00','150.00','0.00','2','C','','29');

INSERT INTO TB_PAGAMENTO VALUES('30','150.00','0.00','0.00','1','N','','30');

INSERT INTO TB_PAGAMENTO VALUES('31','150.00','0.00','0.00','1','N','','31');

INSERT INTO TB_PAGAMENTO VALUES('32','150.00','150.00','0.00','2','C','','32');

INSERT INTO TB_PAGAMENTO VALUES('34','150.00','150.00','0.00','1','C','','33');

INSERT INTO TB_PAGAMENTO VALUES('35','150.00','150.00','0.00','1','C','','34');

INSERT INTO TB_PAGAMENTO VALUES('37','150.00','150.00','0.00','1','C','','35');

INSERT INTO TB_PAGAMENTO VALUES('42','160.00','150.00','0.00','1','C','','36');

INSERT INTO TB_PAGAMENTO VALUES('43','150.00','0.00','0.00','1','N','','37');

INSERT INTO TB_PAGAMENTO VALUES('44','150.00','0.00','0.00','1','N','','38');

INSERT INTO TB_PAGAMENTO VALUES('45','150.00','150.00','0.00','2','C','','39');

INSERT INTO TB_PAGAMENTO VALUES('46','150.00','150.00','0.00','1','C','','40');

INSERT INTO TB_PAGAMENTO VALUES('47','150.00','0.00','0.00','1','N','','41');

INSERT INTO TB_PAGAMENTO VALUES('48','160.00','150.00','0.00','1','C','','42');

INSERT INTO TB_PAGAMENTO VALUES('49','160.00','0.00','0.00','1','N','','43');

INSERT INTO TB_PAGAMENTO VALUES('50','150.00','150.00','0.00','1','C','','44');

INSERT INTO TB_PAGAMENTO VALUES('51','150.00','150.00','0.00','2','C','','45');

INSERT INTO TB_PAGAMENTO VALUES('52','150.00','150.00','0.00','1','C','','46');

INSERT INTO TB_PAGAMENTO VALUES('53','0.00','0.00','0.00','1','C','','47');

INSERT INTO TB_PAGAMENTO VALUES('54','150.00','160.00','0.00','1','C','','48');

INSERT INTO TB_PAGAMENTO VALUES('55','150.00','150.00','0.00','1','C','','49');

INSERT INTO TB_PAGAMENTO VALUES('56','150.00','50.00','0.00','2','I','','50');

INSERT INTO TB_PAGAMENTO VALUES('57','150.00','0.00','0.00','1','N','','51');

INSERT INTO TB_PAGAMENTO VALUES('58','150.00','0.00','0.00','1','N','','52');

INSERT INTO TB_PAGAMENTO VALUES('59','160.00','0.00','0.00','1','N','','53');

INSERT INTO TB_PAGAMENTO VALUES('60','150.00','0.00','0.00','1','N','','54');

INSERT INTO TB_PAGAMENTO VALUES('61','160.00','0.00','0.00','1','N','','56');

INSERT INTO TB_PAGAMENTO VALUES('62','150.00','0.00','0.00','1','N','','57');

INSERT INTO TB_PAGAMENTO VALUES('63','150.00','0.00','0.00','1','N','','55');

INSERT INTO TB_PAGAMENTO VALUES('64','150.00','0.00','0.00','1','N','','58');

INSERT INTO TB_PAGAMENTO VALUES('65','150.00','150.00','0.00','1','C','','59');

INSERT INTO TB_PAGAMENTO VALUES('66','150.00','0.00','0.00','1','N','','60');

INSERT INTO TB_PAGAMENTO VALUES('67','150.00','150.00','0.00','1','C','','61');

INSERT INTO TB_PAGAMENTO VALUES('68','160.00','160.00','0.00','1','C','','62');

INSERT INTO TB_PAGAMENTO VALUES('69','160.00','160.00','0.00','1','C','','63');

INSERT INTO TB_PAGAMENTO VALUES('70','160.00','160.00','0.00','1','C','','64');

INSERT INTO TB_PAGAMENTO VALUES('71','150.00','0.00','0.00','1','N','','65');

INSERT INTO TB_PAGAMENTO VALUES('72','150.00','0.00','0.00','1','N','','66');

INSERT INTO TB_PAGAMENTO VALUES('73','150.00','0.00','0.00','1','N','','67');

INSERT INTO TB_PAGAMENTO VALUES('74','150.00','150.00','0.00','1','C','','68');

INSERT INTO TB_PAGAMENTO VALUES('75','160.00','150.00','0.00','1','C','','69');

INSERT INTO TB_PAGAMENTO VALUES('76','150.00','0.00','0.00','1','N','','70');

INSERT INTO TB_PAGAMENTO VALUES('77','150.00','150.00','0.00','1','C','','71');

INSERT INTO TB_PAGAMENTO VALUES('78','150.00','0.00','0.00','1','N','','72');

INSERT INTO TB_PAGAMENTO VALUES('79','150.00','0.00','0.00','1','N','','73');

INSERT INTO TB_PAGAMENTO VALUES('80','150.00','150.00','0.00','1','C','','74');

INSERT INTO TB_PAGAMENTO VALUES('81','150.00','150.00','0.00','1','C','','75');

INSERT INTO TB_PAGAMENTO VALUES('82','0.00','0.00','0.00','1','C','','76');

INSERT INTO TB_PAGAMENTO VALUES('83','150.00','0.00','0.00','1','N','','77');

INSERT INTO TB_PAGAMENTO VALUES('84','160.00','160.00','0.00','1','C','','78');

INSERT INTO TB_PAGAMENTO VALUES('85','150.00','0.00','0.00','1','N','','79');

INSERT INTO TB_PAGAMENTO VALUES('87','150.00','0.00','0.00','2','N','','81');

INSERT INTO TB_PAGAMENTO VALUES('88','150.00','0.00','0.00','1','N','','82');

INSERT INTO TB_PAGAMENTO VALUES('89','150.00','150.00','0.00','1','C','','83');

INSERT INTO TB_PAGAMENTO VALUES('90','160.00','160.00','0.00','1','C','','84');

INSERT INTO TB_PAGAMENTO VALUES('91','160.00','150.00','0.00','1','C','','85');

INSERT INTO TB_PAGAMENTO VALUES('92','160.00','160.00','0.00','1','C','','86');

INSERT INTO TB_PAGAMENTO VALUES('93','160.00','160.00','0.00','1','C','','87');

INSERT INTO TB_PAGAMENTO VALUES('94','150.00','150.00','0.00','1','C','','88');

INSERT INTO TB_PAGAMENTO VALUES('95','0.00','0.00','0.00','1','C','','89');

INSERT INTO TB_PAGAMENTO VALUES('96','160.00','160.00','0.00','1','C','','90');

INSERT INTO TB_PAGAMENTO VALUES('97','160.00','150.00','0.00','1','C','','91');

INSERT INTO TB_PAGAMENTO VALUES('98','150.00','150.00','0.00','3','C','','92');

INSERT INTO TB_PAGAMENTO VALUES('99','160.00','0.00','0.00','1','N','','93');

INSERT INTO TB_PAGAMENTO VALUES('100','150.00','0.00','0.00','1','N','','94');

INSERT INTO TB_PAGAMENTO VALUES('101','160.00','0.00','0.00','1','N','','95');

INSERT INTO TB_PAGAMENTO VALUES('102','150.00','150.00','0.00','1','C','','97');

INSERT INTO TB_PAGAMENTO VALUES('103','150.00','150.00','0.00','1','C','','96');

INSERT INTO TB_PAGAMENTO VALUES('104','150.00','150.00','0.00','1','C','','98');

INSERT INTO TB_PAGAMENTO VALUES('105','150.00','150.00','0.00','1','C','','99');

INSERT INTO TB_PAGAMENTO VALUES('106','160.00','160.00','0.00','1','C','','100');

INSERT INTO TB_PAGAMENTO VALUES('107','160.00','160.00','0.00','1','C','','101');

INSERT INTO TB_PAGAMENTO VALUES('108','150.00','160.00','0.00','1','C','','102');

INSERT INTO TB_PAGAMENTO VALUES('109','160.00','150.00','0.00','1','C','','103');

INSERT INTO TB_PAGAMENTO VALUES('110','160.00','0.00','0.00','1','N','','104');

INSERT INTO TB_PAGAMENTO VALUES('111','150.00','160.00','0.00','1','C','','105');

INSERT INTO TB_PAGAMENTO VALUES('112','150.00','75.00','0.00','2','I','','106');

INSERT INTO TB_PAGAMENTO VALUES('113','150.00','150.00','0.00','1','C','','107');

INSERT INTO TB_PAGAMENTO VALUES('114','150.00','0.00','0.00','1','N','','108');

INSERT INTO TB_PAGAMENTO VALUES('115','160.00','160.00','0.00','1','C','','109');

INSERT INTO TB_PAGAMENTO VALUES('116','150.00','150.00','0.00','1','C','','110');

INSERT INTO TB_PAGAMENTO VALUES('117','150.00','150.00','0.00','1','C','','111');

INSERT INTO TB_PAGAMENTO VALUES('118','150.00','150.00','0.00','2','C','','112');

INSERT INTO TB_PAGAMENTO VALUES('119','150.00','150.00','0.00','1','C','','113');

INSERT INTO TB_PAGAMENTO VALUES('120','160.00','160.00','0.00','1','C','','114');

INSERT INTO TB_PAGAMENTO VALUES('121','0.00','0.00','0.00','1','C','','115');

INSERT INTO TB_PAGAMENTO VALUES('122','150.00','150.00','0.00','2','C','','116');

INSERT INTO TB_PAGAMENTO VALUES('123','150.00','150.00','0.00','1','C','','117');

INSERT INTO TB_PAGAMENTO VALUES('124','150.00','150.00','0.00','1','C','','118');

INSERT INTO TB_PAGAMENTO VALUES('125','160.00','0.00','0.00','1','N','','119');

INSERT INTO TB_PAGAMENTO VALUES('126','160.00','160.00','0.00','1','C','','121');

INSERT INTO TB_PAGAMENTO VALUES('127','150.00','150.00','0.00','1','C','','122');

INSERT INTO TB_PAGAMENTO VALUES('128','150.00','0.00','0.00','1','N','','120');

INSERT INTO TB_PAGAMENTO VALUES('129','150.00','150.00','0.00','1','C','','123');

INSERT INTO TB_PAGAMENTO VALUES('131','150.00','0.00','0.00','1','N','','124');

INSERT INTO TB_PAGAMENTO VALUES('132','160.00','160.00','0.00','1','C','','125');

INSERT INTO TB_PAGAMENTO VALUES('133','160.00','160.00','0.00','1','C','','126');

INSERT INTO TB_PAGAMENTO VALUES('134','150.00','0.00','0.00','1','N','','127');

INSERT INTO TB_PAGAMENTO VALUES('135','150.00','150.00','0.00','1','C','','128');

INSERT INTO TB_PAGAMENTO VALUES('136','160.00','160.00','0.00','1','C','','129');

INSERT INTO TB_PAGAMENTO VALUES('137','160.00','160.00','0.00','1','C','','130');

INSERT INTO TB_PAGAMENTO VALUES('140','150.00','80.00','0.00','1','I','','131');

INSERT INTO TB_PAGAMENTO VALUES('141','160.00','160.00','0.00','1','C','','133');

INSERT INTO TB_PAGAMENTO VALUES('142','160.00','160.00','0.00','1','C','','134');

INSERT INTO TB_PAGAMENTO VALUES('143','150.00','150.00','0.00','1','C','','135');

INSERT INTO TB_PAGAMENTO VALUES('144','150.00','0.00','0.00','1','N','','136');

INSERT INTO TB_PAGAMENTO VALUES('145','150.00','0.00','0.00','1','N','','137');

INSERT INTO TB_PAGAMENTO VALUES('146','150.00','80.00','0.00','1','I','','132');

INSERT INTO TB_PAGAMENTO VALUES('147','160.00','160.00','0.00','1','C','','138');

INSERT INTO TB_PAGAMENTO VALUES('148','150.00','0.00','0.00','1','N','','139');

INSERT INTO TB_PAGAMENTO VALUES('149','150.00','150.00','0.00','1','C','','140');

INSERT INTO TB_PAGAMENTO VALUES('150','150.00','150.00','0.00','1','C','','141');

INSERT INTO TB_PAGAMENTO VALUES('151','150.00','150.00','0.00','1','C','','142');

INSERT INTO TB_PAGAMENTO VALUES('152','160.00','160.00','0.00','1','C','','144');

INSERT INTO TB_PAGAMENTO VALUES('153','160.00','160.00','0.00','1','C','','143');

INSERT INTO TB_PAGAMENTO VALUES('154','130.00','130.00','0.00','1','C','','145');

INSERT INTO TB_PAGAMENTO VALUES('155','160.00','160.00','0.00','1','C','','146');

INSERT INTO TB_PAGAMENTO VALUES('156','150.00','150.00','0.00','1','C','','147');

INSERT INTO TB_PAGAMENTO VALUES('157','150.00','150.00','0.00','1','C','','148');

INSERT INTO TB_PAGAMENTO VALUES('158','150.00','150.00','0.00','1','C','','149');

INSERT INTO TB_PAGAMENTO VALUES('159','150.00','150.00','0.00','1','C','','150');

INSERT INTO TB_PAGAMENTO VALUES('160','150.00','150.00','0.00','1','C','','152');

INSERT INTO TB_PAGAMENTO VALUES('161','150.00','150.00','0.00','1','C','','153');

INSERT INTO TB_PAGAMENTO VALUES('162','150.00','0.00','0.00','1','N','','151');

INSERT INTO TB_PAGAMENTO VALUES('163','150.00','150.00','0.00','1','C','','154');

INSERT INTO TB_PAGAMENTO VALUES('164','150.00','0.00','0.00','1','N','','155');

INSERT INTO TB_PAGAMENTO VALUES('165','160.00','160.00','0.00','1','C','','156');

INSERT INTO TB_PAGAMENTO VALUES('166','130.00','130.00','0.00','1','C','','157');

INSERT INTO TB_PAGAMENTO VALUES('167','150.00','150.00','0.00','1','C','','158');

INSERT INTO TB_PAGAMENTO VALUES('168','150.00','150.00','0.00','1','C','','159');

INSERT INTO TB_PAGAMENTO VALUES('169','150.00','150.00','0.00','1','C','','160');

INSERT INTO TB_PAGAMENTO VALUES('170','160.00','150.00','0.00','1','C','','161');

INSERT INTO TB_PAGAMENTO VALUES('171','150.00','150.00','0.00','1','C','','162');

INSERT INTO TB_PAGAMENTO VALUES('172','0.00','0.00','0.00','1','C','','163');

INSERT INTO TB_PAGAMENTO VALUES('173','150.00','0.00','0.00','1','N','','164');

INSERT INTO TB_PAGAMENTO VALUES('174','150.00','0.00','0.00','1','N','','165');

INSERT INTO TB_PAGAMENTO VALUES('175','160.00','150.00','0.00','1','C','','166');

INSERT INTO TB_PAGAMENTO VALUES('176','150.00','150.00','0.00','1','C','','167');

INSERT INTO TB_PAGAMENTO VALUES('177','160.00','160.00','0.00','1','C','','168');

INSERT INTO TB_PAGAMENTO VALUES('178','150.00','150.00','0.00','1','C','','169');

INSERT INTO TB_PAGAMENTO VALUES('179','150.00','160.00','0.00','1','C','','170');

INSERT INTO TB_PAGAMENTO VALUES('180','150.00','160.00','0.00','1','C','','171');

INSERT INTO TB_PAGAMENTO VALUES('181','160.00','160.00','0.00','1','C','','172');

INSERT INTO TB_PAGAMENTO VALUES('182','150.00','0.00','0.00','1','N','','173');

INSERT INTO TB_PAGAMENTO VALUES('183','150.00','150.00','0.00','1','C','','174');

INSERT INTO TB_PAGAMENTO VALUES('184','150.00','160.00','0.00','1','C','','175');

INSERT INTO TB_PAGAMENTO VALUES('185','150.00','150.00','0.00','1','C','','176');

INSERT INTO TB_PAGAMENTO VALUES('186','150.00','160.00','0.00','1','C','','177');

INSERT INTO TB_PAGAMENTO VALUES('187','150.00','150.00','0.00','1','C','','178');

INSERT INTO TB_PAGAMENTO VALUES('188','150.00','150.00','0.00','1','C','','179');

INSERT INTO TB_PAGAMENTO VALUES('189','160.00','0.00','0.00','1','N','','180');

INSERT INTO TB_PAGAMENTO VALUES('190','150.00','0.00','0.00','1','N','','181');

INSERT INTO TB_PAGAMENTO VALUES('191','150.00','0.00','0.00','1','N','','182');

INSERT INTO TB_PAGAMENTO VALUES('192','160.00','115.00','0.00','2','I','','183');

INSERT INTO TB_PAGAMENTO VALUES('193','160.00','0.00','0.00','1','N','','184');

INSERT INTO TB_PAGAMENTO VALUES('194','150.00','0.00','0.00','1','N','','185');

INSERT INTO TB_PAGAMENTO VALUES('195','160.00','0.00','0.00','1','N','','186');

INSERT INTO TB_PAGAMENTO VALUES('196','160.00','0.00','0.00','1','C','','187');

INSERT INTO TB_PAGAMENTO VALUES('197','150.00','160.00','0.00','1','C','','188');

INSERT INTO TB_PAGAMENTO VALUES('198','150.00','0.00','0.00','1','N','','189');

INSERT INTO TB_PAGAMENTO VALUES('199','150.00','0.00','0.00','1','N','','190');

INSERT INTO TB_PAGAMENTO VALUES('200','150.00','0.00','0.00','1','N','','191');

INSERT INTO TB_PAGAMENTO VALUES('201','150.00','150.00','0.00','1','C','','192');

INSERT INTO TB_PAGAMENTO VALUES('202','150.00','0.00','0.00','1','N','','193');

INSERT INTO TB_PAGAMENTO VALUES('203','150.00','150.00','0.00','1','C','','194');

INSERT INTO TB_PAGAMENTO VALUES('204','150.00','0.00','0.00','1','N','','195');

INSERT INTO TB_PAGAMENTO VALUES('205','150.00','0.00','0.00','1','N','','196');

INSERT INTO TB_PAGAMENTO VALUES('206','150.00','150.00','0.00','1','C','','197');

INSERT INTO TB_PAGAMENTO VALUES('207','150.00','0.00','0.00','1','N','','198');

INSERT INTO TB_PAGAMENTO VALUES('208','160.00','150.00','0.00','1','C','','199');

INSERT INTO TB_PAGAMENTO VALUES('209','70.00','0.00','0.00','1','N','','200');

INSERT INTO TB_PAGAMENTO VALUES('210','70.00','150.00','0.00','1','C','','201');

INSERT INTO TB_PAGAMENTO VALUES('211','150.00','150.00','0.00','1','C','','202');

INSERT INTO TB_PAGAMENTO VALUES('212','160.00','0.00','0.00','1','N','','203');

INSERT INTO TB_PAGAMENTO VALUES('213','150.00','0.00','0.00','1','N','','204');

INSERT INTO TB_PAGAMENTO VALUES('214','80.00','60.00','20.00','1','C','','205');

INSERT INTO TB_PAGAMENTO VALUES('215','80.00','80.00','0.00','1','C','','206');

INSERT INTO TB_PAGAMENTO VALUES('216','80.00','80.00','0.00','1','C','','207');

INSERT INTO TB_PAGAMENTO VALUES('217','80.00','80.00','0.00','1','C','','208');

INSERT INTO TB_PAGAMENTO VALUES('218','80.00','80.00','0.00','1','C','','209');

INSERT INTO TB_PAGAMENTO VALUES('219','80.00','80.00','0.00','1','C','','210');

INSERT INTO TB_PAGAMENTO VALUES('220','80.00','40.00','0.00','2','I','','211');

INSERT INTO TB_PAGAMENTO VALUES('221','80.00','80.00','0.00','1','C','','212');

INSERT INTO TB_PAGAMENTO VALUES('222','80.00','0.00','0.00','1','N','','213');

INSERT INTO TB_PAGAMENTO VALUES('223','80.00','0.00','0.00','1','N','','214');

INSERT INTO TB_PAGAMENTO VALUES('224','80.00','80.00','0.00','2','C','','215');

INSERT INTO TB_PAGAMENTO VALUES('225','80.00','80.00','0.00','1','C','','216');

INSERT INTO TB_PAGAMENTO VALUES('226','80.00','40.00','0.00','2','I','','217');

INSERT INTO TB_PAGAMENTO VALUES('227','80.00','80.00','0.00','3','C','','218');

INSERT INTO TB_PAGAMENTO VALUES('228','80.00','80.00','0.00','1','C','','219');

INSERT INTO TB_PAGAMENTO VALUES('229','80.00','80.00','0.00','1','C','','221');

INSERT INTO TB_PAGAMENTO VALUES('230','80.00','80.00','0.00','2','C','','220');

INSERT INTO TB_PAGAMENTO VALUES('231','80.00','0.00','0.00','1','N','','222');

INSERT INTO TB_PAGAMENTO VALUES('232','80.00','80.00','0.00','1','C','','223');

INSERT INTO TB_PAGAMENTO VALUES('233','80.00','80.00','0.00','1','C','','224');

INSERT INTO TB_PAGAMENTO VALUES('234','80.00','0.00','0.00','1','N','','226');

INSERT INTO TB_PAGAMENTO VALUES('235','80.00','80.00','0.00','1','C','','225');

INSERT INTO TB_PAGAMENTO VALUES('236','80.00','0.01','0.00','1','I','','227');

INSERT INTO TB_PAGAMENTO VALUES('237','80.00','0.00','0.00','2','N','','229');

INSERT INTO TB_PAGAMENTO VALUES('238','80.00','0.00','0.00','1','N','','228');

INSERT INTO TB_PAGAMENTO VALUES('239','80.00','80.00','0.00','1','C','','231');

INSERT INTO TB_PAGAMENTO VALUES('240','80.00','80.00','0.00','2','C','','233');

INSERT INTO TB_PAGAMENTO VALUES('241','80.00','80.00','0.00','2','C','','232');

INSERT INTO TB_PAGAMENTO VALUES('242','80.00','0.01','0.00','2','I','','230');

INSERT INTO TB_PAGAMENTO VALUES('243','80.00','80.00','0.00','2','C','','234');

INSERT INTO TB_PAGAMENTO VALUES('244','80.00','80.00','0.00','1','C','','235');

INSERT INTO TB_PAGAMENTO VALUES('245','80.00','80.00','0.00','1','C','','236');

INSERT INTO TB_PAGAMENTO VALUES('246','80.00','80.00','0.00','1','C','','237');

INSERT INTO TB_PAGAMENTO VALUES('247','80.00','80.00','0.00','1','C','','238');

INSERT INTO TB_PAGAMENTO VALUES('248','80.00','60.00','20.00','1','C','','239');

INSERT INTO TB_PAGAMENTO VALUES('249','80.00','80.00','0.00','1','C','','240');

INSERT INTO TB_PAGAMENTO VALUES('250','80.00','80.00','0.00','1','C','','241');

INSERT INTO TB_PAGAMENTO VALUES('251','80.00','0.00','0.00','1','N','','242');

INSERT INTO TB_PAGAMENTO VALUES('252','80.00','0.00','0.00','1','N','','243');

INSERT INTO TB_PAGAMENTO VALUES('253','80.00','80.00','0.00','1','C','','244');

INSERT INTO TB_PAGAMENTO VALUES('254','80.00','0.00','0.00','1','N','','245');

INSERT INTO TB_PAGAMENTO VALUES('255','80.00','80.00','0.00','1','C','','247');

INSERT INTO TB_PAGAMENTO VALUES('256','80.00','0.00','0.00','1','N','','248');

INSERT INTO TB_PAGAMENTO VALUES('257','80.00','80.00','0.00','1','C','','246');

INSERT INTO TB_PAGAMENTO VALUES('258','80.00','80.00','0.00','1','C','','249');

INSERT INTO TB_PAGAMENTO VALUES('259','80.00','80.00','0.00','1','C','','250');

INSERT INTO TB_PAGAMENTO VALUES('260','80.00','0.00','0.00','1','N','','251');

INSERT INTO TB_PAGAMENTO VALUES('261','80.00','80.00','0.00','1','C','','252');

INSERT INTO TB_PAGAMENTO VALUES('262','80.00','80.00','0.00','1','C','','253');

INSERT INTO TB_PAGAMENTO VALUES('263','80.00','80.00','0.00','1','C','','256');

INSERT INTO TB_PAGAMENTO VALUES('264','80.00','0.00','0.00','1','N','','255');

INSERT INTO TB_PAGAMENTO VALUES('265','80.00','0.00','0.00','1','N','','254');

INSERT INTO TB_PAGAMENTO VALUES('266','80.00','80.00','0.00','1','C','','257');

INSERT INTO TB_PAGAMENTO VALUES('267','80.00','80.00','0.00','1','C','','258');

INSERT INTO TB_PAGAMENTO VALUES('268','80.00','80.00','0.00','1','C','','259');

INSERT INTO TB_PAGAMENTO VALUES('269','80.00','0.00','0.00','1','N','','260');

INSERT INTO TB_PAGAMENTO VALUES('270','80.00','80.00','0.00','2','C','','261');

INSERT INTO TB_PAGAMENTO VALUES('271','80.00','80.00','0.00','1','C','','262');

INSERT INTO TB_PAGAMENTO VALUES('272','80.00','80.00','0.00','1','C','','263');

INSERT INTO TB_PAGAMENTO VALUES('273','80.00','80.00','0.00','1','C','','264');

INSERT INTO TB_PAGAMENTO VALUES('274','80.00','80.00','0.00','1','C','','266');

INSERT INTO TB_PAGAMENTO VALUES('275','80.00','0.00','0.00','1','N','','265');

INSERT INTO TB_PAGAMENTO VALUES('276','80.00','0.01','0.00','2','I','','267');

INSERT INTO TB_PAGAMENTO VALUES('277','80.00','0.00','0.00','1','N','','268');

INSERT INTO TB_PAGAMENTO VALUES('278','150.00','15.00','145.00','1','C','Desconto pelo ADM (55 ultima parcela da máquina de foto 30 do site no mês de janeiro + 30 do site mês de fevereiro + 30 do site do mês de março) Totalizando os 145 de desconto','269');

INSERT INTO TB_PAGAMENTO VALUES('279','170.00','0.00','0.00','1','N','','271');

INSERT INTO TB_PAGAMENTO VALUES('280','160.00','0.00','0.00','1','N','','270');

INSERT INTO TB_PAGAMENTO VALUES('281','160.00','170.00','0.00','1','C','','272');

INSERT INTO TB_PAGAMENTO VALUES('282','160.00','0.00','0.00','1','N','','273');

INSERT INTO TB_PAGAMENTO VALUES('283','160.00','0.00','0.00','1','N','','278');

INSERT INTO TB_PAGAMENTO VALUES('284','170.00','0.00','0.00','1','N','','279');

INSERT INTO TB_PAGAMENTO VALUES('285','160.00','0.00','0.00','1','N','','280');

INSERT INTO TB_PAGAMENTO VALUES('286','160.00','0.00','0.00','1','N','','281');

INSERT INTO TB_PAGAMENTO VALUES('287','160.00','130.00','30.00','1','C','promoção','282');

INSERT INTO TB_PAGAMENTO VALUES('288','160.00','0.00','0.00','1','N','','277');

INSERT INTO TB_PAGAMENTO VALUES('289','160.00','0.00','0.00','1','N','','276');

INSERT INTO TB_PAGAMENTO VALUES('290','160.00','140.00','30.00','1','C','Promoção','275');

INSERT INTO TB_PAGAMENTO VALUES('291','160.00','0.00','0.00','1','N','','274');

INSERT INTO TB_PAGAMENTO VALUES('292','160.00','0.00','0.00','1','N','','283');

INSERT INTO TB_PAGAMENTO VALUES('293','160.00','160.00','0.00','1','C','','285');

INSERT INTO TB_PAGAMENTO VALUES('294','160.00','170.00','0.00','1','C','','284');

INSERT INTO TB_PAGAMENTO VALUES('295','170.00','160.00','0.00','1','C','','286');

INSERT INTO TB_PAGAMENTO VALUES('296','160.00','0.00','0.00','1','N','','287');

INSERT INTO TB_PAGAMENTO VALUES('297','160.00','0.00','0.00','1','N','','288');

INSERT INTO TB_PAGAMENTO VALUES('298','160.00','160.00','0.00','1','C','','289');

INSERT INTO TB_PAGAMENTO VALUES('299','160.00','170.00','0.00','1','C','','290');

INSERT INTO TB_PAGAMENTO VALUES('300','160.00','0.00','0.00','1','N','','291');

INSERT INTO TB_PAGAMENTO VALUES('301','160.00','0.00','0.00','1','N','','292');

INSERT INTO TB_PAGAMENTO VALUES('302','170.00','170.00','0.00','2','C','.','293');

INSERT INTO TB_PAGAMENTO VALUES('303','160.00','160.00','0.00','1','C','','294');

INSERT INTO TB_PAGAMENTO VALUES('304','160.00','170.00','0.00','1','C','','295');

INSERT INTO TB_PAGAMENTO VALUES('305','160.00','0.00','0.00','1','N','','296');

INSERT INTO TB_PAGAMENTO VALUES('306','160.00','170.00','0.00','1','C','','297');

INSERT INTO TB_PAGAMENTO VALUES('307','160.00','170.00','0.00','1','C','','298');

INSERT INTO TB_PAGAMENTO VALUES('308','170.00','160.00','0.00','1','C','','299');

INSERT INTO TB_PAGAMENTO VALUES('309','170.00','0.00','0.00','1','N','','300');

INSERT INTO TB_PAGAMENTO VALUES('310','160.00','0.00','0.00','1','N','','301');

INSERT INTO TB_PAGAMENTO VALUES('311','170.00','160.00','0.00','1','C','não teve desconto','303');

INSERT INTO TB_PAGAMENTO VALUES('312','170.00','170.00','0.00','1','C','','304');

INSERT INTO TB_PAGAMENTO VALUES('313','160.00','160.00','0.00','1','C','','305');

INSERT INTO TB_PAGAMENTO VALUES('314','160.00','0.00','0.00','1','N','','302');

INSERT INTO TB_PAGAMENTO VALUES('315','160.00','160.00','0.00','1','C','','306');

INSERT INTO TB_PAGAMENTO VALUES('316','160.00','160.00','0.00','1','C','','307');

INSERT INTO TB_PAGAMENTO VALUES('317','160.00','0.00','0.00','1','N','','308');

INSERT INTO TB_PAGAMENTO VALUES('318','170.00','0.00','0.00','1','N','','309');

INSERT INTO TB_PAGAMENTO VALUES('319','160.00','140.00','20.00','1','C','PROMOÇÃO IRMÃOS !','310');

INSERT INTO TB_PAGAMENTO VALUES('320','160.00','0.00','0.00','1','N','','311');

INSERT INTO TB_PAGAMENTO VALUES('321','160.00','0.00','0.00','1','N','','312');

INSERT INTO TB_PAGAMENTO VALUES('322','160.00','170.00','0.00','1','C','','313');

INSERT INTO TB_PAGAMENTO VALUES('323','160.00','100.00','0.00','1','I','','314');

INSERT INTO TB_PAGAMENTO VALUES('324','160.00','150.00','10.00','1','C','PROMOÇÃO IRMÃOS !','315');

INSERT INTO TB_PAGAMENTO VALUES('325','160.00','170.00','0.00','1','C','','316');

INSERT INTO TB_PAGAMENTO VALUES('326','160.00','160.00','0.00','1','C','','317');

INSERT INTO TB_PAGAMENTO VALUES('328','160.00','130.00','30.00','1','C','PAGO PELAS IRMÃS DA CARIDADE.','319');

INSERT INTO TB_PAGAMENTO VALUES('329','170.00','170.00','0.00','1','C','','320');

INSERT INTO TB_PAGAMENTO VALUES('330','170.00','170.00','0.00','1','C','','321');

INSERT INTO TB_PAGAMENTO VALUES('331','160.00','160.00','0.00','1','C','','322');

INSERT INTO TB_PAGAMENTO VALUES('332','160.00','170.00','0.00','1','C','','323');

INSERT INTO TB_PAGAMENTO VALUES('333','160.00','0.00','0.00','1','N','','325');

INSERT INTO TB_PAGAMENTO VALUES('334','160.00','0.00','0.00','1','N','','324');

INSERT INTO TB_PAGAMENTO VALUES('335','160.00','170.00','0.00','1','C','','326');

INSERT INTO TB_PAGAMENTO VALUES('336','160.00','160.00','0.00','1','C','','327');

INSERT INTO TB_PAGAMENTO VALUES('337','160.00','170.00','0.00','1','C','','328');

INSERT INTO TB_PAGAMENTO VALUES('338','170.00','0.00','0.00','1','N','','329');

INSERT INTO TB_PAGAMENTO VALUES('339','160.00','160.00','0.00','1','C','','330');

INSERT INTO TB_PAGAMENTO VALUES('340','170.00','160.00','0.00','1','C','','331');

INSERT INTO TB_PAGAMENTO VALUES('341','160.00','170.00','0.00','1','C','','332');

INSERT INTO TB_PAGAMENTO VALUES('342','160.00','160.00','0.00','1','C','','333');

INSERT INTO TB_PAGAMENTO VALUES('343','160.00','0.00','0.00','1','N','','334');

INSERT INTO TB_PAGAMENTO VALUES('344','160.00','100.00','60.00','1','C','.VENDEU RIFAS','335');

INSERT INTO TB_PAGAMENTO VALUES('345','160.00','45.00','115.00','1','C','SERVO SEM CONDIÇÕES !','336');

INSERT INTO TB_PAGAMENTO VALUES('346','160.00','170.00','0.00','1','C','','337');

INSERT INTO TB_PAGAMENTO VALUES('347','160.00','135.00','25.00','1','C','DESCONTO CASAIS !','338');

INSERT INTO TB_PAGAMENTO VALUES('348','160.00','135.00','25.00','1','C','PROMOÇÃO CASAIS','339');

INSERT INTO TB_PAGAMENTO VALUES('349','160.00','160.00','0.00','2','C','.','340');

INSERT INTO TB_PAGAMENTO VALUES('350','160.00','160.00','0.00','1','C','','341');

INSERT INTO TB_PAGAMENTO VALUES('351','160.00','80.00','0.00','2','I','.','342');

INSERT INTO TB_PAGAMENTO VALUES('352','170.00','170.00','0.00','1','C','','343');

INSERT INTO TB_PAGAMENTO VALUES('353','160.00','170.00','0.00','1','C','','344');

INSERT INTO TB_PAGAMENTO VALUES('354','160.00','130.00','30.00','1','C','Valor promocional à vista.','345');

INSERT INTO TB_PAGAMENTO VALUES('355','160.00','150.00','10.00','1','C','desconto irmãos','346');

INSERT INTO TB_PAGAMENTO VALUES('356','160.00','145.00','25.00','1','C','desconto casal','347');

INSERT INTO TB_PAGAMENTO VALUES('357','160.00','170.00','0.00','1','C','','348');

INSERT INTO TB_PAGAMENTO VALUES('358','160.00','170.00','0.00','1','C','','349');

INSERT INTO TB_PAGAMENTO VALUES('359','160.00','0.00','0.00','1','N','','350');

INSERT INTO TB_PAGAMENTO VALUES('360','170.00','170.00','0.00','1','C','','351');

INSERT INTO TB_PAGAMENTO VALUES('361','170.00','0.00','0.00','1','N','','352');

INSERT INTO TB_PAGAMENTO VALUES('362','160.00','0.00','0.00','1','N','','353');

INSERT INTO TB_PAGAMENTO VALUES('363','170.00','0.00','0.00','1','N','','354');

INSERT INTO TB_PAGAMENTO VALUES('364','160.00','0.00','0.00','1','N','','355');

INSERT INTO TB_PAGAMENTO VALUES('365','160.00','160.00','0.00','1','C','','356');

INSERT INTO TB_PAGAMENTO VALUES('366','160.00','170.00','0.00','2','C','.','357');

INSERT INTO TB_PAGAMENTO VALUES('367','160.00','170.00','0.00','2','C','.','358');

INSERT INTO TB_PAGAMENTO VALUES('368','160.00','0.00','0.00','1','N','','359');

INSERT INTO TB_PAGAMENTO VALUES('369','160.00','70.00','0.00','2','I','.','360');

INSERT INTO TB_PAGAMENTO VALUES('370','160.00','0.00','0.00','1','N','','361');

INSERT INTO TB_PAGAMENTO VALUES('371','170.00','170.00','0.00','1','C','','362');

INSERT INTO TB_PAGAMENTO VALUES('372','160.00','160.00','0.00','1','C','','363');

INSERT INTO TB_PAGAMENTO VALUES('373','170.00','145.00','25.00','1','C','desconto casal','364');

INSERT INTO TB_PAGAMENTO VALUES('374','160.00','130.00','30.00','1','C','Promoção.','366');

INSERT INTO TB_PAGAMENTO VALUES('375','160.00','0.00','0.00','1','N','','365');

INSERT INTO TB_PAGAMENTO VALUES('376','170.00','170.00','0.00','1','C','','367');

INSERT INTO TB_PAGAMENTO VALUES('377','160.00','170.00','0.00','1','C','','368');

INSERT INTO TB_PAGAMENTO VALUES('378','160.00','150.00','10.00','1','C','servo','369');

INSERT INTO TB_PAGAMENTO VALUES('379','170.00','0.00','0.00','1','N','','371');

INSERT INTO TB_PAGAMENTO VALUES('380','160.00','0.00','0.00','1','N','','370');

INSERT INTO TB_PAGAMENTO VALUES('381','170.00','150.00','20.00','1','C','Desconto Casal','372');

INSERT INTO TB_PAGAMENTO VALUES('382','170.00','150.00','20.00','1','C','DESCONTO CASAL','373');

INSERT INTO TB_PAGAMENTO VALUES('383','160.00','160.00','0.00','1','C','','374');

INSERT INTO TB_PAGAMENTO VALUES('384','160.00','0.00','0.00','1','N','','375');

INSERT INTO TB_PAGAMENTO VALUES('385','160.00','150.00','20.00','1','C','Valor promocional.','376');

INSERT INTO TB_PAGAMENTO VALUES('386','160.00','0.00','0.00','1','N','','377');

INSERT INTO TB_PAGAMENTO VALUES('387','160.00','160.00','0.00','1','C','sem desconto','378');

INSERT INTO TB_PAGAMENTO VALUES('388','160.00','0.00','0.00','1','N','','379');

INSERT INTO TB_PAGAMENTO VALUES('389','160.00','0.00','0.00','1','N','','380');

INSERT INTO TB_PAGAMENTO VALUES('390','160.00','150.00','10.00','1','C','.','381');

INSERT INTO TB_PAGAMENTO VALUES('391','160.00','170.00','0.00','1','C','','382');

INSERT INTO TB_PAGAMENTO VALUES('392','160.00','150.00','10.00','1','C','servo','383');

INSERT INTO TB_PAGAMENTO VALUES('393','160.00','160.00','0.00','1','C','não teve desconto','384');

INSERT INTO TB_PAGAMENTO VALUES('394','160.00','170.00','0.00','1','C','','385');

INSERT INTO TB_PAGAMENTO VALUES('395','160.00','150.00','10.00','1','C','SEM CONDIÇÕES','386');

INSERT INTO TB_PAGAMENTO VALUES('396','160.00','0.00','0.00','1','N','','387');

INSERT INTO TB_PAGAMENTO VALUES('397','160.00','170.00','0.00','1','C','','388');

INSERT INTO TB_PAGAMENTO VALUES('398','160.00','0.00','0.00','1','N','','389');

INSERT INTO TB_PAGAMENTO VALUES('399','160.00','130.00','30.00','1','C','PAGO PELAS IRMÃS DA CARIDADE.','390');

INSERT INTO TB_PAGAMENTO VALUES('400','170.00','140.00','30.00','1','C','Desconto irmãos','391');

INSERT INTO TB_PAGAMENTO VALUES('401','160.00','85.00','85.00','1','C','Sorteio promocional do instagram.','392');

INSERT INTO TB_PAGAMENTO VALUES('402','160.00','85.00','85.00','1','C','Sorteio promocional do instagram.','393');

INSERT INTO TB_PAGAMENTO VALUES('403','170.00','150.00','20.00','1','C','Desconto irmaos','394');

INSERT INTO TB_PAGAMENTO VALUES('404','170.00','130.00','30.00','1','C','PAGO PELAS IRMÃS DA CARIDADE.','395');

INSERT INTO TB_PAGAMENTO VALUES('405','160.00','130.00','30.00','1','C','Valor do retiro alterado por conta da promoção.','396');

INSERT INTO TB_PAGAMENTO VALUES('406','170.00','170.00','0.00','1','C','','397');

INSERT INTO TB_PAGAMENTO VALUES('407','160.00','160.00','0.00','1','C','','398');

INSERT INTO TB_PAGAMENTO VALUES('408','160.00','0.00','0.00','1','N','','399');

INSERT INTO TB_PAGAMENTO VALUES('409','160.00','125.00','35.00','1','C','Casal.','400');

INSERT INTO TB_PAGAMENTO VALUES('410','160.00','125.00','35.00','1','C','Casal.','401');

INSERT INTO TB_PAGAMENTO VALUES('411','160.00','150.00','10.00','1','C','SEM CONDIÇÕES','402');

INSERT INTO TB_PAGAMENTO VALUES('412','160.00','0.00','0.00','1','N','','403');

INSERT INTO TB_PAGAMENTO VALUES('413','170.00','130.00','40.00','1','C','desconto do dia','404');

INSERT INTO TB_PAGAMENTO VALUES('414','170.00','130.00','30.00','1','C','Promoção.','405');

INSERT INTO TB_PAGAMENTO VALUES('415','160.00','140.00','20.00','1','C','Valor promocional no cartão.','407');

INSERT INTO TB_PAGAMENTO VALUES('416','160.00','140.00','20.00','1','C','Valor do retiro alterado por conta da promoção.','406');

INSERT INTO TB_PAGAMENTO VALUES('417','160.00','130.00','30.00','1','C','Promoção do dia.','408');

INSERT INTO TB_PAGAMENTO VALUES('418','160.00','140.00','20.00','1','C','Valor do retiro alterado por conta da promoção.','409');

INSERT INTO TB_PAGAMENTO VALUES('419','160.00','170.00','0.00','1','C','','410');

INSERT INTO TB_PAGAMENTO VALUES('420','160.00','170.00','0.00','1','C','','411');

INSERT INTO TB_PAGAMENTO VALUES('421','160.00','130.00','30.00','1','C','Valor promocional à vista.','412');

INSERT INTO TB_PAGAMENTO VALUES('422','160.00','0.00','0.00','1','N','','413');

INSERT INTO TB_PAGAMENTO VALUES('423','160.00','130.00','30.00','1','C','Valor alterado do retiro por conta da promoção.','414');

INSERT INTO TB_PAGAMENTO VALUES('424','160.00','130.00','30.00','1','C','Valor do retiro alterado por conta da promoção.','415');

INSERT INTO TB_PAGAMENTO VALUES('425','160.00','130.00','30.00','1','C','Valor promocional à vista.','416');

INSERT INTO TB_PAGAMENTO VALUES('426','170.00','140.00','20.00','1','C','promoção','417');

INSERT INTO TB_PAGAMENTO VALUES('427','170.00','0.00','0.00','1','N','','418');

INSERT INTO TB_PAGAMENTO VALUES('428','160.00','130.00','30.00','1','C','Promoção.','419');

INSERT INTO TB_PAGAMENTO VALUES('429','160.00','130.00','30.00','1','C','PAGO PELAS IRMÃS DA CARIDADE.','420');

INSERT INTO TB_PAGAMENTO VALUES('430','160.00','130.00','30.00','1','C','PAGO PELAS IRMÃS DA CARIDADE.','421');

INSERT INTO TB_PAGAMENTO VALUES('431','160.00','130.00','30.00','1','C','PAGO PELAS IRMÃS DA CARIDADE.','422');

INSERT INTO TB_PAGAMENTO VALUES('432','160.00','0.00','0.00','1','N','','424');

INSERT INTO TB_PAGAMENTO VALUES('433','170.00','0.00','0.00','1','N','','423');

INSERT INTO TB_PAGAMENTO VALUES('434','160.00','130.00','30.00','1','C','promoção','425');

INSERT INTO TB_PAGAMENTO VALUES('435','160.00','130.00','40.00','1','C','PROMOÇÃO','426');

INSERT INTO TB_PAGAMENTO VALUES('436','160.00','130.00','30.00','1','C','Desconto irmãs da caridade.','427');

INSERT INTO TB_PAGAMENTO VALUES('437','170.00','0.00','0.00','1','N','','428');

INSERT INTO TB_PAGAMENTO VALUES('438','160.00','150.00','','1','C','desconto a vista saiu a 150,00','429');

INSERT INTO TB_PAGAMENTO VALUES('439','160.00','0.00','0.00','1','N','','431');

INSERT INTO TB_PAGAMENTO VALUES('440','160.00','0.00','0.00','1','N','','430');

INSERT INTO TB_PAGAMENTO VALUES('441','160.00','130.00','30.00','1','C','Promoção de ultimas vagas','432');

INSERT INTO TB_PAGAMENTO VALUES('442','160.00','0.00','0.00','1','N','','433');

INSERT INTO TB_PAGAMENTO VALUES('443','160.00','160.00','0.00','1','C','Não tem desconto','434');

INSERT INTO TB_PAGAMENTO VALUES('444','160.00','0.00','0.00','1','N','','435');

INSERT INTO TB_PAGAMENTO VALUES('445','160.00','160.00','','1','C','','437');

INSERT INTO TB_PAGAMENTO VALUES('446','160.00','160.00','','1','C','.','438');

INSERT INTO TB_PAGAMENTO VALUES('447','160.00','160.00','','1','C','','439');

INSERT INTO TB_PAGAMENTO VALUES('448','160.00','160.00','160.00','1','C','Missionária.','440');

INSERT INTO TB_PAGAMENTO VALUES('449','160.00','160.00','0.00','2','C','.','441');

INSERT INTO TB_PAGAMENTO VALUES('450','160.00','160.00','','1','C','','442');

INSERT INTO TB_PAGAMENTO VALUES('451','160.00','160.00','160.00','1','C','VAGA GARANTIDA POR MEIO DA RIFA.','443');

INSERT INTO TB_PAGAMENTO VALUES('452','160.00','130.00','30.00','1','C','PROMOÇÃO, ANIVERSÁRIO GEJ','445');

INSERT INTO TB_PAGAMENTO VALUES('453','160.00','','','1','N','','444');

INSERT INTO TB_PAGAMENTO VALUES('454','160.00','','','1','N','','446');

INSERT INTO TB_PAGAMENTO VALUES('455','160.00','','','1','N','','447');

INSERT INTO TB_PAGAMENTO VALUES('456','160.00','','','1','N','','448');

INSERT INTO TB_PAGAMENTO VALUES('457','160.00','','','1','N','','449');

INSERT INTO TB_PAGAMENTO VALUES('458','160.00','','','1','N','','450');

INSERT INTO TB_PAGAMENTO VALUES('459','160.00','160.00','','1','C','','451');

INSERT INTO TB_PAGAMENTO VALUES('460','160.00','','','1','N','','452');

INSERT INTO TB_PAGAMENTO VALUES('461','160.00','160.00','','1','C','','453');

INSERT INTO TB_PAGAMENTO VALUES('462','160.00','160.00','','1','C','','454');

INSERT INTO TB_PAGAMENTO VALUES('463','160.00','160.00','','1','C','','455');

INSERT INTO TB_PAGAMENTO VALUES('464','160.00','','','1','N','','456');

INSERT INTO TB_PAGAMENTO VALUES('465','160.00','','','1','N','','457');

INSERT INTO TB_PAGAMENTO VALUES('466','160.00','160.00','','1','C','','458');

INSERT INTO TB_PAGAMENTO VALUES('467','160.00','160.00','','1','C','','459');

INSERT INTO TB_PAGAMENTO VALUES('468','160.00','','','1','N','','460');

INSERT INTO TB_PAGAMENTO VALUES('469','160.00','','','1','N','','461');

INSERT INTO TB_PAGAMENTO VALUES('470','160.00','','','1','N','','462');

INSERT INTO TB_PAGAMENTO VALUES('471','160.00','160.00','','1','C','','463');

INSERT INTO TB_PAGAMENTO VALUES('472','160.00','160.00','','1','C','','464');

INSERT INTO TB_PAGAMENTO VALUES('473','160.00','130.00','30.00','1','C','Promoção aniversário do GEJ','466');

INSERT INTO TB_PAGAMENTO VALUES('474','160.00','','','1','N','','465');

INSERT INTO TB_PAGAMENTO VALUES('475','160.00','160.00','','1','C','','467');

INSERT INTO TB_PAGAMENTO VALUES('476','160.00','160.00','','1','C','','468');

INSERT INTO TB_PAGAMENTO VALUES('477','160.00','160.00','','1','C','','469');

INSERT INTO TB_PAGAMENTO VALUES('478','160.00','160.00','','1','C','','470');

INSERT INTO TB_PAGAMENTO VALUES('479','160.00','','','1','N','','471');

INSERT INTO TB_PAGAMENTO VALUES('480','160.00','','','1','N','','472');

INSERT INTO TB_PAGAMENTO VALUES('481','160.00','160.00','','1','C','','473');

INSERT INTO TB_PAGAMENTO VALUES('482','160.00','','','1','N','','475');

INSERT INTO TB_PAGAMENTO VALUES('483','160.00','160.00','','1','C','','474');

INSERT INTO TB_PAGAMENTO VALUES('484','160.00','160.00','','1','C','','476');

INSERT INTO TB_PAGAMENTO VALUES('485','160.00','','','1','N','','477');

INSERT INTO TB_PAGAMENTO VALUES('486','160.00','130.00','30.00','1','C','Promoção aniversário do GEJ.','478');

INSERT INTO TB_PAGAMENTO VALUES('487','160.00','','','1','N','','479');

INSERT INTO TB_PAGAMENTO VALUES('488','160.00','160.00','','1','C','','480');

INSERT INTO TB_PAGAMENTO VALUES('489','160.00','130.00','30.00','1','C','Promoção Aniversário do GEJ.','481');

INSERT INTO TB_PAGAMENTO VALUES('490','160.00','130.00','30.00','1','C','Promoção','482');

INSERT INTO TB_PAGAMENTO VALUES('491','160.00','','','1','N','','483');

INSERT INTO TB_PAGAMENTO VALUES('492','160.00','130.00','30.00','1','C','não tinha dinheiro.','484');

INSERT INTO TB_PAGAMENTO VALUES('493','160.00','160.00','','1','C','','485');

INSERT INTO TB_PAGAMENTO VALUES('494','160.00','160.00','','1','C','','486');

INSERT INTO TB_PAGAMENTO VALUES('495','160.00','130.00','30.00','1','C','Desconto dado pro pessoal de Formosa.','487');

INSERT INTO TB_PAGAMENTO VALUES('496','160.00','160.00','','1','C','','488');

INSERT INTO TB_PAGAMENTO VALUES('497','160.00','160.00','','1','C','','489');

INSERT INTO TB_PAGAMENTO VALUES('498','160.00','','','1','N','','490');

INSERT INTO TB_PAGAMENTO VALUES('499','160.00','','','1','N','','491');

INSERT INTO TB_PAGAMENTO VALUES('500','160.00','','','1','N','','492');

INSERT INTO TB_PAGAMENTO VALUES('501','160.00','','','1','N','','493');

INSERT INTO TB_PAGAMENTO VALUES('502','160.00','','','1','N','','496');

INSERT INTO TB_PAGAMENTO VALUES('503','160.00','140.00','20.00','1','C','Indicada pela Maria Rita.','497');

INSERT INTO TB_PAGAMENTO VALUES('504','160.00','160.00','','1','C','','495');

INSERT INTO TB_PAGAMENTO VALUES('505','160.00','160.00','','1','C','','494');

INSERT INTO TB_PAGAMENTO VALUES('506','160.00','160.00','','1','C','','498');

INSERT INTO TB_PAGAMENTO VALUES('507','160.00','160.00','','1','C','','499');

INSERT INTO TB_PAGAMENTO VALUES('508','160.00','160.00','','1','C','','501');

INSERT INTO TB_PAGAMENTO VALUES('509','160.00','160.00','','1','C','','500');

INSERT INTO TB_PAGAMENTO VALUES('510','160.00','','','1','N','','502');

INSERT INTO TB_PAGAMENTO VALUES('511','160.00','160.00','','1','C','','503');

INSERT INTO TB_PAGAMENTO VALUES('512','160.00','160.00','','1','C','','504');

INSERT INTO TB_PAGAMENTO VALUES('513','160.00','160.00','','1','C','','505');

INSERT INTO TB_PAGAMENTO VALUES('514','160.00','160.00','','1','C','','506');

INSERT INTO TB_PAGAMENTO VALUES('515','160.00','160.00','','1','C','','507');

INSERT INTO TB_PAGAMENTO VALUES('516','160.00','160.00','','1','C','','508');

INSERT INTO TB_PAGAMENTO VALUES('517','160.00','','','1','N','','509');

INSERT INTO TB_PAGAMENTO VALUES('518','160.00','130.00','30.00','1','C','Desconto dado pro pessoal de Formosa.','510');

INSERT INTO TB_PAGAMENTO VALUES('519','160.00','160.00','','1','C','','511');

INSERT INTO TB_PAGAMENTO VALUES('520','160.00','','','1','N','','512');

INSERT INTO TB_PAGAMENTO VALUES('521','160.00','','','1','N','','513');

INSERT INTO TB_PAGAMENTO VALUES('522','160.00','','','1','N','','514');

INSERT INTO TB_PAGAMENTO VALUES('523','160.00','','','1','N','','515');

INSERT INTO TB_PAGAMENTO VALUES('524','160.00','160.00','','1','C','','516');

INSERT INTO TB_PAGAMENTO VALUES('525','160.00','160.00','','1','C','','517');

INSERT INTO TB_PAGAMENTO VALUES('526','160.00','160.00','','1','C','','518');

INSERT INTO TB_PAGAMENTO VALUES('527','160.00','160.00','','1','C','','519');

INSERT INTO TB_PAGAMENTO VALUES('528','160.00','','','1','N','','520');

INSERT INTO TB_PAGAMENTO VALUES('529','160.00','130.00','30.00','1','C','Promoção Aniversário','521');

INSERT INTO TB_PAGAMENTO VALUES('530','160.00','','','1','N','','523');

INSERT INTO TB_PAGAMENTO VALUES('531','160.00','160.00','','1','C','','522');

INSERT INTO TB_PAGAMENTO VALUES('532','160.00','130.00','30.00','1','C','Desconto dado pro pessoal de Formosa.','524');

INSERT INTO TB_PAGAMENTO VALUES('533','160.00','','','1','N','','525');

INSERT INTO TB_PAGAMENTO VALUES('534','160.00','','','1','N','','526');

INSERT INTO TB_PAGAMENTO VALUES('535','160.00','','','1','N','','527');

INSERT INTO TB_PAGAMENTO VALUES('536','160.00','','','1','N','','528');

INSERT INTO TB_PAGAMENTO VALUES('537','160.00','160.00','','1','C','','529');

INSERT INTO TB_PAGAMENTO VALUES('538','160.00','','','1','N','','530');

INSERT INTO TB_PAGAMENTO VALUES('539','160.00','130.00','30.00','1','C','Formosa.','531');

INSERT INTO TB_PAGAMENTO VALUES('540','160.00','160.00','','1','C','','532');

INSERT INTO TB_PAGAMENTO VALUES('541','160.00','','','1','N','','533');

INSERT INTO TB_PAGAMENTO VALUES('542','160.00','160.00','','1','C','','534');

INSERT INTO TB_PAGAMENTO VALUES('543','160.00','160.00','','1','C','','536');

INSERT INTO TB_PAGAMENTO VALUES('544','160.00','130.00','30.00','1','C','Formosa','535');

INSERT INTO TB_PAGAMENTO VALUES('545','160.00','130.00','30.00','1','C','Promoção Aniversário do GEJ.','537');

INSERT INTO TB_PAGAMENTO VALUES('546','160.00','160.00','','1','C','','538');

INSERT INTO TB_PAGAMENTO VALUES('547','160.00','100.00','60.00','1','C','Promoção do aniversário do GEJ.','539');

INSERT INTO TB_PAGAMENTO VALUES('548','160.00','100.00','60.00','1','C','Promoção de aniversário.','540');

INSERT INTO TB_PAGAMENTO VALUES('549','160.00','100.00','60.00','1','C','Promoção aniversário do GEJ.','541');

INSERT INTO TB_PAGAMENTO VALUES('550','160.00','100.00','60.00','1','C','Promoção aniversário do GEJ.','542');

INSERT INTO TB_PAGAMENTO VALUES('551','160.00','100.00','60.00','1','C','Promoção aniversário do GEJ.','543');

INSERT INTO TB_PAGAMENTO VALUES('552','160.00','','','1','N','','544');

INSERT INTO TB_PAGAMENTO VALUES('553','160.00','160.00','','1','C','','545');

INSERT INTO TB_PAGAMENTO VALUES('554','160.00','160.00','','1','C','','546');

INSERT INTO TB_PAGAMENTO VALUES('555','160.00','130.00','30.00','1','C','Desconto para Missionárias da Caridade','547');

INSERT INTO TB_PAGAMENTO VALUES('556','160.00','','','1','N','','548');

INSERT INTO TB_PAGAMENTO VALUES('557','160.00','','','1','N','','549');

INSERT INTO TB_PAGAMENTO VALUES('558','160.00','130.00','30.00','1','C','Promoção','550');

INSERT INTO TB_PAGAMENTO VALUES('559','160.00','130.00','30.00','1','C','Promoção','551');

INSERT INTO TB_PAGAMENTO VALUES('560','160.00','130.00','30.00','1','C','Promoção','552');

INSERT INTO TB_PAGAMENTO VALUES('561','160.00','160.00','','1','C','','553');

INSERT INTO TB_PAGAMENTO VALUES('562','160.00','','','1','N','','554');

INSERT INTO TB_PAGAMENTO VALUES('563','160.00','','','1','N','','555');

INSERT INTO TB_PAGAMENTO VALUES('564','160.00','','','1','N','','556');

INSERT INTO TB_PAGAMENTO VALUES('565','160.00','','','1','N','','557');

INSERT INTO TB_PAGAMENTO VALUES('566','160.00','','','1','N','','558');

INSERT INTO TB_PAGAMENTO VALUES('567','180.00','','','1','N','','560');

INSERT INTO TB_PAGAMENTO VALUES('568','180.00','','','1','N','','559');




DROP TABLE IF EXISTS TB_PAGINA;


CREATE TABLE `TB_PAGINA` (
  `co_pagina` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_titulo_url_amigavel` varchar(255) DEFAULT NULL COMMENT 'Url amigável da página',
  `nu_visualizacao` int(11) DEFAULT NULL,
  `nu_usuario` int(11) DEFAULT NULL COMMENT 'Número de usuário que visitou a página',
  PRIMARY KEY (`co_pagina`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO TB_PAGINA VALUES('1','2022-12-12 20:44:23','web/Inscricoes/VerInscricao','8','8');

INSERT INTO TB_PAGINA VALUES('2','2022-12-12 23:08:08','web/Inscricoes/SobrePagamento','5','5');

INSERT INTO TB_PAGINA VALUES('3','2022-12-12 23:08:22','web/Inscricoes/CadastroRetiro','14','14');

INSERT INTO TB_PAGINA VALUES('4','2022-12-12 23:30:58','web/IndexWeb/Index','3','3');

INSERT INTO TB_PAGINA VALUES('5','2022-12-12 23:34:14','web/Inscricoes/FormaDePagamento/ZjIyYzkwY2YzYWY2ZDQzMDcxZTJhYzkzMjc5YWFkNzYvTlRVNA==','1','1');

INSERT INTO TB_PAGINA VALUES('6','2022-12-12 23:35:01','web/Inscricoes/ConcluirInscricao','1','1');

INSERT INTO TB_PAGINA VALUES('7','2022-12-12 23:44:49','web/Inscricoes/Normas','1','1');

INSERT INTO TB_PAGINA VALUES('8','2022-12-12 23:50:23','web/Inscricoes/FormaDePagamento/ZjIyYzkwY2YzYWY2ZDQzMDcxZTJhYzkzMjc5YWFkNzYvTlRVNQ==','1','1');

INSERT INTO TB_PAGINA VALUES('9','2022-12-13 23:45:34','web/Inscricoes/FormaDePagamento/ZjIyYzkwY2YzYWY2ZDQzMDcxZTJhYzkzMjc5YWFkNzYvTlRZdw==','1','1');




DROP TABLE IF EXISTS TB_PAGINA_VISITA;


CREATE TABLE `TB_PAGINA_VISITA` (
  `co_pagina_visita` int(11) NOT NULL AUTO_INCREMENT,
  `co_visita` int(11) NOT NULL,
  `co_pagina` int(11) NOT NULL,
  PRIMARY KEY (`co_pagina_visita`,`co_visita`,`co_pagina`),
  KEY `fk_TB_PAGINA_has_TB_VISITA_TB_VISITA1_idx` (`co_visita`),
  KEY `fk_TB_PAGINA_has_TB_VISITA_TB_PAGINA1_idx` (`co_pagina`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;


INSERT INTO TB_PAGINA_VISITA VALUES('1','1197','1');

INSERT INTO TB_PAGINA_VISITA VALUES('2','1199','1');

INSERT INTO TB_PAGINA_VISITA VALUES('3','1201','1');

INSERT INTO TB_PAGINA_VISITA VALUES('4','1203','1');

INSERT INTO TB_PAGINA_VISITA VALUES('5','1205','2');

INSERT INTO TB_PAGINA_VISITA VALUES('6','1207','3');

INSERT INTO TB_PAGINA_VISITA VALUES('7','1209','3');

INSERT INTO TB_PAGINA_VISITA VALUES('8','1211','3');

INSERT INTO TB_PAGINA_VISITA VALUES('9','1213','4');

INSERT INTO TB_PAGINA_VISITA VALUES('10','1215','3');

INSERT INTO TB_PAGINA_VISITA VALUES('11','1217','3');

INSERT INTO TB_PAGINA_VISITA VALUES('12','1219','3');

INSERT INTO TB_PAGINA_VISITA VALUES('13','1221','5');

INSERT INTO TB_PAGINA_VISITA VALUES('14','1223','6');

INSERT INTO TB_PAGINA_VISITA VALUES('15','1225','4');

INSERT INTO TB_PAGINA_VISITA VALUES('16','1227','1');

INSERT INTO TB_PAGINA_VISITA VALUES('17','1229','1');

INSERT INTO TB_PAGINA_VISITA VALUES('18','1231','2');

INSERT INTO TB_PAGINA_VISITA VALUES('19','1233','3');

INSERT INTO TB_PAGINA_VISITA VALUES('20','1235','3');

INSERT INTO TB_PAGINA_VISITA VALUES('21','1237','1');

INSERT INTO TB_PAGINA_VISITA VALUES('22','1239','3');

INSERT INTO TB_PAGINA_VISITA VALUES('23','1241','7');

INSERT INTO TB_PAGINA_VISITA VALUES('24','1243','2');

INSERT INTO TB_PAGINA_VISITA VALUES('25','1245','2');

INSERT INTO TB_PAGINA_VISITA VALUES('26','1247','2');

INSERT INTO TB_PAGINA_VISITA VALUES('27','1249','3');

INSERT INTO TB_PAGINA_VISITA VALUES('28','1251','3');

INSERT INTO TB_PAGINA_VISITA VALUES('29','1253','3');

INSERT INTO TB_PAGINA_VISITA VALUES('30','1255','8');

INSERT INTO TB_PAGINA_VISITA VALUES('31','1237','4');

INSERT INTO TB_PAGINA_VISITA VALUES('32','1237','3');

INSERT INTO TB_PAGINA_VISITA VALUES('33','1257','3');

INSERT INTO TB_PAGINA_VISITA VALUES('34','1257','9');

INSERT INTO TB_PAGINA_VISITA VALUES('35','1273','1');




DROP TABLE IF EXISTS TB_PARCELAMENTO;


CREATE TABLE `TB_PARCELAMENTO` (
  `co_parcelamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_parcela` int(2) DEFAULT NULL,
  `nu_valor_parcela` decimal(8,2) DEFAULT NULL,
  `nu_valor_parcela_pago` decimal(8,2) DEFAULT NULL,
  `dt_vencimento` date DEFAULT NULL,
  `dt_vencimento_pago` date DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `co_tipo_pagamento` int(11) NOT NULL,
  `co_pagamento` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_parcelamento`,`co_tipo_pagamento`,`co_pagamento`,`co_usuario`),
  KEY `fk_TB_PARCELAMENTO_TB_TIPO_PAGAMENTO1_idx` (`co_tipo_pagamento`),
  KEY `fk_TB_PARCELAMENTO_TB_PAGAMENTO1_idx` (`co_pagamento`),
  KEY `fk_TB_PARCELAMENTO_TB_USUARIO1_idx` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=1830 DEFAULT CHARSET=utf8;


INSERT INTO TB_PARCELAMENTO VALUES('1032','1','160.00','160.00','2018-01-21','2018-01-25','','2','137','0');

INSERT INTO TB_PARCELAMENTO VALUES('1033','1','160.00','160.00','2018-01-21','2018-01-26','','2','136','0');

INSERT INTO TB_PARCELAMENTO VALUES('1034','1','150.00','150.00','2018-01-21','2018-01-31','','2','135','0');

INSERT INTO TB_PARCELAMENTO VALUES('1035','1','150.00','0.00','2018-01-21','','','1','134','0');

INSERT INTO TB_PARCELAMENTO VALUES('1036','1','160.00','160.00','2018-01-21','2018-01-25','','2','133','0');

INSERT INTO TB_PARCELAMENTO VALUES('1037','1','160.00','160.00','2018-01-21','2018-01-25','','2','132','0');

INSERT INTO TB_PARCELAMENTO VALUES('1039','1','150.00','150.00','2018-01-21','2018-01-24','','1','129','0');

INSERT INTO TB_PARCELAMENTO VALUES('1040','1','150.00','150.00','2018-01-21','2018-01-26','','3','127','0');

INSERT INTO TB_PARCELAMENTO VALUES('1041','1','160.00','160.00','2018-01-21','2018-01-25','','2','126','0');

INSERT INTO TB_PARCELAMENTO VALUES('1042','1','150.00','0.00','2018-01-21','','','1','128','0');

INSERT INTO TB_PARCELAMENTO VALUES('1043','1','160.00','0.00','2018-01-21','','','1','125','0');

INSERT INTO TB_PARCELAMENTO VALUES('1044','1','150.00','150.00','2018-01-21','2018-01-10','','3','124','0');

INSERT INTO TB_PARCELAMENTO VALUES('1045','1','150.00','150.00','2018-01-21','2018-01-09','','3','123','0');

INSERT INTO TB_PARCELAMENTO VALUES('1046','1','50.00','50.00','2018-01-21','2018-01-21','','1','122','0');

INSERT INTO TB_PARCELAMENTO VALUES('1047','1','0.00','0.00','2018-01-21','2018-01-11','','1','121','0');

INSERT INTO TB_PARCELAMENTO VALUES('1048','1','160.00','160.00','2018-01-21','2018-01-25','','3','120','0');

INSERT INTO TB_PARCELAMENTO VALUES('1049','1','150.00','150.00','2018-01-21','2018-01-08','','1','119','0');

INSERT INTO TB_PARCELAMENTO VALUES('1051','1','150.00','150.00','2018-01-21','2018-02-05','','1','117','0');

INSERT INTO TB_PARCELAMENTO VALUES('1052','1','150.00','150.00','2018-01-21','2018-02-05','','1','116','0');

INSERT INTO TB_PARCELAMENTO VALUES('1053','1','150.00','160.00','2018-01-21','2018-01-31','Pagou 10 à mais','1','115','0');

INSERT INTO TB_PARCELAMENTO VALUES('1054','1','150.00','0.00','2018-01-21','','','1','114','0');

INSERT INTO TB_PARCELAMENTO VALUES('1055','1','150.00','150.00','2018-01-21','2018-02-04','','1','113','0');

INSERT INTO TB_PARCELAMENTO VALUES('1057','1','150.00','160.00','2018-01-21','2017-02-06','','1','111','0');

INSERT INTO TB_PARCELAMENTO VALUES('1058','1','160.00','0.00','2018-01-21','','','1','110','0');

INSERT INTO TB_PARCELAMENTO VALUES('1059','1','160.00','150.00','2018-01-21','2018-02-05','','1','109','0');

INSERT INTO TB_PARCELAMENTO VALUES('1060','1','150.00','160.00','2018-01-21','2018-02-06','','1','108','0');

INSERT INTO TB_PARCELAMENTO VALUES('1061','1','160.00','160.00','2018-01-21','2018-01-12','','2','107','0');

INSERT INTO TB_PARCELAMENTO VALUES('1062','1','160.00','160.00','2018-01-21','2018-01-12','','2','106','0');

INSERT INTO TB_PARCELAMENTO VALUES('1063','1','150.00','150.00','2018-01-21','2018-01-26','','3','105','0');

INSERT INTO TB_PARCELAMENTO VALUES('1064','1','150.00','150.00','2018-01-21','2018-01-12','','1','104','0');

INSERT INTO TB_PARCELAMENTO VALUES('1065','1','150.00','150.00','2018-01-21','2018-01-26','','3','102','0');

INSERT INTO TB_PARCELAMENTO VALUES('1066','1','150.00','150.00','2018-01-21','2018-01-15','','1','103','0');

INSERT INTO TB_PARCELAMENTO VALUES('1067','1','160.00','0.00','2018-01-21','','','1','101','0');

INSERT INTO TB_PARCELAMENTO VALUES('1068','1','150.00','0.00','2018-01-21','','','1','100','0');

INSERT INTO TB_PARCELAMENTO VALUES('1069','1','160.00','0.00','2018-01-21','','','1','99','0');

INSERT INTO TB_PARCELAMENTO VALUES('1070','1','30.00','30.00','2018-01-21','2018-01-21','','1','98','0');

INSERT INTO TB_PARCELAMENTO VALUES('1071','1','160.00','160.00','2018-01-21','2018-01-12','','2','97','0');

INSERT INTO TB_PARCELAMENTO VALUES('1072','1','160.00','160.00','2018-01-21','2018-01-26','Pagou 10,00 à mais.','1','96','0');

INSERT INTO TB_PARCELAMENTO VALUES('1073','1','0.00','0.00','2018-01-21','2018-01-15','','1','95','0');

INSERT INTO TB_PARCELAMENTO VALUES('1074','1','150.00','150.00','2018-01-21','2018-02-08','','1','94','0');

INSERT INTO TB_PARCELAMENTO VALUES('1075','1','160.00','160.00','2018-01-21','2018-02-24','','2','93','0');

INSERT INTO TB_PARCELAMENTO VALUES('1076','1','160.00','160.00','2018-01-21','2017-02-06','','1','92','0');

INSERT INTO TB_PARCELAMENTO VALUES('1077','1','160.00','1500.00','2018-01-21','2018-02-08','','1','91','0');

INSERT INTO TB_PARCELAMENTO VALUES('1078','1','160.00','160.00','2018-01-21','2018-01-09','Depositou 10,00 à mais','1','90','0');

INSERT INTO TB_PARCELAMENTO VALUES('1079','1','150.00','150.00','2018-01-21','2018-02-06','','1','89','0');

INSERT INTO TB_PARCELAMENTO VALUES('1080','1','150.00','0.00','2018-01-21','','','1','88','0');

INSERT INTO TB_PARCELAMENTO VALUES('1082','1','150.00','0.00','2018-01-21','','','1','85','0');

INSERT INTO TB_PARCELAMENTO VALUES('1083','1','160.00','160.00','2018-01-21','2018-01-29','Devolver 10,00','3','84','0');

INSERT INTO TB_PARCELAMENTO VALUES('1084','1','150.00','0.00','2018-01-21','','','1','83','0');

INSERT INTO TB_PARCELAMENTO VALUES('1085','1','0.00','0.00','2018-01-21','2018-02-01','','1','82','0');

INSERT INTO TB_PARCELAMENTO VALUES('1086','1','150.00','150.00','2018-01-21','2018-01-22','','1','81','0');

INSERT INTO TB_PARCELAMENTO VALUES('1087','1','150.00','150.00','2018-01-21','2018-02-21','','1','80','0');

INSERT INTO TB_PARCELAMENTO VALUES('1088','1','150.00','0.00','2018-01-21','','','1','79','0');

INSERT INTO TB_PARCELAMENTO VALUES('1089','1','150.00','0.00','2018-01-21','','','1','78','0');

INSERT INTO TB_PARCELAMENTO VALUES('1090','1','150.00','150.00','2018-01-21','2018-01-12','','1','77','0');

INSERT INTO TB_PARCELAMENTO VALUES('1091','1','150.00','0.00','2018-01-21','','','1','76','0');

INSERT INTO TB_PARCELAMENTO VALUES('1092','1','160.00','150.00','2018-01-21','2018-02-09','','1','75','0');

INSERT INTO TB_PARCELAMENTO VALUES('1093','1','150.00','150.00','2018-01-21','2018-02-06','','1','74','0');

INSERT INTO TB_PARCELAMENTO VALUES('1094','1','150.00','0.00','2018-01-21','','','1','73','0');

INSERT INTO TB_PARCELAMENTO VALUES('1095','1','150.00','0.00','2018-01-21','','','1','72','0');

INSERT INTO TB_PARCELAMENTO VALUES('1096','1','150.00','0.00','2018-01-21','','','1','71','0');

INSERT INTO TB_PARCELAMENTO VALUES('1097','1','160.00','160.00','2018-01-21','2018-01-26','','2','70','0');

INSERT INTO TB_PARCELAMENTO VALUES('1098','1','150.00','150.00','2018-01-21','2018-01-12','','1','69','0');

INSERT INTO TB_PARCELAMENTO VALUES('1099','1','150.00','160.00','2018-01-21','2018-01-30','','2','68','0');

INSERT INTO TB_PARCELAMENTO VALUES('1100','1','150.00','150.00','2018-01-21','2018-02-08','','1','67','0');

INSERT INTO TB_PARCELAMENTO VALUES('1101','1','150.00','0.00','2018-01-21','','','1','66','0');

INSERT INTO TB_PARCELAMENTO VALUES('1102','1','150.00','150.00','2018-01-21','2018-01-12','','1','65','0');

INSERT INTO TB_PARCELAMENTO VALUES('1103','1','150.00','0.00','2018-01-21','','','1','64','0');

INSERT INTO TB_PARCELAMENTO VALUES('1104','1','150.00','0.00','2018-01-21','','','1','62','0');

INSERT INTO TB_PARCELAMENTO VALUES('1105','1','160.00','0.00','2018-01-21','','','1','61','0');

INSERT INTO TB_PARCELAMENTO VALUES('1106','1','150.00','0.00','2018-01-21','','','1','63','0');

INSERT INTO TB_PARCELAMENTO VALUES('1107','1','150.00','0.00','2018-01-21','','','1','60','0');

INSERT INTO TB_PARCELAMENTO VALUES('1108','1','160.00','0.00','2018-01-21','','','1','59','0');

INSERT INTO TB_PARCELAMENTO VALUES('1109','1','150.00','0.00','2018-01-21','','','1','58','0');

INSERT INTO TB_PARCELAMENTO VALUES('1110','1','150.00','0.00','2018-01-21','','','1','57','0');

INSERT INTO TB_PARCELAMENTO VALUES('1111','1','50.00','50.00','2018-01-21','2018-01-21','','1','56','0');

INSERT INTO TB_PARCELAMENTO VALUES('1112','1','150.00','150.00','2018-01-21','2018-02-05','','1','55','0');

INSERT INTO TB_PARCELAMENTO VALUES('1113','1','150.00','160.00','2018-01-21','2018-02-25','','2','54','0');

INSERT INTO TB_PARCELAMENTO VALUES('1114','1','0.00','0.00','2018-01-21','2018-02-01','','1','53','0');

INSERT INTO TB_PARCELAMENTO VALUES('1115','1','150.00','160.00','2018-01-21','2018-02-24','','2','52','0');

INSERT INTO TB_PARCELAMENTO VALUES('1116','1','150.00','150.00','2018-01-21','2018-02-01','','1','51','0');

INSERT INTO TB_PARCELAMENTO VALUES('1117','1','150.00','150.00','2018-01-21','2018-01-12','','1','50','0');

INSERT INTO TB_PARCELAMENTO VALUES('1118','1','160.00','0.00','2018-01-21','','','1','49','0');

INSERT INTO TB_PARCELAMENTO VALUES('1119','1','160.00','150.00','2018-01-21','2018-02-05','','1','48','0');

INSERT INTO TB_PARCELAMENTO VALUES('1120','1','150.00','0.00','2018-01-21','','','1','47','0');

INSERT INTO TB_PARCELAMENTO VALUES('1121','1','150.00','150.00','2018-01-21','2018-02-04','','1','46','0');

INSERT INTO TB_PARCELAMENTO VALUES('1122','1','50.00','50.00','2018-01-21','2018-01-21','','1','45','0');

INSERT INTO TB_PARCELAMENTO VALUES('1123','1','150.00','0.00','2018-01-21','','','1','44','0');

INSERT INTO TB_PARCELAMENTO VALUES('1124','1','150.00','0.00','2018-01-21','','','1','43','0');

INSERT INTO TB_PARCELAMENTO VALUES('1125','1','160.00','150.00','2018-01-21','2018-02-06','','1','42','0');

INSERT INTO TB_PARCELAMENTO VALUES('1126','1','150.00','15000.00','2018-01-21','2018-02-09','','1','37','0');

INSERT INTO TB_PARCELAMENTO VALUES('1127','1','150.00','150.00','2018-01-21','2018-01-12','','1','35','0');

INSERT INTO TB_PARCELAMENTO VALUES('1128','1','150.00','150.00','2018-01-21','2018-01-12','','1','34','0');

INSERT INTO TB_PARCELAMENTO VALUES('1129','1','75.00','75.00','2018-01-21','2018-01-21','','1','32','0');

INSERT INTO TB_PARCELAMENTO VALUES('1130','1','150.00','0.00','2018-01-21','','','1','31','0');

INSERT INTO TB_PARCELAMENTO VALUES('1131','1','150.00','0.00','2018-01-21','','','1','30','0');

INSERT INTO TB_PARCELAMENTO VALUES('1132','1','75.00','75.00','2018-01-21','2018-01-21','','1','29','0');

INSERT INTO TB_PARCELAMENTO VALUES('1133','1','150.00','0.00','2018-01-21','','','1','28','0');

INSERT INTO TB_PARCELAMENTO VALUES('1135','1','160.00','0.00','2018-01-21','','','1','26','0');

INSERT INTO TB_PARCELAMENTO VALUES('1136','1','50.00','50.00','2018-01-21','2018-01-21','','1','24','0');

INSERT INTO TB_PARCELAMENTO VALUES('1137','1','150.00','150.00','2018-01-21','2018-01-12','','1','25','0');

INSERT INTO TB_PARCELAMENTO VALUES('1138','1','150.00','0.00','2018-01-21','','','1','19','0');

INSERT INTO TB_PARCELAMENTO VALUES('1140','1','150.00','150.00','2018-01-21','2018-01-29','','1','22','0');

INSERT INTO TB_PARCELAMENTO VALUES('1141','1','150.00','0.00','2018-01-21','','','1','21','0');

INSERT INTO TB_PARCELAMENTO VALUES('1142','1','150.00','0.00','2018-01-21','','','1','20','0');

INSERT INTO TB_PARCELAMENTO VALUES('1143','1','150.00','150.00','2018-01-21','2017-02-06','','1','18','0');

INSERT INTO TB_PARCELAMENTO VALUES('1144','1','150.00','0.00','2018-01-21','','','1','17','0');

INSERT INTO TB_PARCELAMENTO VALUES('1145','1','160.00','160.00','2018-01-21','2018-01-26','','2','16','0');

INSERT INTO TB_PARCELAMENTO VALUES('1146','1','150.00','150.00','2018-01-21','2018-01-12','','1','15','0');

INSERT INTO TB_PARCELAMENTO VALUES('1147','1','150.00','150.00','2018-01-21','2018-02-21','','1','14','0');

INSERT INTO TB_PARCELAMENTO VALUES('1148','1','50.00','50.00','2018-01-21','2018-01-21','','1','12','0');

INSERT INTO TB_PARCELAMENTO VALUES('1149','1','150.00','150.00','2018-01-21','2018-02-08','','1','11','0');

INSERT INTO TB_PARCELAMENTO VALUES('1150','1','150.00','0.00','2018-01-21','','','1','10','0');

INSERT INTO TB_PARCELAMENTO VALUES('1151','1','80.00','80.00','2018-01-21','2018-01-21','','1','9','0');

INSERT INTO TB_PARCELAMENTO VALUES('1152','1','50.00','50.00','2018-01-21','2018-01-21','','1','8','0');

INSERT INTO TB_PARCELAMENTO VALUES('1153','1','150.00','150.00','2018-01-21','2018-01-12','','1','7','0');

INSERT INTO TB_PARCELAMENTO VALUES('1154','1','150.00','150.00','2018-01-21','2018-02-05','','1','6','0');

INSERT INTO TB_PARCELAMENTO VALUES('1155','1','150.00','150.00','2018-01-21','2018-01-26','','1','5','0');

INSERT INTO TB_PARCELAMENTO VALUES('1156','1','150.00','0.00','2018-01-21','','','1','4','0');

INSERT INTO TB_PARCELAMENTO VALUES('1157','1','60.00','60.00','2018-01-21','2018-01-21','','1','3','0');

INSERT INTO TB_PARCELAMENTO VALUES('1158','1','150.00','0.00','2018-01-21','','','1','2','0');

INSERT INTO TB_PARCELAMENTO VALUES('1160','1','80.00','80.00','2018-01-22','2018-01-22','','1','140','0');

INSERT INTO TB_PARCELAMENTO VALUES('1161','1','150.00','160.00','2018-01-22','2018-01-31','','2','141','0');

INSERT INTO TB_PARCELAMENTO VALUES('1162','1','150.00','160.00','2018-01-22','2018-01-31','','2','142','0');

INSERT INTO TB_PARCELAMENTO VALUES('1163','1','150.00','150.00','2018-01-22','2018-01-31','Pagou 10,00 à mais','1','143','0');

INSERT INTO TB_PARCELAMENTO VALUES('1165','1','150.00','0.00','2018-01-23','','','3','144','0');

INSERT INTO TB_PARCELAMENTO VALUES('1166','1','150.00','0.00','2018-01-23','','','1','145','0');

INSERT INTO TB_PARCELAMENTO VALUES('1167','1','80.00','80.00','2018-01-23','2018-01-23','','1','146','0');

INSERT INTO TB_PARCELAMENTO VALUES('1168','1','150.00','0.00','2018-01-23','','','1','131','0');

INSERT INTO TB_PARCELAMENTO VALUES('1169','1','160.00','160.00','2018-01-23','2018-01-25','','2','147','0');

INSERT INTO TB_PARCELAMENTO VALUES('1170','1','150.00','0.00','2018-01-23','','','3','148','0');

INSERT INTO TB_PARCELAMENTO VALUES('1172','1','150.00','150.00','2018-01-24','2018-02-04','','1','149','0');

INSERT INTO TB_PARCELAMENTO VALUES('1173','1','150.00','150.00','2018-01-24','2018-02-06','','1','150','0');

INSERT INTO TB_PARCELAMENTO VALUES('1174','1','150.00','150.00','2018-01-24','2018-01-26','','1','151','0');

INSERT INTO TB_PARCELAMENTO VALUES('1175','1','160.00','160.00','2018-01-24','2018-02-24','','2','152','0');

INSERT INTO TB_PARCELAMENTO VALUES('1176','1','160.00','160.00','2018-01-24','2018-02-24','','2','153','0');

INSERT INTO TB_PARCELAMENTO VALUES('1177','2','100.00','100.00','2018-01-25','2018-02-04','','1','12','0');

INSERT INTO TB_PARCELAMENTO VALUES('1179','2','100.00','100.00','2018-01-25','2018-01-31','','1','45','0');

INSERT INTO TB_PARCELAMENTO VALUES('1180','2','75.00','75.00','2018-01-25','2018-02-05','','1','32','0');

INSERT INTO TB_PARCELAMENTO VALUES('1181','2','75.00','75.00','2018-01-25','2018-02-05','','1','29','0');

INSERT INTO TB_PARCELAMENTO VALUES('1182','2','100.00','100.00','2018-01-25','2018-01-31','','1','24','0');

INSERT INTO TB_PARCELAMENTO VALUES('1183','2','100.00','0.00','2018-01-25','','','1','56','0');

INSERT INTO TB_PARCELAMENTO VALUES('1184','2','60.00','160.00','2018-01-25','2018-02-08','','1','98','0');

INSERT INTO TB_PARCELAMENTO VALUES('1185','3','60.00','0.00','2018-01-30','','','1','98','0');

INSERT INTO TB_PARCELAMENTO VALUES('1187','2','90.00','0.00','2018-01-25','','','1','3','0');

INSERT INTO TB_PARCELAMENTO VALUES('1188','2','100.00','100.00','2018-01-25','2017-02-06','','1','122','0');

INSERT INTO TB_PARCELAMENTO VALUES('1189','2','100.00','100.00','2018-01-25','2018-02-08','','1','8','0');

INSERT INTO TB_PARCELAMENTO VALUES('1190','2','70.00','0.00','2018-01-25','','','1','140','0');

INSERT INTO TB_PARCELAMENTO VALUES('1191','2','70.00','0.00','2018-01-25','','','1','146','0');

INSERT INTO TB_PARCELAMENTO VALUES('1192','2','70.00','0.00','2018-01-25','','','1','9','0');

INSERT INTO TB_PARCELAMENTO VALUES('1193','1','130.00','130.00','2018-01-25','2018-01-26','Desconto por ser de Formosa','3','154','0');

INSERT INTO TB_PARCELAMENTO VALUES('1194','1','160.00','160.00','2018-01-25','2018-01-25','','2','155','0');

INSERT INTO TB_PARCELAMENTO VALUES('1197','1','150.00','150.00','2018-01-26','2018-01-27','','1','156','0');

INSERT INTO TB_PARCELAMENTO VALUES('1198','1','150.00','150.00','2018-01-26','2018-02-06','','1','158','0');

INSERT INTO TB_PARCELAMENTO VALUES('1199','1','150.00','150.00','2018-01-26','2018-01-27','','1','159','0');

INSERT INTO TB_PARCELAMENTO VALUES('1200','1','75.00','75.00','2018-01-27','2018-01-27','','3','157','0');

INSERT INTO TB_PARCELAMENTO VALUES('1201','2','75.00','75.00','2018-01-27','2018-02-08','','1','157','0');

INSERT INTO TB_PARCELAMENTO VALUES('1202','1','150.00','150.00','2018-01-27','2018-01-25','','3','160','0');

INSERT INTO TB_PARCELAMENTO VALUES('1203','1','150.00','150.00','2018-01-27','2018-01-25','','3','161','0');

INSERT INTO TB_PARCELAMENTO VALUES('1204','1','150.00','0.00','2018-01-27','','','1','162','0');

INSERT INTO TB_PARCELAMENTO VALUES('1205','1','150.00','150.00','2018-01-27','2018-02-06','','1','163','0');

INSERT INTO TB_PARCELAMENTO VALUES('1206','1','150.00','0.00','2018-01-27','','','1','164','0');

INSERT INTO TB_PARCELAMENTO VALUES('1207','1','100.00','100.00','2018-01-28','2018-01-28','','1','23','0');

INSERT INTO TB_PARCELAMENTO VALUES('1208','2','50.00','0.00','2018-01-28','','','1','23','0');

INSERT INTO TB_PARCELAMENTO VALUES('1209','1','160.00','160.00','2018-01-28','2018-02-08','','2','165','0');

INSERT INTO TB_PARCELAMENTO VALUES('1210','1','130.00','130.00','2018-01-29','2018-01-29','Desconto de 20,00 do pessoal de Formosa.','3','166','0');

INSERT INTO TB_PARCELAMENTO VALUES('1212','1','150.00','150.00','2018-01-29','2018-02-05','','1','167','0');

INSERT INTO TB_PARCELAMENTO VALUES('1214','1','150.00','150.00','2018-01-29','2018-02-05','','1','168','0');

INSERT INTO TB_PARCELAMENTO VALUES('1215','1','150.00','150.00','2018-01-30','2018-01-31','Desconto, meninos das irmãs.','1','169','0');

INSERT INTO TB_PARCELAMENTO VALUES('1216','1','150.00','150.00','2018-01-30','2018-01-31','Desconto meninos das irmãs','1','170','0');

INSERT INTO TB_PARCELAMENTO VALUES('1217','1','150.00','150.00','2018-01-30','2018-02-01','Desconto de 60,00\n\n\nAutorizado pela coordenação.','3','171','0');

INSERT INTO TB_PARCELAMENTO VALUES('1220','1','0.00','0.00','2018-02-01','2018-02-02','','1','172','0');

INSERT INTO TB_PARCELAMENTO VALUES('1221','1','150.00','0.00','2018-02-01','','','1','173','0');

INSERT INTO TB_PARCELAMENTO VALUES('1222','1','150.00','0.00','2018-02-01','','','1','174','0');

INSERT INTO TB_PARCELAMENTO VALUES('1223','1','150.00','150.00','2018-02-02','','','1','175','0');

INSERT INTO TB_PARCELAMENTO VALUES('1224','1','150.00','150.00','2018-02-02','2018-02-04','','1','176','0');

INSERT INTO TB_PARCELAMENTO VALUES('1225','1','160.00','160.00','2018-02-02','2018-02-04','','2','177','0');

INSERT INTO TB_PARCELAMENTO VALUES('1226','1','150.00','15000.00','2018-02-03','2018-02-09','','1','178','0');

INSERT INTO TB_PARCELAMENTO VALUES('1227','1','150.00','160.00','2018-02-03','2018-02-06','','1','179','0');

INSERT INTO TB_PARCELAMENTO VALUES('1229','1','150.00','160.00','2018-02-03','2018-02-06','','3','180','0');

INSERT INTO TB_PARCELAMENTO VALUES('1230','1','160.00','160.00','2018-02-03','2018-02-06','','2','181','0');

INSERT INTO TB_PARCELAMENTO VALUES('1231','1','150.00','0.00','2018-02-04','','','1','182','0');

INSERT INTO TB_PARCELAMENTO VALUES('1233','1','150.00','15000.00','2018-02-04','2018-02-09','','1','183','0');

INSERT INTO TB_PARCELAMENTO VALUES('1234','1','150.00','160.00','2018-02-04','2018-02-24','','2','184','0');

INSERT INTO TB_PARCELAMENTO VALUES('1236','1','150.00','150.00','2018-02-04','2018-02-08','','1','185','0');

INSERT INTO TB_PARCELAMENTO VALUES('1237','1','150.00','160.00','2018-02-05','2018-02-08','','1','186','0');

INSERT INTO TB_PARCELAMENTO VALUES('1238','1','150.00','15000.00','2018-02-05','2018-02-09','','1','187','0');

INSERT INTO TB_PARCELAMENTO VALUES('1239','1','150.00','150.00','2018-02-05','2018-02-08','','1','188','0');

INSERT INTO TB_PARCELAMENTO VALUES('1240','1','150.00','0.00','2018-02-05','','','1','189','0');

INSERT INTO TB_PARCELAMENTO VALUES('1241','1','75.00','105.00','2018-02-05','2018-02-05','','1','27','0');

INSERT INTO TB_PARCELAMENTO VALUES('1242','2','75.00','75.00','2018-02-05','2018-02-21','','1','27','0');

INSERT INTO TB_PARCELAMENTO VALUES('1243','1','75.00','105.00','2018-02-05','2018-02-05','','1','118','0');

INSERT INTO TB_PARCELAMENTO VALUES('1244','2','75.00','75.00','2018-02-05','2018-02-05','','1','118','0');

INSERT INTO TB_PARCELAMENTO VALUES('1245','1','150.00','0.00','2018-02-05','','','1','190','0');

INSERT INTO TB_PARCELAMENTO VALUES('1246','1','160.00','0.00','2018-02-05','','','2','191','0');

INSERT INTO TB_PARCELAMENTO VALUES('1249','1','150.00','0.00','2018-02-07','','','1','193','0');

INSERT INTO TB_PARCELAMENTO VALUES('1250','1','150.00','0.00','2018-02-07','','','1','194','0');

INSERT INTO TB_PARCELAMENTO VALUES('1251','1','150.00','0.00','2018-02-07','','','1','195','0');

INSERT INTO TB_PARCELAMENTO VALUES('1253','1','0.00','0.00','2018-02-07','2018-02-07','','1','196','0');

INSERT INTO TB_PARCELAMENTO VALUES('1254','1','150.00','160.00','2018-02-07','2018-02-09','','2','197','0');

INSERT INTO TB_PARCELAMENTO VALUES('1255','1','150.00','0.00','2018-02-07','','','1','198','0');

INSERT INTO TB_PARCELAMENTO VALUES('1257','1','150.00','0.00','2018-02-07','','','1','199','0');

INSERT INTO TB_PARCELAMENTO VALUES('1258','1','150.00','0.00','2018-02-07','','','1','200','0');

INSERT INTO TB_PARCELAMENTO VALUES('1260','1','150.00','15000.00','2018-02-08','2018-02-09','','1','201','0');

INSERT INTO TB_PARCELAMENTO VALUES('1261','1','150.00','0.00','2018-02-08','','','1','202','0');

INSERT INTO TB_PARCELAMENTO VALUES('1263','1','150.00','150.00','2018-02-08','2018-02-08','','1','203','0');

INSERT INTO TB_PARCELAMENTO VALUES('1264','1','150.00','0.00','2018-02-08','','','1','204','0');

INSERT INTO TB_PARCELAMENTO VALUES('1266','1','75.00','0.00','2018-02-08','','','1','87','0');

INSERT INTO TB_PARCELAMENTO VALUES('1267','2','75.00','0.00','2018-02-08','','','1','87','0');

INSERT INTO TB_PARCELAMENTO VALUES('1268','1','150.00','0.00','2018-02-08','','','1','205','0');

INSERT INTO TB_PARCELAMENTO VALUES('1270','1','80.00','150.00','2018-02-08','2018-02-08','','1','192','0');

INSERT INTO TB_PARCELAMENTO VALUES('1271','2','80.00','0.00','2018-02-08','','','1','192','0');

INSERT INTO TB_PARCELAMENTO VALUES('1272','1','75.00','75.00','2018-02-08','2018-02-08','','1','112','0');

INSERT INTO TB_PARCELAMENTO VALUES('1273','2','75.00','0.00','2018-02-08','','','1','112','0');

INSERT INTO TB_PARCELAMENTO VALUES('1274','1','150.00','150.00','2018-02-08','2018-02-09','','1','206','0');

INSERT INTO TB_PARCELAMENTO VALUES('1276','1','150.00','0.00','2018-02-08','','','1','207','0');

INSERT INTO TB_PARCELAMENTO VALUES('1278','1','160.00','150.00','2018-02-09','2018-02-09','','1','208','0');

INSERT INTO TB_PARCELAMENTO VALUES('1279','1','150.00','0.00','2018-02-09','','','1','209','0');

INSERT INTO TB_PARCELAMENTO VALUES('1280','1','160.00','150.00','2018-02-09','2018-02-09','','3','210','0');

INSERT INTO TB_PARCELAMENTO VALUES('1281','1','150.00','150.00','2018-02-09','2018-02-09','','1','211','0');

INSERT INTO TB_PARCELAMENTO VALUES('1282','1','160.00','0.00','2018-02-09','','','2','212','0');

INSERT INTO TB_PARCELAMENTO VALUES('1283','1','150.00','0.00','2018-02-09','','','1','213','0');

INSERT INTO TB_PARCELAMENTO VALUES('1285','1','80.00','80.00','2018-04-19','2018-06-23','','2','215','0');

INSERT INTO TB_PARCELAMENTO VALUES('1286','1','80.00','80.00','2018-04-23','2018-07-05','','2','216','0');

INSERT INTO TB_PARCELAMENTO VALUES('1287','1','80.00','80.00','2018-04-23','2018-07-02','Pago nesta data para Lucrece !','2','217','0');

INSERT INTO TB_PARCELAMENTO VALUES('1288','1','80.00','80.00','2018-04-24','2018-07-02','Pago pra Fernanda','1','218','0');

INSERT INTO TB_PARCELAMENTO VALUES('1292','1','80.00','40.00','2018-04-24','2018-07-04','Pago para Lucrece','1','220','0');

INSERT INTO TB_PARCELAMENTO VALUES('1293','1','80.00','80.00','2018-04-24','2018-07-03','','2','221','0');

INSERT INTO TB_PARCELAMENTO VALUES('1294','1','80.00','0.00','2018-04-24','','','1','222','0');

INSERT INTO TB_PARCELAMENTO VALUES('1295','1','80.00','0.00','2018-04-25','','','1','223','0');

INSERT INTO TB_PARCELAMENTO VALUES('1297','1','80.00','80.00','2018-04-25','2018-06-16','','1','225','0');

INSERT INTO TB_PARCELAMENTO VALUES('1298','1','80.00','40.00','2018-04-25','2018-06-14','','3','226','0');

INSERT INTO TB_PARCELAMENTO VALUES('1300','1','80.00','80.00','2018-04-26','2018-05-05','Dinheiro Lucreci','1','228','0');

INSERT INTO TB_PARCELAMENTO VALUES('1304','1','80.00','0.00','2018-04-28','','','1','231','0');

INSERT INTO TB_PARCELAMENTO VALUES('1307','1','80.00','80.00','2018-04-29','2018-07-05','','1','232','0');

INSERT INTO TB_PARCELAMENTO VALUES('1308','1','80.00','80.00','2018-04-29','2018-07-05','','3','233','0');

INSERT INTO TB_PARCELAMENTO VALUES('1309','1','80.00','0.00','2018-04-30','','','1','234','0');

INSERT INTO TB_PARCELAMENTO VALUES('1310','1','80.00','80.00','2018-04-30','2018-07-04','','2','235','0');

INSERT INTO TB_PARCELAMENTO VALUES('1311','1','80.00','0.01','2018-04-30','2018-07-05','So pra entrar na lista','1','236','0');

INSERT INTO TB_PARCELAMENTO VALUES('1312','1','80.00','0.00','2018-04-30','','Dinheiro pago pelo ADM','1','237','0');

INSERT INTO TB_PARCELAMENTO VALUES('1313','1','80.00','0.00','2018-04-30','','','1','238','0');

INSERT INTO TB_PARCELAMENTO VALUES('1314','1','80.00','80.00','2018-05-01','2018-06-23','','2','239','0');

INSERT INTO TB_PARCELAMENTO VALUES('1315','1','80.00','40.00','2018-05-01','2018-07-02','Pago para Lucrece','1','240','0');

INSERT INTO TB_PARCELAMENTO VALUES('1316','1','80.00','40.00','2018-05-01','2018-06-30','Pago para Lucrece','1','241','0');

INSERT INTO TB_PARCELAMENTO VALUES('1318','1','80.00','70.00','2018-05-04','2018-06-30','Pago para Lucrece\n\n\nFalta 10,00 reais que a Fernanda Gomes irá pagar.','1','243','0');

INSERT INTO TB_PARCELAMENTO VALUES('1319','1','80.00','80.00','2018-05-06','2018-07-02','Pago para Lucrece','1','244','0');

INSERT INTO TB_PARCELAMENTO VALUES('1320','1','80.00','80.00','2018-05-09','2018-07-01','','1','245','0');

INSERT INTO TB_PARCELAMENTO VALUES('1321','1','80.00','80.00','2018-05-09','2018-07-03','','1','246','0');

INSERT INTO TB_PARCELAMENTO VALUES('1322','1','80.00','80.00','2018-05-12','2018-05-15','','1','247','0');

INSERT INTO TB_PARCELAMENTO VALUES('1324','1','80.00','80.00','2018-05-15','2018-07-03','Pago nesta data para Lucrece','2','249','0');

INSERT INTO TB_PARCELAMENTO VALUES('1325','1','80.00','80.00','2018-05-20','2018-07-02','Para Fernanda','1','250','0');

INSERT INTO TB_PARCELAMENTO VALUES('1326','1','80.00','0.00','2018-05-20','','','1','251','0');

INSERT INTO TB_PARCELAMENTO VALUES('1327','1','80.00','0.00','2018-05-27','','','2','252','0');

INSERT INTO TB_PARCELAMENTO VALUES('1334','1','26.67','30.00','2018-05-28','2018-05-19','Pago à Fernanda.','1','227','0');

INSERT INTO TB_PARCELAMENTO VALUES('1337','2','25.00','0.00','2018-05-28','','','1','227','0');

INSERT INTO TB_PARCELAMENTO VALUES('1338','3','25.00','50.00','2018-05-28','2018-06-17','','1','227','0');

INSERT INTO TB_PARCELAMENTO VALUES('1340','1','80.00','0.00','2018-05-31','','','1','254','0');

INSERT INTO TB_PARCELAMENTO VALUES('1341','1','80.00','80.00','2018-06-04','2018-07-03','','1','255','0');

INSERT INTO TB_PARCELAMENTO VALUES('1342','1','80.00','0.00','2018-06-04','','','1','256','0');

INSERT INTO TB_PARCELAMENTO VALUES('1343','1','80.00','80.00','2018-06-04','2018-07-01','','2','257','0');

INSERT INTO TB_PARCELAMENTO VALUES('1344','1','80.00','80.00','2018-06-04','2018-07-02','','1','258','0');

INSERT INTO TB_PARCELAMENTO VALUES('1345','1','80.00','80.00','2018-06-07','2018-07-03','','1','259','0');

INSERT INTO TB_PARCELAMENTO VALUES('1346','1','80.00','0.00','2018-06-10','','','1','260','0');

INSERT INTO TB_PARCELAMENTO VALUES('1347','1','80.00','80.00','2018-06-15','2018-06-15','Pago!','1','229','0');

INSERT INTO TB_PARCELAMENTO VALUES('1348','1','80.00','80.00','2018-06-17','2018-07-03','','1','261','0');

INSERT INTO TB_PARCELAMENTO VALUES('1349','1','80.00','80.00','2018-06-18','2018-07-05','','1','262','0');

INSERT INTO TB_PARCELAMENTO VALUES('1352','1','40.00','25.00','2018-06-19','2018-06-19','Pagamento para Leticia','1','230','0');

INSERT INTO TB_PARCELAMENTO VALUES('1353','2','40.00','55.00','2018-06-19','2018-06-19','Pag. Para Letícia','2','230','0');

INSERT INTO TB_PARCELAMENTO VALUES('1354','1','40.00','25.00','2018-06-19','2018-06-19','Pag. Para Letícia','1','224','0');

INSERT INTO TB_PARCELAMENTO VALUES('1355','2','40.00','55.00','2018-06-19','2018-06-19','Pag. Para Letícia','2','224','0');

INSERT INTO TB_PARCELAMENTO VALUES('1356','1','80.00','80.00','2018-06-21','2018-07-01','','2','263','0');

INSERT INTO TB_PARCELAMENTO VALUES('1357','1','80.00','0.00','2018-06-21','','','1','264','0');

INSERT INTO TB_PARCELAMENTO VALUES('1358','1','80.00','0.00','2018-06-21','','','1','265','0');

INSERT INTO TB_PARCELAMENTO VALUES('1361','1','80.00','80.00','2018-06-21','2018-06-21','Pago para Lucrece','1','253','0');

INSERT INTO TB_PARCELAMENTO VALUES('1362','1','0.00','80.00','2018-06-23','2018-06-23','Pago para a Letícia','1','219','0');

INSERT INTO TB_PARCELAMENTO VALUES('1363','1','80.00','80.00','2018-06-30','2018-07-04','','1','266','0');

INSERT INTO TB_PARCELAMENTO VALUES('1364','1','80.00','80.00','2018-06-30','2018-07-04','','1','267','0');

INSERT INTO TB_PARCELAMENTO VALUES('1366','1','80.00','80.00','2018-07-01','2018-07-03','','1','268','0');

INSERT INTO TB_PARCELAMENTO VALUES('1367','1','60.00','60.00','2018-07-01','2018-07-01','','2','214','0');

INSERT INTO TB_PARCELAMENTO VALUES('1368','1','60.00','60.00','2018-07-01','2018-07-01','','2','248','0');

INSERT INTO TB_PARCELAMENTO VALUES('1369','1','80.00','0.00','2018-07-02','','','1','269','0');

INSERT INTO TB_PARCELAMENTO VALUES('1371','1','80.00','80.00','2018-07-02','2018-07-03','','1','271','0');

INSERT INTO TB_PARCELAMENTO VALUES('1372','2','30.00','0.00','2018-07-03','','','1','237','0');

INSERT INTO TB_PARCELAMENTO VALUES('1373','2','10.00','10.00','2018-07-03','2018-07-14','','1','243','0');

INSERT INTO TB_PARCELAMENTO VALUES('1374','1','80.00','80.00','2018-07-03','2018-07-05','','1','272','0');

INSERT INTO TB_PARCELAMENTO VALUES('1376','2','40.00','40.00','2018-07-03','2018-07-03','','1','240','0');

INSERT INTO TB_PARCELAMENTO VALUES('1377','2','40.00','40.00','2018-07-03','2018-07-03','','1','241','0');

INSERT INTO TB_PARCELAMENTO VALUES('1378','2','40.00','0.00','2018-07-03','','','1','226','0');

INSERT INTO TB_PARCELAMENTO VALUES('1379','1','80.00','80.00','2018-07-03','2018-07-03','','1','273','0');

INSERT INTO TB_PARCELAMENTO VALUES('1380','1','80.00','80.00','2018-07-03','2018-07-03','Meninas das irmãs\n\n\nPago para Letícia','1','274','0');

INSERT INTO TB_PARCELAMENTO VALUES('1381','1','80.00','0.00','2018-07-03','','','1','275','0');

INSERT INTO TB_PARCELAMENTO VALUES('1382','1','80.00','0.01','2018-07-04','2018-07-05','SO pra entrar na lista','1','276','0');

INSERT INTO TB_PARCELAMENTO VALUES('1383','1','80.00','0.00','2018-07-04','','','1','277','0');

INSERT INTO TB_PARCELAMENTO VALUES('1385','1','40.00','40.00','2018-07-05','2018-07-04','','1','270','0');

INSERT INTO TB_PARCELAMENTO VALUES('1386','2','40.00','40.00','2018-07-05','2018-07-05','Pago para lilian','1','270','0');

INSERT INTO TB_PARCELAMENTO VALUES('1387','2','40.00','0.00','2018-07-05','','','1','220','0');

INSERT INTO TB_PARCELAMENTO VALUES('1390','1','80.00','0.01','2018-07-05','2018-07-05','So pra aparecer na lista','1','242','0');

INSERT INTO TB_PARCELAMENTO VALUES('1391','2','79.99','0.00','2018-07-05','','','1','242','0');

INSERT INTO TB_PARCELAMENTO VALUES('1392','2','79.99','0.00','2018-07-05','','','1','276','0');

INSERT INTO TB_PARCELAMENTO VALUES('1397','1','170.00','0.00','2019-01-14','','','2','279','0');

INSERT INTO TB_PARCELAMENTO VALUES('1398','1','160.00','0.00','2019-01-14','','','1','280','0');

INSERT INTO TB_PARCELAMENTO VALUES('1399','1','160.00','170.00','2019-01-17','2019-02-25','','3','281','33');

INSERT INTO TB_PARCELAMENTO VALUES('1400','1','160.00','0.00','2019-01-18','','','1','282','0');

INSERT INTO TB_PARCELAMENTO VALUES('1401','1','160.00','0.00','2019-01-20','','','1','283','0');

INSERT INTO TB_PARCELAMENTO VALUES('1402','1','160.00','0.00','2019-01-20','','','3','284','0');

INSERT INTO TB_PARCELAMENTO VALUES('1403','1','160.00','0.00','2019-01-20','','','3','285','0');

INSERT INTO TB_PARCELAMENTO VALUES('1404','1','160.00','0.00','2019-01-20','','','1','286','0');

INSERT INTO TB_PARCELAMENTO VALUES('1406','1','160.00','0.00','2019-01-20','','','1','288','0');

INSERT INTO TB_PARCELAMENTO VALUES('1407','1','160.00','0.00','2019-01-20','','','1','289','0');

INSERT INTO TB_PARCELAMENTO VALUES('1409','1','160.00','0.00','2019-01-20','','','1','291','0');

INSERT INTO TB_PARCELAMENTO VALUES('1410','1','160.00','0.00','2019-01-20','','','1','292','0');

INSERT INTO TB_PARCELAMENTO VALUES('1411','1','160.00','160.00','2019-01-20','2019-02-23','','1','293','33');

INSERT INTO TB_PARCELAMENTO VALUES('1412','1','160.00','170.00','2019-01-20','2019-01-21','retirante pagou no dia 21/01, comprovante de pagamento enviado para o Linneker !','2','294','8');

INSERT INTO TB_PARCELAMENTO VALUES('1413','1','160.00','160.00','2019-01-20','2019-02-23','','1','295','33');

INSERT INTO TB_PARCELAMENTO VALUES('1414','1','160.00','0.00','2019-01-20','','','1','296','0');

INSERT INTO TB_PARCELAMENTO VALUES('1415','1','160.00','0.00','2019-01-20','','','3','297','0');

INSERT INTO TB_PARCELAMENTO VALUES('1417','1','160.00','160.00','2019-01-20','2019-02-25','','1','298','33');

INSERT INTO TB_PARCELAMENTO VALUES('1418','1','160.00','170.00','2019-01-20','2019-02-11','','3','299','33');

INSERT INTO TB_PARCELAMENTO VALUES('1419','1','160.00','0.00','2019-01-20','','','1','300','0');

INSERT INTO TB_PARCELAMENTO VALUES('1420','1','160.00','0.00','2019-01-21','','','1','301','0');

INSERT INTO TB_PARCELAMENTO VALUES('1422','1','160.00','160.00','2019-01-21','2019-02-28','','1','303','5');

INSERT INTO TB_PARCELAMENTO VALUES('1423','1','160.00','170.00','2019-01-21','2019-02-15','','2','304','32');

INSERT INTO TB_PARCELAMENTO VALUES('1426','1','160.00','0.00','2019-01-21','','','3','305','0');

INSERT INTO TB_PARCELAMENTO VALUES('1427','1','160.00','170.00','2019-01-21','2019-02-27','','3','306','33');

INSERT INTO TB_PARCELAMENTO VALUES('1428','1','160.00','170.00','2019-01-21','2019-01-29','Conta da Vick.','3','307','4');

INSERT INTO TB_PARCELAMENTO VALUES('1431','1','170.00','160.00','2019-01-21','2019-02-23','Taynara pagou  em mãos o valor de R$160,00 referente ao retiro.','1','308','32');

INSERT INTO TB_PARCELAMENTO VALUES('1432','1','170.00','0.00','2019-01-21','','','2','309','0');

INSERT INTO TB_PARCELAMENTO VALUES('1433','1','160.00','0.00','2019-01-21','','','1','310','0');

INSERT INTO TB_PARCELAMENTO VALUES('1435','1','170.00','170.00','2019-01-21','2019-02-13','','2','312','32');

INSERT INTO TB_PARCELAMENTO VALUES('1436','1','160.00','160.00','2019-01-21','2019-02-17','','1','313','33');

INSERT INTO TB_PARCELAMENTO VALUES('1437','1','160.00','0.00','2019-01-21','','','1','314','0');

INSERT INTO TB_PARCELAMENTO VALUES('1438','1','160.00','160.00','2019-01-21','2019-02-08','','1','315','8');

INSERT INTO TB_PARCELAMENTO VALUES('1440','1','15.00','15.00','2019-01-21','2019-01-31','Pagos a Letícia no dia da missa de Dom Bosco','1','278','1');

INSERT INTO TB_PARCELAMENTO VALUES('1441','1','160.00','160.00','2019-01-21','2019-02-20','Conta do Banco do Brasil - Thay','3','316','5');

INSERT INTO TB_PARCELAMENTO VALUES('1442','1','160.00','0.00','2019-01-21','','','1','317','0');

INSERT INTO TB_PARCELAMENTO VALUES('1443','1','170.00','0.00','2019-01-21','','','2','318','0');

INSERT INTO TB_PARCELAMENTO VALUES('1445','1','160.00','0.00','2019-01-21','','','1','320','0');

INSERT INTO TB_PARCELAMENTO VALUES('1447','1','160.00','0.00','2019-01-21','','','1','321','0');

INSERT INTO TB_PARCELAMENTO VALUES('1448','1','160.00','170.00','2019-01-21','2019-02-13','','2','322','32');

INSERT INTO TB_PARCELAMENTO VALUES('1450','1','160.00','100.00','2019-01-21','2019-02-23','Pagará o restante no retiro','1','323','33');

INSERT INTO TB_PARCELAMENTO VALUES('1452','1','160.00','170.00','2019-01-22','2019-02-12','','2','325','33');

INSERT INTO TB_PARCELAMENTO VALUES('1453','1','160.00','160.00','2019-01-23','2019-02-16','Eu, Karen Geovanna recebi o valor de R$160,00 em mãos referente ao pagamento do retiro da inscrita Ariane e repassei o dinheiro para o Linneker.','1','326','32');

INSERT INTO TB_PARCELAMENTO VALUES('1456','1','170.00','170.00','2019-01-24','2019-02-14','Pagamento Via site','2','329','1');

INSERT INTO TB_PARCELAMENTO VALUES('1457','1','170.00','170.00','2019-01-24','2019-02-16','Pago pra Letícia na maquinha','2','330','1');

INSERT INTO TB_PARCELAMENTO VALUES('1458','1','160.00','160.00','2019-01-25','2019-02-20','','1','331','33');

INSERT INTO TB_PARCELAMENTO VALUES('1459','1','160.00','170.00','2019-01-25','2019-02-17','Pagamento Pelo Site','2','332','1');

INSERT INTO TB_PARCELAMENTO VALUES('1460','1','160.00','0.00','2019-01-25','','','1','333','0');

INSERT INTO TB_PARCELAMENTO VALUES('1461','1','160.00','0.00','2019-01-25','','','1','334','0');

INSERT INTO TB_PARCELAMENTO VALUES('1462','1','160.00','170.00','2019-01-25','2019-02-07','','3','335','33');

INSERT INTO TB_PARCELAMENTO VALUES('1463','1','160.00','160.00','2019-01-25','2019-02-15','','1','336','5');

INSERT INTO TB_PARCELAMENTO VALUES('1464','1','160.00','170.00','2019-01-26','2019-02-23','','2','337','4');

INSERT INTO TB_PARCELAMENTO VALUES('1465','1','170.00','0.00','2019-01-26','','','2','338','0');

INSERT INTO TB_PARCELAMENTO VALUES('1466','1','160.00','160.00','2019-01-26','2019-02-24','','1','339','33');

INSERT INTO TB_PARCELAMENTO VALUES('1467','1','170.00','160.00','2019-01-27','2019-02-10','','1','340','32');

INSERT INTO TB_PARCELAMENTO VALUES('1468','1','160.00','170.00','2019-01-28','2019-02-21','','3','341','33');

INSERT INTO TB_PARCELAMENTO VALUES('1469','1','160.00','160.00','2019-01-28','2019-02-22','','1','342','5');

INSERT INTO TB_PARCELAMENTO VALUES('1470','1','160.00','0.00','2019-01-28','','','1','343','0');

INSERT INTO TB_PARCELAMENTO VALUES('1472','1','160.00','100.00','2019-01-28','2019-02-09','','1','344','4');

INSERT INTO TB_PARCELAMENTO VALUES('1475','1','160.00','170.00','2019-01-29','2019-02-23','','2','346','4');

INSERT INTO TB_PARCELAMENTO VALUES('1479','1','160.00','160.00','2019-01-31','2019-02-09','','1','350','33');

INSERT INTO TB_PARCELAMENTO VALUES('1481','1','160.00','170.00','2019-02-03','2019-02-28','','2','352','5');

INSERT INTO TB_PARCELAMENTO VALUES('1482','1','160.00','170.00','2019-02-04','2019-02-07','retirante depositou nesta data na conta da Vick, comprovante de pagamento está em minha posse !','3','353','8');

INSERT INTO TB_PARCELAMENTO VALUES('1492','1','80.00','80.00','2019-02-06','2019-02-06','Pagamento feito pela Karen','1','349','1');

INSERT INTO TB_PARCELAMENTO VALUES('1493','2','80.00','80.00','2019-02-06','2019-03-01','Paguei em mãos o valor faltante de R$80,00 em mãos para Leticia Bessa no dia 01.03.2019 - Karen Geovanna','1','349','1');

INSERT INTO TB_PARCELAMENTO VALUES('1494','1','160.00','170.00','2019-02-07','2019-02-11','','3','357','33');

INSERT INTO TB_PARCELAMENTO VALUES('1495','1','160.00','170.00','2019-02-07','2019-02-16','Foi passado o cartão de crédito na maquininha com a Letícia.','2','358','32');

INSERT INTO TB_PARCELAMENTO VALUES('1496','1','160.00','0.00','2019-02-07','','','1','359','0');

INSERT INTO TB_PARCELAMENTO VALUES('1497','1','170.00','170.00','2019-02-07','2019-02-09','pago no cartão de crédito pelo site !','2','360','8');

INSERT INTO TB_PARCELAMENTO VALUES('1498','1','170.00','0.00','2019-02-08','','','2','361','0');

INSERT INTO TB_PARCELAMENTO VALUES('1500','1','160.00','0.00','2019-02-08','','','1','362','0');

INSERT INTO TB_PARCELAMENTO VALUES('1501','1','160.00','0.00','2019-02-09','','','1','363','0');

INSERT INTO TB_PARCELAMENTO VALUES('1502','1','160.00','0.00','2019-02-09','','','1','364','0');

INSERT INTO TB_PARCELAMENTO VALUES('1503','1','160.00','160.00','2019-02-09','2019-02-21','','3','365','33');

INSERT INTO TB_PARCELAMENTO VALUES('1504','1','160.00','70.00','2019-02-10','2019-02-14','','3','366','33');

INSERT INTO TB_PARCELAMENTO VALUES('1505','1','160.00','70.00','2019-02-10','2019-02-14','','3','367','33');

INSERT INTO TB_PARCELAMENTO VALUES('1506','1','160.00','0.00','2019-02-11','','','1','368','0');

INSERT INTO TB_PARCELAMENTO VALUES('1508','1','160.00','70.00','2019-02-11','2019-02-14','','3','369','33');

INSERT INTO TB_PARCELAMENTO VALUES('1509','1','160.00','0.00','2019-02-12','','','1','370','0');

INSERT INTO TB_PARCELAMENTO VALUES('1510','1','170.00','170.00','2019-02-13','2019-02-16','Pago pra Letícia maquininha','2','371','1');

INSERT INTO TB_PARCELAMENTO VALUES('1511','1','160.00','160.00','2019-02-13','2019-02-23','','1','372','33');

INSERT INTO TB_PARCELAMENTO VALUES('1514','1','160.00','0.00','2019-02-13','','','1','375','0');

INSERT INTO TB_PARCELAMENTO VALUES('1515','1','170.00','170.00','2019-02-14','2019-02-16','A Priscila foi na casa das Bessas para passar o cartão de crédito na maquininha, ela pagou o dela e o do namorado dela no cartão.','2','376','32');

INSERT INTO TB_PARCELAMENTO VALUES('1516','1','160.00','170.00','2019-02-14','2019-02-14','','3','377','33');

INSERT INTO TB_PARCELAMENTO VALUES('1518','1','170.00','0.00','2019-02-14','','','2','379','0');

INSERT INTO TB_PARCELAMENTO VALUES('1519','1','160.00','0.00','2019-02-14','','','1','380','0');

INSERT INTO TB_PARCELAMENTO VALUES('1522','2','90.00','0.00','2019-02-15','','','1','369','0');

INSERT INTO TB_PARCELAMENTO VALUES('1523','2','90.00','100.00','2019-02-15','2019-02-27','','1','367','8');

INSERT INTO TB_PARCELAMENTO VALUES('1524','2','90.00','100.00','2019-02-15','2019-02-27','','1','366','8');

INSERT INTO TB_PARCELAMENTO VALUES('1525','1','160.00','160.00','2019-02-15','2019-02-23','Cartão de débito','3','383','33');

INSERT INTO TB_PARCELAMENTO VALUES('1526','1','160.00','0.00','2019-02-15','','','3','384','0');

INSERT INTO TB_PARCELAMENTO VALUES('1528','1','160.00','0.00','2019-02-16','','','1','386','0');

INSERT INTO TB_PARCELAMENTO VALUES('1529','1','80.00','80.00','2019-02-17','2019-02-17','A Thaynara recebeu R$80,00 em mãos referente ao pagamento do retirante Matheus e repassou para a Letícia.','1','351','32');

INSERT INTO TB_PARCELAMENTO VALUES('1530','2','80.00','0.00','2019-02-17','','','1','351','0');

INSERT INTO TB_PARCELAMENTO VALUES('1531','1','85.00','130.00','2019-02-17','2019-02-16','Foi pago para a Letícia no cartão de crédito passado na maquininha.','2','302','32');

INSERT INTO TB_PARCELAMENTO VALUES('1532','2','30.00','40.00','2019-02-17','2019-02-20','Depositado na conta de Victtória Leal','3','302','33');

INSERT INTO TB_PARCELAMENTO VALUES('1534','1','160.00','0.00','2019-02-18','','','1','388','0');

INSERT INTO TB_PARCELAMENTO VALUES('1535','1','160.00','0.00','2019-02-18','','','1','389','0');

INSERT INTO TB_PARCELAMENTO VALUES('1537','1','160.00','170.00','2019-02-18','2019-02-27','','2','391','33');

INSERT INTO TB_PARCELAMENTO VALUES('1541','1','160.00','170.00','2019-02-18','2019-02-22','Conta da Letícia','3','394','5');

INSERT INTO TB_PARCELAMENTO VALUES('1543','1','160.00','0.00','2019-02-18','','','1','396','0');

INSERT INTO TB_PARCELAMENTO VALUES('1545','1','160.00','170.00','2019-02-19','2019-02-25','','3','397','33');

INSERT INTO TB_PARCELAMENTO VALUES('1547','1','160.00','0.00','2019-02-19','','','1','398','0');

INSERT INTO TB_PARCELAMENTO VALUES('1555','1','170.00','170.00','2019-02-20','2019-02-27','','2','406','8');

INSERT INTO TB_PARCELAMENTO VALUES('1556','1','160.00','160.00','2019-02-21','2019-02-25','','3','407','5');

INSERT INTO TB_PARCELAMENTO VALUES('1558','1','160.00','0.00','2019-02-21','','','1','408','0');

INSERT INTO TB_PARCELAMENTO VALUES('1563','1','125.00','125.00','2019-02-22','2019-02-23','Conta da Vick.','3','410','5');

INSERT INTO TB_PARCELAMENTO VALUES('1565','1','125.00','125.00','2019-02-22','2019-02-22','Conta Vick.','3','409','5');

INSERT INTO TB_PARCELAMENTO VALUES('1566','1','150.00','150.00','2019-02-23','2019-02-23','','1','411','4');

INSERT INTO TB_PARCELAMENTO VALUES('1567','1','150.00','150.00','2019-02-23','2019-02-23','','1','395','33');

INSERT INTO TB_PARCELAMENTO VALUES('1568','1','160.00','0.00','2019-02-24','','','3','412','0');

INSERT INTO TB_PARCELAMENTO VALUES('1575','1','160.00','140.00','2019-02-25','2019-02-25','O valor do retiro foi alterado, a retirante pagou via depósito.','1','418','32');

INSERT INTO TB_PARCELAMENTO VALUES('1577','1','160.00','170.00','2019-02-25','2019-02-25','Conta Letícia','3','419','5');

INSERT INTO TB_PARCELAMENTO VALUES('1578','1','170.00','170.00','2019-02-25','2019-03-02','Pago no retiro','2','420','1');

INSERT INTO TB_PARCELAMENTO VALUES('1580','1','130.00','130.00','2019-02-25','2019-02-26','Conta da Leticia','3','417','5');

INSERT INTO TB_PARCELAMENTO VALUES('1581','1','170.00','0.00','2019-02-25','','','2','422','0');

INSERT INTO TB_PARCELAMENTO VALUES('1586','1','130.00','130.00','2019-02-25','2019-02-25','','1','423','32');

INSERT INTO TB_PARCELAMENTO VALUES('1587','1','130.00','130.00','2019-02-25','2019-02-25','Valor da promoção à vista.','3','424','33');

INSERT INTO TB_PARCELAMENTO VALUES('1588','1','130.00','130.00','2019-02-25','2019-02-25','Valor do desconto à vista.','3','405','33');

INSERT INTO TB_PARCELAMENTO VALUES('1589','1','140.00','140.00','2019-02-25','2019-02-25','Valor promocional no cartão.','2','416','33');

INSERT INTO TB_PARCELAMENTO VALUES('1592','1','140.00','140.00','2019-02-25','2019-02-25','','2','415','33');

INSERT INTO TB_PARCELAMENTO VALUES('1593','1','130.00','130.00','2019-02-25','2019-02-25','','3','354','33');

INSERT INTO TB_PARCELAMENTO VALUES('1594','1','130.00','130.00','2019-02-25','2019-02-25','','1','425','33');

INSERT INTO TB_PARCELAMENTO VALUES('1595','1','130.00','130.00','2019-02-25','2019-02-25','','1','421','33');

INSERT INTO TB_PARCELAMENTO VALUES('1596','1','170.00','0.00','2019-02-26','','','2','427','0');

INSERT INTO TB_PARCELAMENTO VALUES('1597','1','130.00','130.00','2019-02-26','2019-02-25','Pagamento foi realizado via depósito, comprovante foi enviado para o Lucas.','1','374','5');

INSERT INTO TB_PARCELAMENTO VALUES('1598','1','130.00','130.00','2019-02-26','2019-02-26','Pagamento foi feito via depósito e a Thaynara mandou a foto do comprovante.','3','414','32');

INSERT INTO TB_PARCELAMENTO VALUES('1600','1','130.00','130.00','2019-02-26','2019-02-26','','1','428','32');

INSERT INTO TB_PARCELAMENTO VALUES('1607','1','135.00','135.00','2019-02-27','2019-02-27','PAGO PARA LETICIA','1','348','8');

INSERT INTO TB_PARCELAMENTO VALUES('1608','1','135.00','135.00','2019-02-27','2019-02-27','PAGO PARA LETÍCIA!','1','347','8');

INSERT INTO TB_PARCELAMENTO VALUES('1609','1','130.00','130.00','2019-02-27','2019-02-27','','1','431','5');

INSERT INTO TB_PARCELAMENTO VALUES('1610','1','130.00','130.00','2019-02-27','2019-02-27','','1','430','5');

INSERT INTO TB_PARCELAMENTO VALUES('1611','1','45.00','45.00','2019-02-27','2019-02-27','PAGO PARA VICK !','1','345','8');

INSERT INTO TB_PARCELAMENTO VALUES('1612','1','130.00','130.00','2019-02-27','2019-02-27','','1','429','5');

INSERT INTO TB_PARCELAMENTO VALUES('1613','1','130.00','130.00','2019-02-27','2019-02-27','','1','399','5');

INSERT INTO TB_PARCELAMENTO VALUES('1614','1','140.00','140.00','2019-02-27','2019-02-27','','1','319','8');

INSERT INTO TB_PARCELAMENTO VALUES('1615','1','130.00','130.00','2019-02-27','2019-02-27','','1','404','5');

INSERT INTO TB_PARCELAMENTO VALUES('1616','1','150.00','150.00','2019-02-27','2019-02-27','PAGO','1','324','8');

INSERT INTO TB_PARCELAMENTO VALUES('1617','1','130.00','130.00','2019-02-27','2019-02-27','','1','328','5');

INSERT INTO TB_PARCELAMENTO VALUES('1619','1','140.00','150.00','2019-02-27','2019-02-27','','1','385','33');

INSERT INTO TB_PARCELAMENTO VALUES('1620','1','150.00','150.00','2019-02-27','2019-02-27','','2','403','8');

INSERT INTO TB_PARCELAMENTO VALUES('1621','1','140.00','140.00','2019-02-27','2019-02-27','Pago !','2','400','8');

INSERT INTO TB_PARCELAMENTO VALUES('1622','1','130.00','140.00','2019-02-27','2019-02-22','','2','290','8');

INSERT INTO TB_PARCELAMENTO VALUES('1623','1','75.00','85.00','2019-02-27','2019-02-27','','2','402','33');

INSERT INTO TB_PARCELAMENTO VALUES('1624','1','75.00','85.00','2019-02-27','2019-02-27','','2','401','33');

INSERT INTO TB_PARCELAMENTO VALUES('1625','1','150.00','140.00','2019-02-27','2018-02-27','','2','426','8');

INSERT INTO TB_PARCELAMENTO VALUES('1626','1','145.00','145.00','2019-02-27','2019-02-27','','2','373','8');

INSERT INTO TB_PARCELAMENTO VALUES('1627','1','135.00','145.00','2019-02-27','2019-02-27','','2','356','8');

INSERT INTO TB_PARCELAMENTO VALUES('1628','1','150.00','150.00','2019-02-28','2019-02-27','Pago pro Linneker na maquininha','2','381','1');

INSERT INTO TB_PARCELAMENTO VALUES('1629','1','150.00','150.00','2019-02-28','2019-02-27','Pago pro Linneker na maquininha','2','382','1');

INSERT INTO TB_PARCELAMENTO VALUES('1630','1','170.00','0.00','2019-02-28','','','2','432','0');

INSERT INTO TB_PARCELAMENTO VALUES('1631','1','160.00','0.00','2019-02-28','','','1','433','0');

INSERT INTO TB_PARCELAMENTO VALUES('1634','1','120.00','130.00','2019-02-28','2019-02-27','','1','435','8');

INSERT INTO TB_PARCELAMENTO VALUES('1635','1','130.00','130.00','2019-02-28','2019-02-28','','1','434','8');

INSERT INTO TB_PARCELAMENTO VALUES('1637','1','170.00','0.00','2019-02-28','','','2','437','0');

INSERT INTO TB_PARCELAMENTO VALUES('1640','1','130.00','130.00','2019-02-28','2019-02-28','Irmãs da caridade','1','436','27');

INSERT INTO TB_PARCELAMENTO VALUES('1641','1','160.00','160.00','2019-02-28','2019-02-28','','1','311','27');

INSERT INTO TB_PARCELAMENTO VALUES('1642','1','160.00','160.00','2019-02-28','2019-02-28','','1','393','5');

INSERT INTO TB_PARCELAMENTO VALUES('1643','1','150.00','150.00','2019-02-28','2019-02-28','','1','438','27');

INSERT INTO TB_PARCELAMENTO VALUES('1644','1','150.00','150.00','2019-02-28','2019-02-28','','1','355','27');

INSERT INTO TB_PARCELAMENTO VALUES('1646','1','160.00','160.00','2019-02-28','2019-02-28','','1','387','27');

INSERT INTO TB_PARCELAMENTO VALUES('1647','1','160.00','0.00','2019-03-01','','','1','439','0');

INSERT INTO TB_PARCELAMENTO VALUES('1648','1','160.00','0.00','2019-03-01','','','1','440','0');

INSERT INTO TB_PARCELAMENTO VALUES('1652','1','160.00','0.00','2019-03-01','','','1','442','0');

INSERT INTO TB_PARCELAMENTO VALUES('1655','1','160.00','0.00','2019-03-01','','','1','444','0');

INSERT INTO TB_PARCELAMENTO VALUES('1658','1','160.00','160.00','2019-03-01','2019-03-01','esta inscrição substitui a vaga e valor pago pela Priscila pois a mesma desistiu de participar!','1','443','27');

INSERT INTO TB_PARCELAMENTO VALUES('1659','1','130.00','130.00','2019-03-01','2019-03-01','','1','441','27');

INSERT INTO TB_PARCELAMENTO VALUES('1660','1','130.00','130.00','2019-03-01','2019-03-01','','1','287','27');

INSERT INTO TB_PARCELAMENTO VALUES('1661','1','130.00','130.00','2019-03-02','2019-03-02','Pago no retiro','1','413','1');

INSERT INTO TB_PARCELAMENTO VALUES('1662','1','150.00','150.00','2019-03-02','2019-03-02','','1','378','1');

INSERT INTO TB_PARCELAMENTO VALUES('1663','1','150.00','150.00','2019-03-02','2019-03-02','','1','392','1');

INSERT INTO TB_PARCELAMENTO VALUES('1664','1','150.00','150.00','2019-03-02','2019-03-02','','1','390','1');

INSERT INTO TB_PARCELAMENTO VALUES('1665','1','160.00','160.00','2019-12-26','2020-02-16','','2','445','1');

INSERT INTO TB_PARCELAMENTO VALUES('1668','1','160.00','160.00','2019-12-26','2020-02-19','','2','447','4');

INSERT INTO TB_PARCELAMENTO VALUES('1670','1','160.00','100.00','2019-12-26','2020-01-08','Falta R$ 60,00.','1','449','13');

INSERT INTO TB_PARCELAMENTO VALUES('1671','1','160.00','160.00','2019-12-26','2020-02-19','','2','450','4');

INSERT INTO TB_PARCELAMENTO VALUES('1674','1','160.00','','2019-12-27','','','1','453','0');

INSERT INTO TB_PARCELAMENTO VALUES('1675','1','160.00','','2019-12-27','','','1','454','0');

INSERT INTO TB_PARCELAMENTO VALUES('1678','1','160.00','','2019-12-27','','','3','455','0');

INSERT INTO TB_PARCELAMENTO VALUES('1679','1','160.00','','2019-12-27','','','2','456','0');

INSERT INTO TB_PARCELAMENTO VALUES('1680','1','160.00','','2019-12-27','','','1','457','0');

INSERT INTO TB_PARCELAMENTO VALUES('1681','1','160.00','','2019-12-27','','','2','458','0');

INSERT INTO TB_PARCELAMENTO VALUES('1682','1','160.00','160.00','2019-12-28','2020-02-06','FOI PAGO POR BOLETO, COMPROVANTE COM A LUCRECE.','1','459','13');

INSERT INTO TB_PARCELAMENTO VALUES('1684','1','160.00','','2019-12-30','','','3','460','0');

INSERT INTO TB_PARCELAMENTO VALUES('1685','1','160.00','160.00','2019-12-30','2020-02-04','Valor pago pelo link gerado, conta Léo Bessa.\n\nComprovante com Amaury.','2','461','13');

INSERT INTO TB_PARCELAMENTO VALUES('1686','1','160.00','160.00','2020-01-01','2020-02-16','','1','462','13');

INSERT INTO TB_PARCELAMENTO VALUES('1687','1','160.00','160.00','2020-01-02','2020-02-10','Pagamento feito através de boleto, gerado por Amaury e o comprovante está com o mesmo.','3','463','13');

INSERT INTO TB_PARCELAMENTO VALUES('1688','1','160.00','','2020-01-03','','','1','464','0');

INSERT INTO TB_PARCELAMENTO VALUES('1689','1','160.00','','2020-01-03','','','2','465','0');

INSERT INTO TB_PARCELAMENTO VALUES('1690','1','160.00','160.00','2020-01-04','2020-01-29','','1','466','4');

INSERT INTO TB_PARCELAMENTO VALUES('1691','1','160.00','160.00','2020-01-04','2020-01-29','','1','467','4');

INSERT INTO TB_PARCELAMENTO VALUES('1692','1','160.00','','2020-01-05','','','2','468','0');

INSERT INTO TB_PARCELAMENTO VALUES('1693','1','160.00','','2020-01-05','','','3','469','0');

INSERT INTO TB_PARCELAMENTO VALUES('1694','1','160.00','','2020-01-06','','','1','470','0');

INSERT INTO TB_PARCELAMENTO VALUES('1696','1','160.00','160.00','2020-01-06','2020-02-01','','2','471','4');

INSERT INTO TB_PARCELAMENTO VALUES('1697','1','160.00','160.00','2020-01-07','2020-01-08','Depositado na conta bancária do Amaury.','3','472','13');

INSERT INTO TB_PARCELAMENTO VALUES('1699','1','160.00','','2020-01-07','','','1','474','0');

INSERT INTO TB_PARCELAMENTO VALUES('1700','1','160.00','160.00','2020-01-07','2020-02-08','','1','475','4');

INSERT INTO TB_PARCELAMENTO VALUES('1701','1','160.00','160.00','2020-01-07','2020-01-20','Depositado na conta bancária da tia Leda.','3','476','13');

INSERT INTO TB_PARCELAMENTO VALUES('1702','1','160.00','160.00','2020-01-07','2020-02-12','','2','477','4');

INSERT INTO TB_PARCELAMENTO VALUES('1703','1','160.00','160.00','2020-01-07','2020-01-08','Baixa de teste do Leo','1','478','1');

INSERT INTO TB_PARCELAMENTO VALUES('1704','1','160.00','','2020-01-07','','','1','479','0');

INSERT INTO TB_PARCELAMENTO VALUES('1705','1','160.00','','2020-01-08','','','1','480','0');

INSERT INTO TB_PARCELAMENTO VALUES('1706','1','160.00','160.00','2020-01-08','2020-02-04','Pago pelo link gerado, conta do Léo Bessa.\n\nComprovante com a Lucrece.','2','481','13');

INSERT INTO TB_PARCELAMENTO VALUES('1707','1','160.00','','2020-01-09','','','3','482','0');

INSERT INTO TB_PARCELAMENTO VALUES('1708','1','160.00','160.00','2020-01-09','2020-01-18','Dinheiro recebido por Lucrece.','1','483','13');

INSERT INTO TB_PARCELAMENTO VALUES('1709','1','160.00','160.00','2020-01-12','2020-01-15','Parcela de teste do Leo','1','484','1');

INSERT INTO TB_PARCELAMENTO VALUES('1711','1','160.00','','2020-01-13','','','1','485','0');

INSERT INTO TB_PARCELAMENTO VALUES('1713','1','160.00','','2020-01-17','','','2','487','0');

INSERT INTO TB_PARCELAMENTO VALUES('1714','1','160.00','160.00','2020-01-17','2020-02-19','','2','488','4');

INSERT INTO TB_PARCELAMENTO VALUES('1717','1','160.00','','2020-01-19','','','1','491','0');

INSERT INTO TB_PARCELAMENTO VALUES('1719','1','160.00','160.00','2020-01-21','2020-02-18','','1','493','4');

INSERT INTO TB_PARCELAMENTO VALUES('1720','1','160.00','160.00','2020-01-21','2020-02-12','Deposito feito na conta bancário do Amaury e o comprovante está com a Ariane.','3','494','13');

INSERT INTO TB_PARCELAMENTO VALUES('1722','1','160.00','160.00','2020-01-22','2020-02-13','','2','496','4');

INSERT INTO TB_PARCELAMENTO VALUES('1723','1','160.00','160.00','2020-01-22','2020-02-16','','2','497','4');

INSERT INTO TB_PARCELAMENTO VALUES('1724','1','160.00','','2020-01-22','','','3','498','0');

INSERT INTO TB_PARCELAMENTO VALUES('1725','1','160.00','','2020-01-22','','','1','499','0');

INSERT INTO TB_PARCELAMENTO VALUES('1726','1','0.00','160.00','2020-01-24','2019-12-09','Vaga garantida por meio de vendas das rifas.','1','451','13');

INSERT INTO TB_PARCELAMENTO VALUES('1727','1','160.00','','2020-01-25','','','3','500','0');

INSERT INTO TB_PARCELAMENTO VALUES('1728','1','160.00','','2020-01-25','','','2','501','0');

INSERT INTO TB_PARCELAMENTO VALUES('1731','1','160.00','160.00','2020-01-26','2020-02-18','','2','504','4');

INSERT INTO TB_PARCELAMENTO VALUES('1732','1','160.00','160.00','2020-01-26','2020-02-18','','2','505','4');

INSERT INTO TB_PARCELAMENTO VALUES('1733','1','160.00','160.00','2020-01-27','2020-01-27','Depositado na conta bancária do Amaury e comprovante com o mesmo.','3','506','13');

INSERT INTO TB_PARCELAMENTO VALUES('1734','1','160.00','160.00','2020-01-27','2020-02-01','','2','507','5');

INSERT INTO TB_PARCELAMENTO VALUES('1735','1','160.00','160.00','2020-01-28','2020-06-06','BOLETO GERADO POR AMAURY, COMPROVANTE COM ARIANE E O AMAURY.','3','508','13');

INSERT INTO TB_PARCELAMENTO VALUES('1736','1','160.00','160.00','2020-01-28','2020-01-28','Conta bancária da tia Rosileda e comprovante com Amaury.','3','509','13');

INSERT INTO TB_PARCELAMENTO VALUES('1737','1','160.00','','2020-01-28','','','1','510','0');

INSERT INTO TB_PARCELAMENTO VALUES('1738','1','160.00','160.00','2020-01-29','2020-01-29','Depositado em conta bancária do Amaury e o comprovante com o mesmo.','3','511','13');

INSERT INTO TB_PARCELAMENTO VALUES('1739','2','60.00','60.00','2020-01-29','2020-02-12','','1','449','4');

INSERT INTO TB_PARCELAMENTO VALUES('1740','1','160.00','160.00','2020-01-30','2020-02-12','Pagamento feito através de boleto, gerado por Amaury e o comprovante com o mesmo.','3','512','13');

INSERT INTO TB_PARCELAMENTO VALUES('1741','1','160.00','160.00','2020-01-30','2020-02-07','PAGAMENTO ATRAVÉS DO LINK(CONTA DO LÉO), COMPROVANTE COM A LUCRECE.','3','513','13');

INSERT INTO TB_PARCELAMENTO VALUES('1742','1','160.00','160.00','2020-01-30','2020-02-07','PAGAMENTO ATRAVÉS DO LINK(CONTA DO LÉO), COMPROVANTE COM LUCRECE.','3','514','13');

INSERT INTO TB_PARCELAMENTO VALUES('1743','1','160.00','160.00','2020-01-31','2020-02-16','','1','515','4');

INSERT INTO TB_PARCELAMENTO VALUES('1744','1','160.00','160.00','2020-02-02','2020-02-05','Depositado na conta bancária do Amaury e o comprovante está com o mesmo.','3','516','13');

INSERT INTO TB_PARCELAMENTO VALUES('1745','1','160.00','','2020-02-03','','','1','517','0');

INSERT INTO TB_PARCELAMENTO VALUES('1747','1','160.00','160.00','2020-02-04','2020-02-07','DINHEIRO NA CONTA DA LETICIA E COMPROVANTE COM A LUCRECE.','3','519','13');

INSERT INTO TB_PARCELAMENTO VALUES('1748','1','160.00','','2020-02-04','','','3','520','0');

INSERT INTO TB_PARCELAMENTO VALUES('1749','1','160.00','','2020-02-04','','','1','521','0');

INSERT INTO TB_PARCELAMENTO VALUES('1750','1','160.00','','2020-02-04','','','2','522','0');

INSERT INTO TB_PARCELAMENTO VALUES('1751','1','160.00','','2020-02-06','','','1','523','0');

INSERT INTO TB_PARCELAMENTO VALUES('1752','1','160.00','160.00','2020-02-07','2020-02-08','','1','524','4');

INSERT INTO TB_PARCELAMENTO VALUES('1753','1','160.00','160.00','2020-02-08','2020-02-12','Pagamento feito na conta bancária do Amaury e está com o mesmo o comprovante.','3','525','13');

INSERT INTO TB_PARCELAMENTO VALUES('1754','1','160.00','160.00','2020-02-08','2020-02-18','','2','526','4');

INSERT INTO TB_PARCELAMENTO VALUES('1755','1','160.00','160.00','2020-02-08','2020-02-14','Comprovante com a Ariane.','3','527','4');

INSERT INTO TB_PARCELAMENTO VALUES('1756','1','160.00','','2020-02-09','','','2','528','0');

INSERT INTO TB_PARCELAMENTO VALUES('1757','1','160.00','130.00','2020-02-09','2020-02-18','','2','529','4');

INSERT INTO TB_PARCELAMENTO VALUES('1759','1','160.00','','2020-02-10','','','3','530','0');

INSERT INTO TB_PARCELAMENTO VALUES('1760','1','160.00','160.00','2020-02-10','2020-02-16','','2','531','5');

INSERT INTO TB_PARCELAMENTO VALUES('1762','1','160.00','','2020-02-10','','','1','533','0');

INSERT INTO TB_PARCELAMENTO VALUES('1765','1','160.00','','2020-02-10','','','1','534','0');

INSERT INTO TB_PARCELAMENTO VALUES('1766','1','160.00','','2020-02-10','','','1','535','0');

INSERT INTO TB_PARCELAMENTO VALUES('1767','1','160.00','','2020-02-11','','','2','536','0');

INSERT INTO TB_PARCELAMENTO VALUES('1768','1','160.00','160.00','2020-02-12','2020-02-17','Deposito feito na conta da Rosileda e comprovante de pagamento está com a Lucrece.','3','537','13');

INSERT INTO TB_PARCELAMENTO VALUES('1769','1','160.00','','2020-02-13','','','1','538','0');

INSERT INTO TB_PARCELAMENTO VALUES('1771','1','160.00','160.00','2020-02-13','2020-02-13','','1','540','4');

INSERT INTO TB_PARCELAMENTO VALUES('1772','1','0.00','160.00','2020-02-16','2020-02-16','','1','448','5');

INSERT INTO TB_PARCELAMENTO VALUES('1774','1','160.00','160.00','2020-02-16','2020-02-16','','2','446','5');

INSERT INTO TB_PARCELAMENTO VALUES('1776','1','130.00','130.00','2020-02-16','2020-02-15','','1','492','5');

INSERT INTO TB_PARCELAMENTO VALUES('1777','1','160.00','','2020-02-16','','','1','541','0');

INSERT INTO TB_PARCELAMENTO VALUES('1778','1','160.00','160.00','2020-02-16','2020-02-17','Cartão passado por Lucrece.','2','542','13');

INSERT INTO TB_PARCELAMENTO VALUES('1779','1','130.00','130.00','2020-02-17','2020-02-17','Deposito feito na conta da Rosileda e comprovante de pagamento com a Lucrece.','3','539','13');

INSERT INTO TB_PARCELAMENTO VALUES('1780','1','160.00','160.00','2020-02-17','2020-02-19','','2','543','4');

INSERT INTO TB_PARCELAMENTO VALUES('1782','1','140.00','140.00','2020-02-17','2020-02-17','Cartão passado por Lucrece e comprovante com a mesma.','2','503','13');

INSERT INTO TB_PARCELAMENTO VALUES('1783','1','160.00','130.00','2020-02-17','2020-02-18','','2','545','4');

INSERT INTO TB_PARCELAMENTO VALUES('1784','1','130.00','130.00','2020-02-17','2020-02-17','Conta da Letícia Bessa.','3','544','13');

INSERT INTO TB_PARCELAMENTO VALUES('1785','1','160.00','160.00','2020-02-18','2020-02-21','','1','546','4');

INSERT INTO TB_PARCELAMENTO VALUES('1788','1','100.00','100.00','2020-02-18','2020-02-18','','1','548','4');

INSERT INTO TB_PARCELAMENTO VALUES('1792','1','130.00','130.00','2020-02-18','2020-02-18','Depositado na conta do Amaury e o comprovante com o mesmo.','3','495','13');

INSERT INTO TB_PARCELAMENTO VALUES('1793','1','130.00','130.00','2020-02-18','2020-02-18','Depositado na conta do Amaury e o mesmo está com o comprovante.','3','532','13');

INSERT INTO TB_PARCELAMENTO VALUES('1794','1','130.00','130.00','2020-02-18','2020-02-18','Depositado na conta do Amaury e o mesmo está com o comprovante.','3','518','13');

INSERT INTO TB_PARCELAMENTO VALUES('1797','1','100.00','100.00','2020-02-18','2020-02-18','Conta da Letícia Bessa.','3','551','13');

INSERT INTO TB_PARCELAMENTO VALUES('1798','1','100.00','100.00','2020-02-18','2020-02-18','Conta da Letícia Bessa.','3','550','13');

INSERT INTO TB_PARCELAMENTO VALUES('1799','1','100.00','100.00','2020-02-18','2020-02-18','Dinheiro entregue para Luana Bessa.','1','547','13');

INSERT INTO TB_PARCELAMENTO VALUES('1800','1','100.00','100.00','2020-02-18','2020-02-18','Conta da Rosileda.','3','549','13');

INSERT INTO TB_PARCELAMENTO VALUES('1801','1','130.00','130.00','2020-02-18','2020-02-18','Dinheiro entregue para Lucrece.','1','486','13');

INSERT INTO TB_PARCELAMENTO VALUES('1802','1','130.00','130.00','2020-02-18','2020-02-18','Passou para a Gaby (GEJ)','1','452','5');

INSERT INTO TB_PARCELAMENTO VALUES('1803','1','160.00','','2020-02-19','','','1','552','0');

INSERT INTO TB_PARCELAMENTO VALUES('1805','1','130.00','130.00','2020-02-19','2020-02-18','','1','489','13');

INSERT INTO TB_PARCELAMENTO VALUES('1806','1','130.00','130.00','2020-02-19','2020-02-18','','1','473','13');

INSERT INTO TB_PARCELAMENTO VALUES('1807','1','160.00','160.00','2020-02-19','2020-02-19','','2','553','4');

INSERT INTO TB_PARCELAMENTO VALUES('1808','1','160.00','160.00','2020-02-19','2020-02-19','','2','554','4');

INSERT INTO TB_PARCELAMENTO VALUES('1809','1','160.00','','2020-02-19','','','1','502','0');

INSERT INTO TB_PARCELAMENTO VALUES('1810','1','160.00','130.00','2020-02-19','2020-02-19','','1','555','4');

INSERT INTO TB_PARCELAMENTO VALUES('1811','1','160.00','','2020-02-20','','','1','556','0');

INSERT INTO TB_PARCELAMENTO VALUES('1812','1','160.00','','2020-02-20','','','1','557','0');

INSERT INTO TB_PARCELAMENTO VALUES('1817','1','130.00','130.00','2020-02-20','2020-02-20','','1','490','4');

INSERT INTO TB_PARCELAMENTO VALUES('1818','1','160.00','160.00','2020-02-20','2020-02-20','','1','561','4');

INSERT INTO TB_PARCELAMENTO VALUES('1819','1','160.00','','2020-02-20','','','3','1','0');

INSERT INTO TB_PARCELAMENTO VALUES('1820','1','130.00','130.00','2020-02-20','2020-02-20','','1','558','4');

INSERT INTO TB_PARCELAMENTO VALUES('1821','1','160.00','','2020-02-20','','','3','562','0');

INSERT INTO TB_PARCELAMENTO VALUES('1822','1','160.00','','2020-02-21','','','1','563','0');

INSERT INTO TB_PARCELAMENTO VALUES('1823','1','130.00','130.00','2020-02-21','2020-02-21','','1','559','4');

INSERT INTO TB_PARCELAMENTO VALUES('1824','1','130.00','130.00','2020-02-21','2020-02-21','','1','560','4');

INSERT INTO TB_PARCELAMENTO VALUES('1825','1','160.00','','2020-02-21','','','1','564','0');

INSERT INTO TB_PARCELAMENTO VALUES('1826','1','160.00','','2020-02-21','','','2','565','0');

INSERT INTO TB_PARCELAMENTO VALUES('1827','1','160.00','','2022-12-12','','','2','566','0');

INSERT INTO TB_PARCELAMENTO VALUES('1828','1','180.00','','2022-12-14','','','1','567','0');

INSERT INTO TB_PARCELAMENTO VALUES('1829','1','180.00','','2022-12-14','','','1','568','0');




DROP TABLE IF EXISTS TB_PED_CAM_TAMANHO_COR;


CREATE TABLE `TB_PED_CAM_TAMANHO_COR` (
  `co_ped_cam_tamanho_cor` int(11) NOT NULL AUTO_INCREMENT,
  `nu_quantidade` int(3) DEFAULT NULL,
  `co_tamanho_camisa` int(2) NOT NULL,
  `co_cor_camisa` int(11) NOT NULL,
  `co_camisa` int(11) NOT NULL,
  `co_pedido_camisa` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_ped_cam_tamanho_cor`,`co_tamanho_camisa`,`co_cor_camisa`,`co_camisa`,`co_pedido_camisa`,`co_usuario`),
  KEY `fk_TB_PED_CAM_TAMANHO_COR_TB_TAMANHO_CAMISA1_idx` (`co_tamanho_camisa`),
  KEY `fk_TB_PED_CAM_TAMANHO_COR_TB_COR_CAMISA1_idx` (`co_cor_camisa`),
  KEY `fk_TB_PED_CAM_TAMANHO_COR_TB_CAMISA1_idx` (`co_camisa`),
  KEY `fk_TB_PED_CAM_TAMANHO_COR_TB_PEDIDO_CAMISA1_idx` (`co_pedido_camisa`),
  KEY `fk_TB_PED_CAM_TAMANHO_COR_TB_USUARIO1_idx` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


INSERT INTO TB_PED_CAM_TAMANHO_COR VALUES('1','1','6','6','1','1','1');

INSERT INTO TB_PED_CAM_TAMANHO_COR VALUES('2','2','7','6','1','2','1');

INSERT INTO TB_PED_CAM_TAMANHO_COR VALUES('3','1','8','6','1','3','1');

INSERT INTO TB_PED_CAM_TAMANHO_COR VALUES('4','1','5','6','1','4','1');

INSERT INTO TB_PED_CAM_TAMANHO_COR VALUES('5','2','3','6','1','5','1');

INSERT INTO TB_PED_CAM_TAMANHO_COR VALUES('6','1','5','6','1','6','1');

INSERT INTO TB_PED_CAM_TAMANHO_COR VALUES('7','1','3','6','1','7','1');

INSERT INTO TB_PED_CAM_TAMANHO_COR VALUES('8','1','2','6','1','8','1');

INSERT INTO TB_PED_CAM_TAMANHO_COR VALUES('9','1','4','6','1','9','1');

INSERT INTO TB_PED_CAM_TAMANHO_COR VALUES('10','1','3','6','1','10','1');

INSERT INTO TB_PED_CAM_TAMANHO_COR VALUES('11','2','3','6','1','11','1');




DROP TABLE IF EXISTS TB_PEDIDO_CAMISA;


CREATE TABLE `TB_PEDIDO_CAMISA` (
  `co_pedido_camisa` int(11) NOT NULL AUTO_INCREMENT,
  `no_pessoa` varchar(80) DEFAULT NULL,
  `st_pedido` int(1) DEFAULT NULL COMMENT '1 - A Pedir / 2 - Pedida / 3 - Recebida / 4 - Entregue',
  `st_estoque` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não    *Para pedidos do nosso estoque',
  `dt_cadastro` datetime DEFAULT NULL,
  `st_pagamento` varchar(1) DEFAULT NULL COMMENT 'N - Não iniciado / I - Iniciado / C - Concluido  *Para Não Estoque\nA - A pagar / P - Paga   *Para Estoque',
  `dt_pedido` date DEFAULT NULL,
  `dt_entregue` date DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL COMMENT 'Observação do Pedido',
  `co_inscricao` int(11) NOT NULL,
  PRIMARY KEY (`co_pedido_camisa`,`co_inscricao`),
  KEY `fk_TB_PEDIDO_CAMISA_TB_INSCRICAO1_idx` (`co_inscricao`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


INSERT INTO TB_PEDIDO_CAMISA VALUES('1','Estoque Administrativo','1','S','2019-05-03 22:42:32','N','','','','0');

INSERT INTO TB_PEDIDO_CAMISA VALUES('2','Estoque Administrativo','1','S','2019-05-03 22:43:29','N','','','','0');

INSERT INTO TB_PEDIDO_CAMISA VALUES('3','Keiter','4','N','2019-05-03 22:43:48','N','2019-05-11','2019-05-11','Entregue na reunião do aviva','0');

INSERT INTO TB_PEDIDO_CAMISA VALUES('4','Thais','4','N','2019-05-03 22:44:05','N','2019-05-11','2019-05-11','Entregue no Aviva vai acertar depois','0');

INSERT INTO TB_PEDIDO_CAMISA VALUES('5','Estoque Administrativo','1','S','2019-05-03 22:44:22','N','','','','0');

INSERT INTO TB_PEDIDO_CAMISA VALUES('6','Lilian','4','N','2019-05-03 22:44:33','C','2019-05-11','2019-05-11','Entregue na reunião do Aviva pago pra Lucrece','0');

INSERT INTO TB_PEDIDO_CAMISA VALUES('7','Lucrece','1','N','2019-05-03 22:44:51','N','','','','0');

INSERT INTO TB_PEDIDO_CAMISA VALUES('8','Relka','1','N','2019-05-03 22:45:11','N','','','','0');

INSERT INTO TB_PEDIDO_CAMISA VALUES('9','Vivi','1','N','2019-05-03 22:45:27','N','','','','0');

INSERT INTO TB_PEDIDO_CAMISA VALUES('10','Luana','1','N','2019-05-03 22:45:40','N','','','','0');

INSERT INTO TB_PEDIDO_CAMISA VALUES('11','Raissa','1','N','2019-05-03 22:46:20','N','','','(De fora)','0');




DROP TABLE IF EXISTS TB_PERFIL;


CREATE TABLE `TB_PERFIL` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL COMMENT 'Nome do Perfil',
  `st_status` varchar(1) NOT NULL DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  PRIMARY KEY (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;


INSERT INTO TB_PERFIL VALUES('1','Master','A');

INSERT INTO TB_PERFIL VALUES('2','Conselheiros','A');

INSERT INTO TB_PERFIL VALUES('3','Membro','A');

INSERT INTO TB_PERFIL VALUES('4','Comissão','A');

INSERT INTO TB_PERFIL VALUES('5','Líderes','A');

INSERT INTO TB_PERFIL VALUES('6','Fundadores','A');

INSERT INTO TB_PERFIL VALUES('7','Coordenadores','A');

INSERT INTO TB_PERFIL VALUES('8','Coord. Administrativo','A');

INSERT INTO TB_PERFIL VALUES('9','Coord. Formativo','A');

INSERT INTO TB_PERFIL VALUES('10','Coord. Missionário','A');

INSERT INTO TB_PERFIL VALUES('11','Lider Música','A');

INSERT INTO TB_PERFIL VALUES('12','Equipe Música','A');

INSERT INTO TB_PERFIL VALUES('13','Líder Ornamentação','A');

INSERT INTO TB_PERFIL VALUES('14','Equipe Ornamentação','A');

INSERT INTO TB_PERFIL VALUES('15','Líder Animação','A');

INSERT INTO TB_PERFIL VALUES('16','Equipe Animação','A');

INSERT INTO TB_PERFIL VALUES('17','Líder Intercessão','A');

INSERT INTO TB_PERFIL VALUES('18','Equipe Intercessão','A');

INSERT INTO TB_PERFIL VALUES('19','Líder Teatro','A');

INSERT INTO TB_PERFIL VALUES('20','Equipe Teatro','A');

INSERT INTO TB_PERFIL VALUES('21','Líder Comunicação','A');

INSERT INTO TB_PERFIL VALUES('22','Equipe Comunicação','A');

INSERT INTO TB_PERFIL VALUES('23','Caminho','A');

INSERT INTO TB_PERFIL VALUES('24','Elo 1','A');

INSERT INTO TB_PERFIL VALUES('25','Elo 2','A');

INSERT INTO TB_PERFIL VALUES('26','Elo 3','A');

INSERT INTO TB_PERFIL VALUES('27','Elo 4','A');

INSERT INTO TB_PERFIL VALUES('28','Coord. Caminho','A');




DROP TABLE IF EXISTS TB_PERFIL_AGENDA;


CREATE TABLE `TB_PERFIL_AGENDA` (
  `co_perfil_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `co_agenda` int(11) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_agenda`,`co_agenda`,`co_perfil`),
  KEY `fk_TB_PERFIL_AGENDA_TB_AGENDA1_idx` (`co_agenda`),
  KEY `fk_TB_PERFIL_AGENDA_TB_PERFIL1_idx` (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;


INSERT INTO TB_PERFIL_AGENDA VALUES('1','1','4');

INSERT INTO TB_PERFIL_AGENDA VALUES('2','1','2');

INSERT INTO TB_PERFIL_AGENDA VALUES('3','2','4');

INSERT INTO TB_PERFIL_AGENDA VALUES('4','2','2');

INSERT INTO TB_PERFIL_AGENDA VALUES('11','3','8');

INSERT INTO TB_PERFIL_AGENDA VALUES('12','3','2');

INSERT INTO TB_PERFIL_AGENDA VALUES('15','5','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('16','6','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('17','7','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('18','1','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('19','2','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('20','3','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('22','4','7');

INSERT INTO TB_PERFIL_AGENDA VALUES('23','4','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('24','4','2');

INSERT INTO TB_PERFIL_AGENDA VALUES('25','5','8');

INSERT INTO TB_PERFIL_AGENDA VALUES('26','6','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('27','7','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('28','8','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('29','9','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('30','10','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('31','11','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('32','12','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('33','13','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('34','14','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('35','15','27');

INSERT INTO TB_PERFIL_AGENDA VALUES('36','15','26');

INSERT INTO TB_PERFIL_AGENDA VALUES('37','15','25');

INSERT INTO TB_PERFIL_AGENDA VALUES('38','15','24');

INSERT INTO TB_PERFIL_AGENDA VALUES('39','15','23');

INSERT INTO TB_PERFIL_AGENDA VALUES('40','16','27');

INSERT INTO TB_PERFIL_AGENDA VALUES('41','16','26');

INSERT INTO TB_PERFIL_AGENDA VALUES('42','16','25');

INSERT INTO TB_PERFIL_AGENDA VALUES('43','16','24');

INSERT INTO TB_PERFIL_AGENDA VALUES('44','16','23');

INSERT INTO TB_PERFIL_AGENDA VALUES('45','17','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('46','18','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('47','19','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('48','20','18');

INSERT INTO TB_PERFIL_AGENDA VALUES('49','21','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('50','22','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('51','23','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('52','24','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('53','25','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('54','26','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('55','27','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('56','28','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('57','29','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('58','30','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('59','31','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('60','32','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('61','33','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('62','34','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('63','35','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('64','36','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('65','36','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('66','37','3');

INSERT INTO TB_PERFIL_AGENDA VALUES('67','38','3');




DROP TABLE IF EXISTS TB_PERFIL_ASSINANTE;


CREATE TABLE `TB_PERFIL_ASSINANTE` (
  `co_perfil_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_assinante`,`co_assinante`),
  KEY `fk_TB_PERFIL_ASSINANTE_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PERFIL_FUNCIONALIDADE;


CREATE TABLE `TB_PERFIL_FUNCIONALIDADE` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_funcionalidade` int(11) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_funcionalidade`,`co_perfil`,`co_perfil_assinante`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil`),
  KEY `fk_TB_PERFIL_FUNCIONALIDADE_TB_PERFIL_ASSINANTE1_idx` (`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;


INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('1','1','1','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('4','41','10','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('5','41','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('7','43','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('8','43','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('9','44','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('10','44','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('11','45','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('12','45','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('13','46','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('14','46','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('15','47','8','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('16','47','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('17','48','8','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('18','48','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('19','49','8','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('20','49','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('21','50','8','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('22','50','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('25','51','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('26','51','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('27','52','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('28','52','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('29','53','8','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('30','54','8','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('31','42','3','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('32','55','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('33','55','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('34','56','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('35','56','2','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('36','57','4','0');

INSERT INTO TB_PERFIL_FUNCIONALIDADE VALUES('37','57','2','0');




DROP TABLE IF EXISTS TB_PESSOA;


CREATE TABLE `TB_PESSOA` (
  `co_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nu_cpf` varchar(15) DEFAULT NULL,
  `no_pessoa` varchar(100) DEFAULT NULL,
  `nu_rg` varchar(45) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `st_sexo` varchar(1) DEFAULT NULL COMMENT 'M - Masculino ou F - Feminino',
  `co_endereco` int(11) NOT NULL,
  `co_contato` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  PRIMARY KEY (`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`),
  KEY `fk_TB_PESSOA_TB_ENDERECO1_idx` (`co_endereco`),
  KEY `fk_TB_PESSOA_TB_CONTATO1_idx` (`co_contato`),
  KEY `fk_TB_PESSOA_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8;


INSERT INTO TB_PESSOA VALUES('1','72681438187','LEONARDO MACHADO CARVALHO BESSA','2077811','2019-01-05 17:26:32','1984-07-06','M','1','1','0');

INSERT INTO TB_PESSOA VALUES('2','06820934165','AMANDA TOMINAGA','3856116','2019-01-24 19:52:49','2002-08-27','F','2','2','0');

INSERT INTO TB_PESSOA VALUES('3','04267851182','IGOR BORGES LEITE','3009052','2018-05-31 19:18:54','1996-02-25','M','3','3','0');

INSERT INTO TB_PESSOA VALUES('4','07332354179','BRENDA NAYANE DUDA MOREIRA','3481937','2019-02-10 22:42:22','2000-07-12','F','4','4','0');

INSERT INTO TB_PESSOA VALUES('6','05418337157','HENRIQUE CARVALHO ASSUNçãO','','2019-02-26 09:29:43','1996-02-12','M','239','6','0');

INSERT INTO TB_PESSOA VALUES('7','03667767110','AMANDA SILVA LIMA','3325124','2017-12-04 17:17:34','1998-05-06','F','7','7','0');

INSERT INTO TB_PESSOA VALUES('8','07353224142','JERLANE SOARES MAGALHãES DA SILVA','3739423','2017-12-04 17:42:47','2001-02-06','F','8','8','0');

INSERT INTO TB_PESSOA VALUES('9','07970134157','JOãO VICTOR PEREIRA FERNANDES ','3947853','2017-12-04 17:46:51','2002-03-18','M','9','9','0');

INSERT INTO TB_PESSOA VALUES('10','06050858110','KAREN GEOVANNA FIGUEREDO DOS SANTOS','','2019-01-29 22:47:06','1998-04-17','F','10','10','0');

INSERT INTO TB_PESSOA VALUES('11','00666264120','THAIS LIMA ROCHA ','2582737','2017-12-04 19:22:18','1988-05-21','F','11','11','0');

INSERT INTO TB_PESSOA VALUES('13','02858427143','FABRíCIO ALVES OLIVEIRA ','3558631','2017-12-04 22:16:26','2001-07-05','M','13','13','0');

INSERT INTO TB_PESSOA VALUES('14','07128618155','ISABELA ARáUJO DOS SANTOS','3694686','2019-02-14 11:47:20','2001-07-14','F','14','14','0');

INSERT INTO TB_PESSOA VALUES('16','04705500156','LUCAS CUNHA RIBEIRO','3089535','2019-01-21 13:16:54','1994-06-09','M','16','16','0');

INSERT INTO TB_PESSOA VALUES('17','06565286132','WALLISSON MATíAS DE SOUSA','3563548','2017-12-05 09:49:57','1998-12-24','M','17','17','0');

INSERT INTO TB_PESSOA VALUES('18','05418222171','MANUELA CORREA MARANGONI','','2017-12-05 11:06:05','2000-02-25','F','18','18','0');

INSERT INTO TB_PESSOA VALUES('19','06408735100','PRISCILA MARTINS MATIAS','3480987','2019-02-14 00:16:58','1999-02-03','F','19','19','0');

INSERT INTO TB_PESSOA VALUES('20','03509067185','MéRCIA BATISTA MIRANDA','3042300','2019-01-20 22:00:09','1994-09-17','F','20','20','0');

INSERT INTO TB_PESSOA VALUES('21','07728521110','VERôNICA CRISTINA DE LIMA RIBEIRO','3714612','2017-12-06 00:39:45','2000-09-13','F','21','21','0');

INSERT INTO TB_PESSOA VALUES('23','05870295106','DIOGO DA SILVA CARDOSO','','2017-12-06 23:15:25','1996-12-17','M','23','23','0');

INSERT INTO TB_PESSOA VALUES('24','06411059160','CáSSIO RODRIGUES CASTRO','','2017-12-07 00:26:21','1997-03-16','M','24','24','0');

INSERT INTO TB_PESSOA VALUES('25','07025713180','CATHERINE MENDES DE JESUS','3876679','2019-01-20 23:00:39','2003-12-02','F','25','25','430');

INSERT INTO TB_PESSOA VALUES('26','06820939124','EDUARDO PIRES TOMINAGA','3734569','2017-12-07 20:21:09','2000-10-17','M','26','26','0');

INSERT INTO TB_PESSOA VALUES('27','05241966137','THAINARA TONHA DE SANTANA','3211173','2018-01-29 10:32:37','1999-03-22','F','27','27','0');

INSERT INTO TB_PESSOA VALUES('29','05257971143','ÉRICA STEPHANIE DE SOUSA CARVALHO','3737683','2018-07-04 12:08:03','2000-12-02','F','29','29','0');

INSERT INTO TB_PESSOA VALUES('31','04898784151','LUCRECE NERI PORTELA','3239132','2019-02-27 17:59:54','1996-11-06','F','31','31','0');

INSERT INTO TB_PESSOA VALUES('32','05063803199','PEDRO AUGUSTO PACHECO','3167740','2017-12-09 15:40:18','2000-08-25','M','32','32','0');

INSERT INTO TB_PESSOA VALUES('33','07981379164','GABRIELLA LIMA TONHA','536533829','2017-12-09 16:52:51','2002-05-25','F','33','33','0');

INSERT INTO TB_PESSOA VALUES('34','06597113110','RAUL DIAS MIRANDA CARDOSO','3374856','2019-02-15 10:28:07','2001-04-27','M','34','34','0');

INSERT INTO TB_PESSOA VALUES('36','03874430103','LUANA RIBEIRO BESSA','2944508','2019-01-26 08:34:05','1993-08-17','F','36','36','0');

INSERT INTO TB_PESSOA VALUES('37','03904086111','LETíCIA MACHADO CARVALHO BESSA','2807680','2019-01-23 13:24:08','1992-08-27','F','37','37','0');

INSERT INTO TB_PESSOA VALUES('39','05519198179','VITóRIA PRUDêNCIO LIMA','3287537','2019-01-21 11:55:59','1998-06-21','F','39','39','0');

INSERT INTO TB_PESSOA VALUES('41','06968592118','GABRIELA MENDES SOUZA','3616392','2017-12-11 19:17:46','1999-08-19','F','41','41','0');

INSERT INTO TB_PESSOA VALUES('42','07909568100','DANIELA MENDES DE SOUZA','3850639','2017-12-11 19:23:37','2001-05-27','F','42','42','0');

INSERT INTO TB_PESSOA VALUES('44','05704088147','VITOR HUGO BARROSO','3362969','2017-12-12 13:46:24','1999-08-25','M','44','44','0');

INSERT INTO TB_PESSOA VALUES('47','03601286106','ANTONIO CARLOS RAMOS LIMA','2652417','2017-12-14 12:21:53','1989-10-26','M','47','47','0');

INSERT INTO TB_PESSOA VALUES('48','06828355105','LARISSA MESQUITA','3664597','2017-12-16 14:24:06','1998-10-02','F','48','48','0');

INSERT INTO TB_PESSOA VALUES('49','05365778111','CARLOS CHRISTIAN','1129660','2018-04-24 18:30:45','1996-05-25','M','49','49','0');

INSERT INTO TB_PESSOA VALUES('50','07581435164','DANIELLE PATRíCIA GUEDES E SILVA','3791489','2017-12-18 15:05:43','2003-01-23','F','50','50','0');

INSERT INTO TB_PESSOA VALUES('51','06697775106','BáRBARA SILVA','3286','2017-12-18 19:02:07','1998-06-07','F','51','51','0');

INSERT INTO TB_PESSOA VALUES('52','06794961148','PAULLO VINíCIUS PEREIRA FOGAçA','3265417','2018-07-02 21:10:12','1994-04-26','M','52','52','0');

INSERT INTO TB_PESSOA VALUES('53','04419358181','KAROLINA MOTA','','2018-04-26 21:08:40','1997-04-30','F','53','53','0');

INSERT INTO TB_PESSOA VALUES('54','02567125302','MARIA GABRIELA ALVES RODRIGUES','','2017-12-18 22:16:45','1996-12-02','F','54','55','0');

INSERT INTO TB_PESSOA VALUES('55','06932064111','MONIQUE VIEIRA PEREIRA PINHEIRO','3298085','2019-01-21 07:25:45','1999-08-09','F','55','56','0');

INSERT INTO TB_PESSOA VALUES('56','04516310139','LEANDRO AZEVEDO XAVIER','3335626','2019-01-20 22:25:08','1991-03-23','M','56','57','419');

INSERT INTO TB_PESSOA VALUES('57','03894443162','THAIS OLIVEIRA DA COSTA MAIA','2950728','2019-01-29 13:21:45','1993-04-23','F','57','58','0');

INSERT INTO TB_PESSOA VALUES('58','06980866192','LETíCIA MARTINS DE SOUSA','36493740','2017-12-19 13:18:08','2000-02-23','F','58','59','0');

INSERT INTO TB_PESSOA VALUES('59','03643347111','KEITER DA SILVA MAIA','','2019-01-29 13:23:31','1992-11-22','M','59','60','0');

INSERT INTO TB_PESSOA VALUES('60','05566516181','RONIEL RODRIGUES ALBUQUERQUE','3208574','2019-01-25 23:02:27','1996-03-04','M','60','61','0');

INSERT INTO TB_PESSOA VALUES('61','02351127129','LILIAN MACHADO CARVALHO BESSA','2529020','2019-01-21 11:57:34','1988-10-31','F','61','62','0');

INSERT INTO TB_PESSOA VALUES('62','07844250194','THAMIRES BARBOSA DE ALMEIDA','3837418','2019-02-06 16:33:04','2001-08-13','F','62','63','0');

INSERT INTO TB_PESSOA VALUES('63','07572266126','ANNA CAROLINY RODRIGUES LAURO','3827115','2018-02-01 15:53:02','2002-05-10','F','63','64','0');

INSERT INTO TB_PESSOA VALUES('64','05301006142','CLARISSE VITORIA DE FRANCA OLIVEIRA LOPES','3355675','2017-12-21 16:01:28','1996-03-01','F','64','65','0');

INSERT INTO TB_PESSOA VALUES('65','04894739119','JOYCE LOPES FERREIRA','','2018-05-15 22:50:52','1998-10-28','F','65','67','0');

INSERT INTO TB_PESSOA VALUES('66','04583473109','SABRINA BELARMINA DE ABREU','3050440','2017-12-24 15:13:28','1994-01-21','F','66','68','0');

INSERT INTO TB_PESSOA VALUES('67','00441485189','KARINE VICTORIA OLIVEIRA DA SILVA','3709850','2019-01-20 21:56:34','2000-07-20','F','67','69','0');

INSERT INTO TB_PESSOA VALUES('68','04321849101','LETICIA PEREIRA DA SILVA','3002886','2018-06-09 17:52:39','1999-08-03','F','68','70','0');

INSERT INTO TB_PESSOA VALUES('69','07323321174','EVELYN RIBEIRO','3577258','2017-12-26 13:34:49','1999-08-13','F','69','71','0');

INSERT INTO TB_PESSOA VALUES('70','73386626149','TAYNARA RIBEIRO DE LIMA','3692530','2019-01-21 10:39:53','2000-02-21','F','70','72','0');

INSERT INTO TB_PESSOA VALUES('71','04900199192','ADRIEL CLEMENTINO DOS SANTOS','','2017-12-27 14:49:41','1995-06-05','M','71','73','0');

INSERT INTO TB_PESSOA VALUES('72','04804195157','LINNEKER LIMA ROBERTO GOMES','2812768','2019-01-23 13:23:21','1995-10-04','M','72','74','460');

INSERT INTO TB_PESSOA VALUES('73','06244035135','KAMILA SILVA','3433231','2019-01-21 09:43:10','1999-01-17','F','73','75','0');

INSERT INTO TB_PESSOA VALUES('74','04915965104','MARIA TAYANNE','','2017-12-28 13:35:44','2000-07-02','F','74','76','0');

INSERT INTO TB_PESSOA VALUES('75','04223342193','LUAMAR DE SOUSA DA SILVA','2.670.559','2017-12-28 22:26:05','1994-03-04','F','75','77','0');

INSERT INTO TB_PESSOA VALUES('76','07048585170','CAROLINA  FRANçA DOS SANTOS','3680244','2018-04-08 00:24:45','2000-06-27','F','237','78','0');

INSERT INTO TB_PESSOA VALUES('77','70602523125','ISABELLA GARCIA MENDES','','2017-12-30 09:07:52','1999-07-20','F','77','79','0');

INSERT INTO TB_PESSOA VALUES('79','07413552132','LAURA DOS SANTOS BUSSOLO','3313317','2017-12-30 12:02:00','2001-06-01','F','79','81','0');

INSERT INTO TB_PESSOA VALUES('80','04715844109','MAYLLA SOUZA BALZANI','3241579','2017-12-30 16:18:32','1994-04-08','F','80','82','0');

INSERT INTO TB_PESSOA VALUES('81','12600380680','JESSIKA LAYANE DA CRUZ ROCHA','19738421','2018-01-01 17:15:10','1997-12-14','F','81','83','0');

INSERT INTO TB_PESSOA VALUES('82','05016948380','BRENA KESSIA APOLINARIO','20072527220','2019-02-20 18:24:08','1990-05-11','F','82','84','0');

INSERT INTO TB_PESSOA VALUES('83','05684281109','MARIA RITA DE FRANçA OLIVEIRA','3500655','2018-01-01 22:40:30','2002-09-22','F','83','85','0');

INSERT INTO TB_PESSOA VALUES('84','13882346612','DEIVSON RODRIGO CARVALHO DE LIMA','20888916','2018-01-02 21:48:11','1998-01-17','M','84','86','0');

INSERT INTO TB_PESSOA VALUES('85','05297937175','VICTTóRIA MACêDO LEAL','3427266','2019-02-14 15:40:32','1998-08-18','F','85','87','0');

INSERT INTO TB_PESSOA VALUES('86','05774088103','GUSTAVO RODRIGUES VIANA','','2018-01-03 15:48:20','1999-02-06','M','86','88','0');

INSERT INTO TB_PESSOA VALUES('87','07645973102','EDILENE DA CRUZ SILVA','3804308','2018-01-04 10:54:06','2001-01-31','F','87','89','0');

INSERT INTO TB_PESSOA VALUES('88','73184500187','GLEICE IZABEL DE AZEVEDO','3244113','2018-04-25 16:05:49','1998-11-10','F','88','90','0');

INSERT INTO TB_PESSOA VALUES('90','06737827195','GABRIEL DA SILVA BARBOSA','389567','2019-01-28 21:44:26','1998-03-02','M','90','92','0');

INSERT INTO TB_PESSOA VALUES('91','07680580154','PALOMA MARIA FERREIRA DA SILVA','','2018-01-05 14:49:10','2001-10-02','F','91','93','0');

INSERT INTO TB_PESSOA VALUES('92','05687859160','MARIA LETíCIA SOUZA DE JESUS','3237347','2018-01-05 15:24:15','2002-03-22','F','92','94','0');

INSERT INTO TB_PESSOA VALUES('93','70773500103','DANIEL SILVA ALMEIDA','3724042','2018-01-05 16:11:53','2001-07-26','M','93','95','0');

INSERT INTO TB_PESSOA VALUES('95','06609588139','THAYNARA BARBOSA DE ALMEIDA','3421561','2019-01-29 22:47:29','1998-05-25','F','95','97','0');

INSERT INTO TB_PESSOA VALUES('96','07584039170','JENNIFER BIANCA CâNDIDO SOUZA','','2018-01-06 19:04:42','2000-10-04','F','96','98','0');

INSERT INTO TB_PESSOA VALUES('97','05241971130','JOãO DIEGO TONHA DOS SANTOS','3211162','2018-04-26 21:13:51','1996-09-15','M','97','99','0');

INSERT INTO TB_PESSOA VALUES('98','00792679121','MAYSA PEREIRA DIAS','3161236','2018-01-06 00:00:00','1997-07-13','F','98','100','0');

INSERT INTO TB_PESSOA VALUES('100','06175307186','FERNANDA SOARES CONCEIçãO','3607166','2018-01-06 21:44:40','2000-08-05','F','100','102','0');

INSERT INTO TB_PESSOA VALUES('101','05287289111','LETíCIA MARIA LIMA GOMES','3359694','2018-01-06 22:00:18','2001-01-18','F','101','103','0');

INSERT INTO TB_PESSOA VALUES('103','06333726176','AMANDA NEVES DE CARVALHO','','2018-01-07 00:00:00','2001-06-02','F','103','105','0');

INSERT INTO TB_PESSOA VALUES('104','05310353100','FERNANDA GOMES DE FREITAS MOURA','3431295','2019-02-27 17:59:12','1998-11-25','F','104','107','0');

INSERT INTO TB_PESSOA VALUES('105','06142723199','PEDRO HENRIQUE PIRES FONTES','3458321','2018-01-07 20:22:29','1999-04-12','M','105','108','0');

INSERT INTO TB_PESSOA VALUES('106','55246290182','RONNY KEN DIAS TOMINAGA','1176717','2018-01-07 20:39:13','1973-03-03','M','106','109','0');

INSERT INTO TB_PESSOA VALUES('107','05014533183','BIANCA CECI MARIA DA SILVA VIEIRA JUSTINIANO PINTO','5903835','2019-02-13 19:22:27','1995-02-02','F','107','110','0');

INSERT INTO TB_PESSOA VALUES('108','05747827103','VICTOR HUGO SOUZA RODRIGUES','3394541','2018-01-07 22:31:42','1997-06-19','M','108','111','0');

INSERT INTO TB_PESSOA VALUES('109','06848992135','TAYANE MOREIRA DA MOTA','3378297','2019-01-21 00:29:26','1998-08-01','F','109','112','0');

INSERT INTO TB_PESSOA VALUES('110','07500097131','LAURA MARINA DA SILVA DOCA CHAGAS','3769811','2018-01-08 18:18:17','2004-01-20','F','110','113','0');

INSERT INTO TB_PESSOA VALUES('111','06056363112','ANA KAROLYNA FIGUEREDO DOS SANTOS','3331977','2018-01-08 19:49:01','1997-02-17','F','111','114','0');

INSERT INTO TB_PESSOA VALUES('112','06708192128','BRUNO LIMA DE SOUZA','','2018-01-08 20:22:46','1996-08-20','M','112','115','0');

INSERT INTO TB_PESSOA VALUES('113','05608352130','MURILLO MEDEIROS DA COSTA','2956219','2019-02-21 19:48:06','1996-06-29','M','113','116','0');

INSERT INTO TB_PESSOA VALUES('114','03937448179','NATHALYA PIMENTEL TEMOTE','2947285','2019-02-21 22:44:03','1992-02-14','F','114','117','0');

INSERT INTO TB_PESSOA VALUES('115','05931650121','PEDRO HENRIQUE DA SILVA DUTRA','3395545','2019-02-25 08:05:57','1997-03-20','M','115','118','0');

INSERT INTO TB_PESSOA VALUES('116','03482796122','JOãO CARLOS DA COSTA SOUZA','2934513','2019-02-21 22:28:20','1993-07-08','M','116','119','0');

INSERT INTO TB_PESSOA VALUES('117','06601467111','JESSICA CAMILA CAMPOS SANTOS','3346717','2019-01-28 19:54:32','1998-02-01','F','117','120','0');

INSERT INTO TB_PESSOA VALUES('118','03109823594','LARA DE SOUSA ALMEIDA','3708412','2018-01-09 15:19:35','2001-04-22','F','118','121','0');

INSERT INTO TB_PESSOA VALUES('119','07666266103','LARISSA NOBRE DA CRUZ','3181458','2018-01-09 22:06:43','2000-07-03','F','119','122','0');

INSERT INTO TB_PESSOA VALUES('121','03931104192','BRUNA ALVES DE ALMEIDA','3634483','2018-01-11 20:14:55','2000-02-18','F','121','124','0');

INSERT INTO TB_PESSOA VALUES('122','06552593171','DéBORA DUARTE HONóRIO','3361495','2018-01-12 11:16:48','2000-07-29','F','122','125','0');

INSERT INTO TB_PESSOA VALUES('123','06623316132','MARIA CLáUDIA BISPO REIS','3751734','2019-01-22 00:09:39','2003-07-20','F','123','126','0');

INSERT INTO TB_PESSOA VALUES('124','06050851107','YARA RAQUEL FIGUERêDO ROCHA','3810048','2018-01-12 12:47:15','2002-01-05','F','124','127','0');

INSERT INTO TB_PESSOA VALUES('125','03382088100','ELTON BARAúNA DE SOUZA','','2018-01-13 11:31:01','1994-01-08','M','125','128','0');

INSERT INTO TB_PESSOA VALUES('126','02740998104','VITOR RIBEIRO DA SILVA','3327850','2018-01-13 13:14:57','1999-03-08','M','126','129','0');

INSERT INTO TB_PESSOA VALUES('127','06333037125','TAYNARA RODRIGUES DE AZEVEDO','3219262','2019-01-21 11:01:27','1998-05-20','F','127','130','0');

INSERT INTO TB_PESSOA VALUES('129','05698978158','ROMULO DIAS MIRANDA CARDOSO','3078508','2018-02-05 21:01:54','1997-05-23','M','129','132','0');

INSERT INTO TB_PESSOA VALUES('130','05957853100','EMANUELLE BEATRIZ DE SOUZA PEREIRA','23020','2018-01-16 11:58:03','2000-06-17','F','130','133','0');

INSERT INTO TB_PESSOA VALUES('131','10988854651','THAíS ARAúJO XAVIER','19401646','2018-01-16 12:00:04','1998-01-07','F','131','134','0');

INSERT INTO TB_PESSOA VALUES('132','81192010191','LEILA PIRES TOMINAGA','1665334','2018-01-16 14:41:05','1978-12-24','F','132','135','0');

INSERT INTO TB_PESSOA VALUES('133','02403923109','MARIANA LIMA DE OLIVEIRA','2794242','2019-01-25 10:52:12','1988-06-02','F','133','136','0');

INSERT INTO TB_PESSOA VALUES('134','08566215109','ELLEN PATRICIA FONSECA','3928513','2019-01-24 20:55:21','2002-06-01','F','134','137','0');

INSERT INTO TB_PESSOA VALUES('135','08102844132','CAMILA CARVALHO DA SILVA','3880945','2019-02-27 09:59:04','2002-04-30','F','135','138','0');

INSERT INTO TB_PESSOA VALUES('136','05434057104','BRUNNA NATIELY HERCULANO VIEIRA','3266229','2018-01-16 22:53:21','2004-06-01','F','136','139','0');

INSERT INTO TB_PESSOA VALUES('137','06622524114','JHONY FERREIRA','3440140','2018-01-17 20:04:06','1998-09-08','M','137','140','0');

INSERT INTO TB_PESSOA VALUES('139','07484604119','JEFFERSON FILLIPE DE SOUZA LOPES','3775465','2019-03-01 14:22:16','2001-02-02','M','139','142','0');

INSERT INTO TB_PESSOA VALUES('140','06353356110','YANKA EVELYN RODRIGUES DOS SANTOS','3463730','2019-01-20 22:20:26','2002-03-16','F','140','143','0');

INSERT INTO TB_PESSOA VALUES('141','06762820166','GABRIELLE RODRIGUES OLIVEIRA','3181561','2018-01-17 21:26:51','2000-03-04','F','141','144','0');

INSERT INTO TB_PESSOA VALUES('142','03267732158','ANTÔNIA SIMONE RAMOS LIMA MACIEL','2584628','2019-02-06 16:43:34','1987-12-29','F','142','145','0');

INSERT INTO TB_PESSOA VALUES('143','00879718102','WESLEY BARBOSA DE CARVALHO MACIEL LIMA','2284654','2019-02-13 13:17:33','1985-02-26','M','143','146','0');

INSERT INTO TB_PESSOA VALUES('144','86287770163','SILVIA MIKI YAMAMOTO','1903836','2018-01-18 16:37:04','1979-03-04','F','144','147','0');

INSERT INTO TB_PESSOA VALUES('145','07041741117','LARISSA GONçALVES FERREIRA','3543511','2018-07-04 11:17:53','1999-03-13','F','145','148','0');

INSERT INTO TB_PESSOA VALUES('146','06731639117','MARIA EDUARDA FREITAS','3580457','2018-01-18 21:26:11','2002-03-14','F','146','149','0');

INSERT INTO TB_PESSOA VALUES('147','01304694160','MARIA KARLENE RAMOS LIMA','2410507','2019-01-26 21:01:19','1986-08-24','F','147','150','0');

INSERT INTO TB_PESSOA VALUES('157','07164686114','CECíLIA RúBIA NASCIMENTO SILVA','3895703','2018-01-22 16:11:54','2003-08-28','F','157','160','0');

INSERT INTO TB_PESSOA VALUES('158','05498099100','BEATRIZ SILVA DE SOUSA','3839065','2019-01-20 22:00:58','2002-01-18','F','158','161','0');

INSERT INTO TB_PESSOA VALUES('159','06698074195','MATHEUS SALVINO AZEVEDO','3570685','2018-01-22 21:46:13','2001-03-27','M','159','162','0');

INSERT INTO TB_PESSOA VALUES('160','07664674140','WESLEY SALVINO DE FARIAS','3501198','2018-01-22 21:55:41','2001-09-10','M','160','163','0');

INSERT INTO TB_PESSOA VALUES('161','02766014160','VICTOR SAMUEL AZEVEDO DE OLIVEIRA','1574959','2018-01-22 22:07:15','2000-04-01','M','161','164','0');

INSERT INTO TB_PESSOA VALUES('162','05814614102','SINARA CAROLINE QUEIROZ SIMAS','3369895','2019-01-25 10:34:56','1996-12-25','F','162','165','0');

INSERT INTO TB_PESSOA VALUES('163','08395416601','LUIZ ANTóNIO BIZERRA DE OLIVEIRA','2550906','2018-01-23 13:42:29','1987-06-29','M','163','166','0');

INSERT INTO TB_PESSOA VALUES('164','08088901154','JOSé EDUARDO BARBOSA BARROS','3870162','2018-07-03 20:48:24','2002-02-19','M','164','167','0');

INSERT INTO TB_PESSOA VALUES('165','02783919150','GUILHERME MOREIRA FERREIRA','','2018-01-23 22:55:35','2001-02-03','M','165','168','0');

INSERT INTO TB_PESSOA VALUES('166','06945544133','GUILHERME BALBINO DA SILVA','3419756','2019-02-28 11:15:00','2000-07-19','M','166','169','0');

INSERT INTO TB_PESSOA VALUES('167','06183496189','MARINA LOPES RODRIGUES','','2018-01-24 10:40:47','1999-07-24','F','167','170','0');

INSERT INTO TB_PESSOA VALUES('168','73098230100','BEATRIZ FEITOSA DIAS','3326686','2018-01-24 11:32:07','2001-12-14','F','168','171','0');

INSERT INTO TB_PESSOA VALUES('169','03203937123','LETíCIA DA SILVA PEREIRA','3644877','2019-02-20 09:50:08','2001-05-16','F','169','172','0');

INSERT INTO TB_PESSOA VALUES('170','03203938103','RIVELINO NUNES PEREIRA FILHO','3644879','2019-02-20 14:24:32','2003-01-15','M','170','173','0');

INSERT INTO TB_PESSOA VALUES('171','04719974120','SAMARA DESCONZI','4325615','2018-01-25 14:44:32','1994-09-13','F','171','174','0');

INSERT INTO TB_PESSOA VALUES('172','07900479180','WESLEY ALVES DE CASTRO','3875385','2018-01-25 18:44:53','2002-08-16','M','172','175','0');

INSERT INTO TB_PESSOA VALUES('173','08102854103','LUDIMILA CARVALHO DA SILVA','3882414','2019-02-27 10:03:09','2002-04-30','F','173','176','0');

INSERT INTO TB_PESSOA VALUES('174','01860707130','DEISE MENDES','5074472','2018-01-26 09:37:32','1987-02-17','F','174','177','0');

INSERT INTO TB_PESSOA VALUES('175','07137599176','FERNANDA KARLA RODRIGUES LIMA','3585236','2018-01-26 13:55:38','2000-03-15','F','175','178','0');

INSERT INTO TB_PESSOA VALUES('176','62293245390','LAIANE DE OLIVEIRA SLVA','05727226120157','2018-01-26 22:32:56','2002-08-04','F','176','179','0');

INSERT INTO TB_PESSOA VALUES('177','07217842166','KAMILLY VICTORIA OLIVEIRA DA SILVA','3709308','2019-01-20 21:59:00','2001-12-05','F','177','180','0');

INSERT INTO TB_PESSOA VALUES('178','04436682137','GUILHERME VALE SILVA MATOS','','2018-01-27 15:19:30','1997-09-02','M','178','181','0');

INSERT INTO TB_PESSOA VALUES('179','06856422164','GABRIELLA VALE SILVA MATOS','','2018-01-27 15:27:16','2000-10-11','F','179','182','0');

INSERT INTO TB_PESSOA VALUES('180','06040545135','IZABELLA VAZ BANDEIRA','3945332','2018-01-27 18:47:05','2002-03-10','F','180','183','0');

INSERT INTO TB_PESSOA VALUES('181','06750144179','DION LUCAS SERAFIM BISPO','3395631','2019-02-17 14:51:42','1997-08-04','M','181','184','0');

INSERT INTO TB_PESSOA VALUES('182','02908039184','FERNANDA COêLHO DO NASCIMENTO','2968317','2018-01-28 22:46:17','1996-07-06','F','182','185','0');

INSERT INTO TB_PESSOA VALUES('183','05557418180','MONIKE NARDI','4285949','2019-02-25 09:11:10','1998-07-29','F','183','186','0');

INSERT INTO TB_PESSOA VALUES('184','04939491196','ARLAN SANTOS COIMBRA','3136252','2018-01-29 21:33:01','1995-10-02','M','184','187','0');

INSERT INTO TB_PESSOA VALUES('185','00143567160','LEONARA ALMEIDA','2914006','2018-01-30 11:12:00','1998-02-16','F','185','188','0');

INSERT INTO TB_PESSOA VALUES('186','05574670127','KEYSON GABRIEL RODRIGUES DE SOUSA','3744078','2018-06-30 21:31:36','2002-12-26','M','186','189','0');

INSERT INTO TB_PESSOA VALUES('187','07698409147','JONAS RODRIGUES DE SOUSA','3922129','2019-02-20 14:31:56','2004-02-17','M','187','190','0');

INSERT INTO TB_PESSOA VALUES('188','06049564108','JOãO VICTOR OLIVEIRA BARROS','3793321','2019-02-24 15:59:11','2001-01-27','M','188','191','0');

INSERT INTO TB_PESSOA VALUES('189','05858600174','AMAURY COSTA SILVA RAMOS','3094934','2019-01-31 11:56:22','1996-12-17','M','189','192','0');

INSERT INTO TB_PESSOA VALUES('190','06354574154','LUIZ MIGUEL BARBOSA BARROS','3364481','2018-02-01 15:21:39','2000-07-07','M','190','193','0');

INSERT INTO TB_PESSOA VALUES('191','00034280103','JOSE FERREIRA DOS SANTOS','4587456','2018-02-01 21:30:00','1984-11-23','M','191','194','0');

INSERT INTO TB_PESSOA VALUES('192','05461718183','LUY BRENNO SANTOS DE SOUZA','3305358','2018-02-01 22:34:48','2002-05-12','M','192','195','0');

INSERT INTO TB_PESSOA VALUES('193','04716421503','ERNANDO SOUZA DE PAULA','1108213479','2018-02-02 11:05:14','1995-03-06','M','193','196','0');

INSERT INTO TB_PESSOA VALUES('194','07606595160','HIGOR RODRIGUES DIAS','3795126','2018-02-02 15:29:32','2004-08-15','M','194','197','0');

INSERT INTO TB_PESSOA VALUES('196','06089979198','HELLEN THAIS DIAS RODRIGUES','3127539','2018-02-02 15:54:49','1995-12-11','F','196','199','0');

INSERT INTO TB_PESSOA VALUES('197','03685852124','DIEGO ROCHA DA SILVA','2801200','2018-02-03 12:31:21','1995-11-14','M','197','200','0');

INSERT INTO TB_PESSOA VALUES('198','04756906133','SONIARA APARECIDA MENDES MAIA','2808318','2018-02-03 22:41:21','1989-12-20','F','198','201','0');

INSERT INTO TB_PESSOA VALUES('199','04243396175','RAQUEL DA COSTA SILVA','3746218','2018-02-03 22:44:49','1990-08-12','F','199','202','0');

INSERT INTO TB_PESSOA VALUES('200','02969348101','JULIA FARAJ BENN','2799971','2018-02-03 22:49:55','1997-04-04','F','200','203','0');

INSERT INTO TB_PESSOA VALUES('201','04969369135','MATHEUS MARTINS DA COSTA','3587574','2018-02-04 13:23:13','1994-02-13','M','201','204','0');

INSERT INTO TB_PESSOA VALUES('202','04905680174','WEMERSON ANDRADE MESSIAS SANTOS','3126912','2018-02-04 17:30:48','1995-06-19','M','202','205','0');

INSERT INTO TB_PESSOA VALUES('203','05836568111','KAREN MIALICHI DA SILVA MAIA','3582719','2018-06-18 08:36:03','2000-01-29','F','203','206','0');

INSERT INTO TB_PESSOA VALUES('204','08155386180','GABRIEL DE SOUZA LIMA','3864239','2018-02-05 11:46:42','2003-04-08','M','204','207','0');

INSERT INTO TB_PESSOA VALUES('205','05721877189','POLYANNA DA COSTA LIMA','20538','2018-02-05 02:06:05','1999-02-27','F','205','208','0');

INSERT INTO TB_PESSOA VALUES('206','13736212658','JONATAS FRADIQUE BARROSO','20621259','2019-01-26 22:55:21','2001-12-14','M','206','209','0');

INSERT INTO TB_PESSOA VALUES('207','08685566100','LAíS VIEIRA SOUSA','3968383','2018-02-05 18:13:42','2004-08-13','F','207','210','0');

INSERT INTO TB_PESSOA VALUES('208','02871349118','ANA LíDIA DE HOLANDA NUNES','2952356','2018-02-05 20:35:53','2001-07-04','F','208','211','0');

INSERT INTO TB_PESSOA VALUES('209','03531877127','ALEX GEHLHAAR','5467661','2018-02-05 22:17:10','1990-11-07','M','209','212','0');

INSERT INTO TB_PESSOA VALUES('210','05999058163','JOYCE FERREIRA GOMES','3440139','2018-02-05 22:38:17','1997-02-21','F','210','213','0');

INSERT INTO TB_PESSOA VALUES('211','04027231120','JOYCE MARQUES SANTANA','3408815','2018-04-24 15:47:32','1998-01-07','F','211','214','0');

INSERT INTO TB_PESSOA VALUES('212','00458796131','TIAGO MOREIRA GOMES','3646693','2018-02-07 08:00:35','2001-08-24','M','212','215','0');

INSERT INTO TB_PESSOA VALUES('213','04387114169','ABIGAYL KATHLEEN COSTA DA PENHA','3031380','2018-02-07 09:41:06','1993-09-15','F','213','216','0');

INSERT INTO TB_PESSOA VALUES('214','09011125185','MARIA LUIZA CAMARGO RAPOSO DE MELO','','2018-02-07 11:50:45','2003-11-11','F','214','217','0');

INSERT INTO TB_PESSOA VALUES('215','04768775128','ELLIEL KASSIO','','2018-02-07 13:11:40','1998-09-03','M','215','218','0');

INSERT INTO TB_PESSOA VALUES('216','06212376123','DANIEL NEGREIRO MARCIEL','3097828','2018-02-07 13:41:02','1998-05-14','M','216','219','0');

INSERT INTO TB_PESSOA VALUES('217','05190377156','CARLOS AUGUSTO SILVA DAMACENA','3201756','2018-02-07 20:40:54','1995-12-05','M','217','220','0');

INSERT INTO TB_PESSOA VALUES('218','05728016103','MARIA LUIZA DE SOUSA CAMPOS BRAGA','3384476','2019-02-27 09:55:00','1996-01-19','F','218','221','0');

INSERT INTO TB_PESSOA VALUES('219','08991212174','MARCOS GABRIEL VASCO DA SILVA','3810461','2018-07-03 18:28:35','2004-11-19','M','219','222','0');

INSERT INTO TB_PESSOA VALUES('220','07419326100','GUILHERME HENRIQUE DA SILVA COSTA','3759715','2018-02-08 12:55:50','2001-12-24','M','220','223','0');

INSERT INTO TB_PESSOA VALUES('221','05606259109','ÉRIKA PEREIRA DO PRADO','3317440','2018-02-08 13:51:27','1996-10-22','F','221','224','0');

INSERT INTO TB_PESSOA VALUES('222','03726852182','RAFAEL FONTENELE','2844393','2018-02-08 14:08:22','1991-12-05','M','222','225','0');

INSERT INTO TB_PESSOA VALUES('223','07759869177','LETíCIA COELHO BRITO','','2018-02-08 18:50:34','2004-10-08','F','223','226','0');

INSERT INTO TB_PESSOA VALUES('224','08502378155','TAMIRES FERREIRA BARBOSA FELIX','','2018-02-08 19:41:19','2004-05-30','F','224','227','0');

INSERT INTO TB_PESSOA VALUES('225','03488383105','BRUNNA ADRYAH GUIMARãES MOURãO','','2018-02-08 23:01:47','2001-10-16','F','225','228','0');

INSERT INTO TB_PESSOA VALUES('226','07977141116','JúLIA VITóRIA NEGREIRO MARCIEL','3807699','2018-02-08 23:14:50','2002-06-22','F','226','229','0');

INSERT INTO TB_PESSOA VALUES('227','05546104180','JOãO VICTOR ALVES COELHO','3299020','2018-02-09 00:01:48','2002-04-12','M','227','230','0');

INSERT INTO TB_PESSOA VALUES('228','07257508127','CAMILA SANTOS GABRIEL','3719629','2018-02-09 00:26:19','2003-02-15','F','228','231','0');

INSERT INTO TB_PESSOA VALUES('229','03592193147','VITOR VALENTIN BENETTI','5086293','2018-02-09 12:34:26','1991-05-16','M','229','232','0');

INSERT INTO TB_PESSOA VALUES('230','07756279174','GEOVANNA EMILY ARAúJO SILVA','','2018-02-09 13:22:02','2003-04-19','F','230','233','0');

INSERT INTO TB_PESSOA VALUES('231','95397434272','ALEXSANDRA MAIBERG HAUSSER','6619507','2018-02-09 13:30:25','1995-10-05','F','231','234','0');

INSERT INTO TB_PESSOA VALUES('232','05546110155','PEDRO PAULO ALVES COELHO','3.528.368','2018-02-09 20:27:20','2003-09-01','M','232','235','0');

INSERT INTO TB_PESSOA VALUES('233','04337020365','FRANCISCO HENRIQUE MOTA DE SOUZA','5879927','2018-04-29 10:48:28','1996-01-30','M','245','236','0');

INSERT INTO TB_PESSOA VALUES('234','06352478107','SUYANE TALLITA REIS SILVA','3460572','2018-04-29 10:50:07','1998-07-11','F','246','237','0');

INSERT INTO TB_PESSOA VALUES('235','04268513159','WINDSOR ALEXANDRE DOS SANTOS SOUZA','3045945','2018-04-30 11:35:58','1993-06-06','M','247','238','0');

INSERT INTO TB_PESSOA VALUES('236','07275083183','SáVIO BISPO REIS','','2019-01-21 15:03:08','2000-09-04','M','248','239','0');

INSERT INTO TB_PESSOA VALUES('237','05550465167','JACKSON ALVES','3343427','2019-01-22 22:06:03','1996-07-07','M','279','240','0');

INSERT INTO TB_PESSOA VALUES('238','05229468106','RAFAEL SILVA DE OLIVEIRA','05229468106','2018-05-20 21:00:51','1993-12-04','M','280','241','0');

INSERT INTO TB_PESSOA VALUES('240','07499217140','BRENO SILVA DE JESUS','3776706','2018-05-27 23:48:08','2001-02-13','M','282','243','0');

INSERT INTO TB_PESSOA VALUES('241','05141394123','ANA CAROLINA SILVA','3124534','2018-06-04 20:05:38','1996-01-08','F','283','244','0');

INSERT INTO TB_PESSOA VALUES('242','06383077163','ARIANE NUNES DA SILVA','3472927','2019-01-23 14:19:59','1999-03-01','F','284','245','0');

INSERT INTO TB_PESSOA VALUES('243','04206677921','MARCIA MELNEK','85847058','2019-01-13 16:08:10','1983-08-03','F','287','246','0');

INSERT INTO TB_PESSOA VALUES('244','04944595140','ÍTALO FERNANDO DA SILVA LUIZ','3158490','2019-01-17 16:42:38','1995-05-18','M','288','247','442');

INSERT INTO TB_PESSOA VALUES('245','04720774148','RAFAEL FREITAS DA SILVA','3060082','2019-01-18 14:44:59','1993-06-25','M','289','248','0');

INSERT INTO TB_PESSOA VALUES('246','39439641835','EDWIRGES CASSIA DE MACEDO','467680097','2019-01-19 18:36:25','1989-10-20','F','290','249','0');

INSERT INTO TB_PESSOA VALUES('247','05212276152','DANIELA SANTOS DE ALMEIDA','','2019-01-20 21:55:19','1998-01-16','F','291','250','0');

INSERT INTO TB_PESSOA VALUES('248','02937355145','JAKELINE VILELA DE SOUSA','','2019-01-20 22:01:18','1994-08-15','F','292','251','0');

INSERT INTO TB_PESSOA VALUES('249','00879041102','ANDERSON BRAGA INOCENTES','3.289.218','2019-01-20 22:02:18','1996-10-14','M','293','252','0');

INSERT INTO TB_PESSOA VALUES('250','05321176116','MATHEUS KLISMANN CARVALHO COSTA','3238804','2019-01-20 22:03:04','1997-07-15','M','294','253','0');

INSERT INTO TB_PESSOA VALUES('251','03428527100','MARIANA SALLES DE MELO','3346790','2019-01-20 22:11:46','1998-02-28','F','295','254','0');

INSERT INTO TB_PESSOA VALUES('252','05715367190','THAíS CRISTINA CAMPOS SANTOS','3346747','2019-01-20 22:15:51','1996-02-05','F','296','255','0');

INSERT INTO TB_PESSOA VALUES('253','06602130102','MARIA FERNANDA PIRES DA SILVA','3307821','2019-01-20 22:18:24','2000-01-21','F','297','256','0');

INSERT INTO TB_PESSOA VALUES('254','05519731373','RELKA MARIA PONTE AGUIAR','20074073936','2019-01-20 22:21:42','1994-01-12','F','298','257','0');

INSERT INTO TB_PESSOA VALUES('255','07119942182','GEOVANNA VICTHORIA CARDOSO SIQUEIRA','6948592','2019-01-20 23:31:06','2001-06-09','F','299','258','0');

INSERT INTO TB_PESSOA VALUES('256','06817128137','ANA CAROLINA MEIRELES FELIPE','3105779','2019-01-20 23:51:16','1998-03-13','F','300','259','0');

INSERT INTO TB_PESSOA VALUES('257','07899778182','KEYCE CRISTINA OLIVEIRA DOS SANTOS','3942048','2019-01-21 00:12:05','2004-10-10','F','301','260','0');

INSERT INTO TB_PESSOA VALUES('258','04930461197','MARIA GIOVANNA BARROS FERNANDES','3820878','2019-01-21 10:30:20','2001-09-02','F','302','261','0');

INSERT INTO TB_PESSOA VALUES('259','01851898140','GABRIELLEN CINTIA DE OLIVEIRA CAMPOS','3599038','2019-01-21 10:51:18','2000-03-09','F','303','262','0');

INSERT INTO TB_PESSOA VALUES('260','07140603138','BEATRIZ SIMõES DA SILVA MELO','3690093','2019-01-21 11:14:08','2000-11-27','F','304','263','0');

INSERT INTO TB_PESSOA VALUES('261','07606456127','GUSTAVO VINíCIUS ALVES BARBOSA PIMENTA','3798185','2019-01-21 11:24:06','2001-12-18','M','305','264','0');

INSERT INTO TB_PESSOA VALUES('262','08293377178','DEISYRE BISPO CARDOSO','','2019-01-21 11:48:00','2003-03-26','F','306','265','0');

INSERT INTO TB_PESSOA VALUES('263','05963855101','ESTER CRISTINA DURVAL PEREIRA','3923333','2019-01-21 12:28:54','2002-04-12','F','307','266','0');

INSERT INTO TB_PESSOA VALUES('264','03075910180','SARA DA MOTA MENDONÇA','3334043','2019-01-21 14:04:12','2001-10-14','F','308','267','0');

INSERT INTO TB_PESSOA VALUES('265','04949392140','CAIO CéSAR NUNES CABILó','356871','2019-01-21 15:20:32','1998-08-22','M','309','268','0');

INSERT INTO TB_PESSOA VALUES('266','04056176159','DANILO ARANTES SEBASTIãO','3833327','2019-01-21 15:35:20','2000-07-26','M','310','269','0');

INSERT INTO TB_PESSOA VALUES('267','01135804109','ISABELA CRISTINA CAPITULINO XIMENES ARAGãO','3681195','2019-01-21 17:55:49','2002-09-10','F','311','270','0');

INSERT INTO TB_PESSOA VALUES('268','05877553186','MARIA CLARA DOS SANTOS RIBEIRO','3497005','2019-01-21 19:33:46','2001-04-24','F','312','271','0');

INSERT INTO TB_PESSOA VALUES('271','05401945140','RAYSSA PEREIRA DE OLIVEIRA','3323385','2019-01-24 22:04:09','1996-12-28','F','315','274','0');

INSERT INTO TB_PESSOA VALUES('272','04103487160','POLYANA VELOSO DE OLIVEIRA','3305217','2019-01-24 23:33:03','1988-08-14','F','316','275','0');

INSERT INTO TB_PESSOA VALUES('273','00139964100','JEANE SILVA DE ANDRADE','2854961','2019-01-25 20:11:44','1990-04-09','F','317','276','0');

INSERT INTO TB_PESSOA VALUES('274','18320684714','LETICIA MIRANDA MORAES','307498972','2019-01-25 20:18:26','2001-07-07','F','318','277','0');

INSERT INTO TB_PESSOA VALUES('275','07195528189','JOÃO VICTOR LUZIANO PEREIRA CALISTO','6697317','2019-01-25 22:14:47','2001-01-19','M','319','278','0');

INSERT INTO TB_PESSOA VALUES('276','06352404162','ALINE CARVALHO DE LIMA','','2019-01-26 10:37:16','1998-06-29','F','320','279','0');

INSERT INTO TB_PESSOA VALUES('277','06587335160','JUCéLIA SARAIVA DOS SANTOS','','2019-01-27 18:09:20','1998-02-28','F','321','280','0');

INSERT INTO TB_PESSOA VALUES('278','03472358165','AYRTON FERREIRA LOPES','3003429','2019-01-28 11:31:12','1994-05-29','M','322','281','0');

INSERT INTO TB_PESSOA VALUES('279','06586182107','MATHEUS HUMBERTO MIRANDA RIBEIRO','3022280','2019-01-31 15:11:46','1999-01-29','M','323','282','0');

INSERT INTO TB_PESSOA VALUES('280','06673024178','GABRIEL WALKER','3561444','2019-02-02 13:21:21','1999-07-07','M','324','283','0');

INSERT INTO TB_PESSOA VALUES('281','07715403105','JOAO VICTOR RIBEIRO DA SILVA','3833792','2019-02-04 14:13:35','2002-11-25','M','325','284','0');

INSERT INTO TB_PESSOA VALUES('282','02334436224','RAQUEL BESERRA','1363090','2019-02-06 10:53:36','1998-01-29','F','326','285','0');

INSERT INTO TB_PESSOA VALUES('283','07097287195','GABRIELLY MANGABEIRA LOURENçO DE LIMA','3681153','2019-02-07 00:20:37','2002-04-26','F','327','286','0');

INSERT INTO TB_PESSOA VALUES('284','04522772130','NATALIA AFONSO SOARES','','2019-02-07 14:10:17','2000-04-30','F','328','287','0');

INSERT INTO TB_PESSOA VALUES('285','07441849160','ANA FLáVIA MOREIRA E SILVA COELHO','3740487','2019-02-07 22:25:29','2000-02-09','F','329','288','0');

INSERT INTO TB_PESSOA VALUES('286','04995846190','ALAN MATOS LOURENçO','3145877','2019-02-07 23:25:53','1995-07-11','M','330','289','0');

INSERT INTO TB_PESSOA VALUES('287','06085749104','MILENA DE OLIVEIRA','','2019-02-08 11:37:12','1998-06-30','F','331','290','0');

INSERT INTO TB_PESSOA VALUES('288','08368052327','VICTORIA CRISTINA SOUSA LIMA','0583227520169','2019-02-08 11:40:14','2000-06-30','F','332','291','0');

INSERT INTO TB_PESSOA VALUES('289','04252687136','ADRIANA ARRUDA DE JESUS','2518260','2019-02-09 09:55:01','1993-02-17','F','333','292','0');

INSERT INTO TB_PESSOA VALUES('290','03510723147','NATHáLIA SARAIVA DE SOUZA','2869058','2019-02-09 12:40:42','1991-10-24','F','334','293','0');

INSERT INTO TB_PESSOA VALUES('291','05194514140','CAROLINA ROMEIRO MORAES','2879779','2019-02-09 16:06:05','1997-09-05','F','335','294','0');

INSERT INTO TB_PESSOA VALUES('292','05977268173','JOãO PAULO MOREIRA DA NOBREGA','3322358','2019-02-10 22:38:33','1999-12-15','M','336','295','0');

INSERT INTO TB_PESSOA VALUES('293','04728267199','ANA CAROLINA FERREIRA DA COSTA','3536302','2019-02-11 12:50:39','2003-01-30','F','337','296','0');

INSERT INTO TB_PESSOA VALUES('294','06639749173','MARIA JULIA DE FREITAS','3621573','2019-02-11 19:10:11','2002-02-10','F','338','297','0');

INSERT INTO TB_PESSOA VALUES('295','05738747194','LORRANE HESTER PEREIRA ROCHA','3350896','2019-02-12 10:11:19','2001-07-18','F','339','298','0');

INSERT INTO TB_PESSOA VALUES('296','05618299186','DIERFE DE DEUS LIMA','3037829','2019-02-13 09:05:17','1998-03-22','M','340','299','0');

INSERT INTO TB_PESSOA VALUES('297','70275105105','ANDRESSA CARVALHO DA SILVA','','2019-02-13 10:47:11','2000-07-12','F','341','300','0');

INSERT INTO TB_PESSOA VALUES('298','04530557103','KARINA BARBOSA MENDES','2992293','2019-02-13 19:07:47','1994-07-27','F','342','301','0');

INSERT INTO TB_PESSOA VALUES('299','07397443303','MARCELO ALVES DA SILVA','3520963','2019-02-14 10:20:16','1999-06-25','M','343','302','0');

INSERT INTO TB_PESSOA VALUES('300','05134023140','ANA KAROLINY MARTINS TAVARES','3023086','2019-02-14 14:55:31','1994-11-15','F','344','303','0');

INSERT INTO TB_PESSOA VALUES('301','07399613141','BRUNO SILVA DOS SANTOS','3980763','2019-02-14 15:11:51','2001-01-02','M','345','304','0');

INSERT INTO TB_PESSOA VALUES('302','01389936104','WELINGTON BARBOSA DE CARVALHO MACIEL LIMA','2412467','2019-02-14 21:51:19','1987-04-14','M','346','305','0');

INSERT INTO TB_PESSOA VALUES('303','01518921132','ANA PAULA  CARVALHO DA SILVA','2423176','2019-02-14 22:05:08','1988-08-08','F','347','306','0');

INSERT INTO TB_PESSOA VALUES('304','07573284152','SARAH GUIMARãES PEREIRA CAVALCANTE','3817835','2019-02-15 23:13:05','2002-03-07','F','348','307','0');

INSERT INTO TB_PESSOA VALUES('305','03878397127','SANDRA RAQUEL DE OLIVEIRA SILVA','2857357','2019-02-16 10:38:53','1990-01-17','F','349','308','0');

INSERT INTO TB_PESSOA VALUES('306','04425611136','DANIELA FARIAS GOMES','3804660','2019-02-16 17:05:39','2001-08-19','F','350','309','0');

INSERT INTO TB_PESSOA VALUES('307','04107752151','LUCAS BARBOSA FARIAS','2638201','2019-02-18 09:53:14','1992-03-12','M','351','310','0');

INSERT INTO TB_PESSOA VALUES('308','05969953180','DANYELLE SOUZA SILVA','3626902','2019-02-18 11:01:53','2003-12-23','F','352','311','0');

INSERT INTO TB_PESSOA VALUES('309','02379728160','ANA LúCIA GOMES FIGUEIRó ALVES','1865710','2019-02-18 17:55:38','1980-04-19','F','353','312','0');

INSERT INTO TB_PESSOA VALUES('310','03275210157','STEPHANIE PAIVA SILVA','3058976','2019-02-18 18:12:25','1997-07-30','F','354','313','0');

INSERT INTO TB_PESSOA VALUES('311','87494299149','TIO FOFãO','1761141','2019-02-18 18:16:25','1978-12-30','M','355','314','0');

INSERT INTO TB_PESSOA VALUES('312','70935284141','LUíS FELLYPE MORAES DE AQUINO','3553008','2019-02-18 20:21:52','2000-08-23','M','356','315','0');

INSERT INTO TB_PESSOA VALUES('313','06137617157','EDUARDO MIRANDA DE SOUZA SANTANA','3700790','2019-02-18 20:22:49','2001-10-14','M','357','316','0');

INSERT INTO TB_PESSOA VALUES('314','02562538110','BáRBARA SANY GOMES ALVES','3342514','2019-02-18 22:38:20','2000-10-05','F','358','317','0');

INSERT INTO TB_PESSOA VALUES('315','06231690105','MARIA EDUARDA CARDOSO DE ARAUJO','','2019-02-18 22:59:10','2003-03-29','F','359','318','0');

INSERT INTO TB_PESSOA VALUES('316','06622619174','FLáVIA CAROLINA FERREIRA LINHARES','3501793','2019-02-19 07:25:58','1999-04-21','F','360','319','0');

INSERT INTO TB_PESSOA VALUES('317','05272520181','YASMIM OLIVEIRA FERREIRA DOS SANTOS','3044396','2019-02-19 17:30:55','1992-10-11','F','361','320','0');

INSERT INTO TB_PESSOA VALUES('318','08060127144','RENATA FRANCISCA NOGUEIRA DOS SANTOS','38883880','2019-02-19 19:06:40','2001-11-04','F','362','321','0');

INSERT INTO TB_PESSOA VALUES('319','05339850137','TIAGO STEFERSON DA SILVA ARAÚJO','3235485','2019-02-20 12:25:10','1995-03-10','M','363','322','0');

INSERT INTO TB_PESSOA VALUES('320','05603569190','BIANCA GOMES DE SOUZA','3249294','2019-02-20 12:28:54','1996-01-19','F','364','323','0');

INSERT INTO TB_PESSOA VALUES('321','05880597148','JOãO VICTOR FERREIRA DE ARAúJO','3385270','2019-02-20 17:06:14','1998-07-25','M','365','324','0');

INSERT INTO TB_PESSOA VALUES('322','07702576154','GABRIEL ALVINO MARTINS','','2019-02-21 18:20:46','2001-11-07','M','366','325','0');

INSERT INTO TB_PESSOA VALUES('323','06024657102','LARISSA CORREIA MARIANO','3440871','2019-02-22 19:17:47','1999-02-27','F','367','326','0');

INSERT INTO TB_PESSOA VALUES('324','11228775605','BáRBARA HELENA SOUSA CIRILO','3313414','2019-02-24 14:33:49','2000-09-18','F','368','327','0');

INSERT INTO TB_PESSOA VALUES('325','07670429135','ARTHUR SIMON BARBOSA DA SILVA E SA','3809220','2019-02-24 21:16:27','2003-10-04','M','369','328','0');

INSERT INTO TB_PESSOA VALUES('326','11120352657','WANDERSON FERNANDES DE SOUZA','49444762','2019-02-24 22:15:58','1993-05-13','M','370','329','0');

INSERT INTO TB_PESSOA VALUES('327','05896884133','CLARA REGINA RODRIGUES','3630361','2019-02-24 22:32:12','2001-06-20','F','371','330','0');

INSERT INTO TB_PESSOA VALUES('328','07188202150','MARIA RITA OLIVEIRA FEITOSA','3707525','2019-02-25 11:25:13','2000-10-02','F','372','331','0');

INSERT INTO TB_PESSOA VALUES('329','72985020344','LUCIANNE KAREN NOGUEIRA CORREIA','132075506','2019-02-25 12:10:57','1976-07-16','F','373','332','0');

INSERT INTO TB_PESSOA VALUES('330','07154102101','VITOR ARAUJO MARIANO','3709322','2019-02-25 13:05:26','1999-09-06','M','374','333','0');

INSERT INTO TB_PESSOA VALUES('331','06611566139','RHAíSSA DOMINGOS DE CASTRO','3451464','2019-02-25 13:40:12','1997-11-27','F','375','334','0');

INSERT INTO TB_PESSOA VALUES('332','05787935128','PAULO VICTOR DA SILVA SOUZA','','2019-02-25 14:19:27','1999-05-28','M','376','335','0');

INSERT INTO TB_PESSOA VALUES('333','06689223116','JANDERSON WíLLAME GONçALVES BEZERRA','3567998','2019-02-25 18:25:24','2002-12-11','M','377','336','0');

INSERT INTO TB_PESSOA VALUES('334','01637891180','THIAGO MARINHO DE OLIVEIRA VILAS BOAS','3704028','2019-02-25 20:16:42','2000-08-18','M','378','337','0');

INSERT INTO TB_PESSOA VALUES('335','05701818101','ISABELA MAITER VERAS DE SOUZA','3355258','2019-02-25 20:28:47','1996-11-19','F','379','338','0');

INSERT INTO TB_PESSOA VALUES('336','07393099942','GABRIELLA ANDRADE DOS SANTOS LIMA','3252780','2019-02-26 00:35:48','1993-02-21','F','380','339','0');

INSERT INTO TB_PESSOA VALUES('337','04384294190','HENRIQUE NUNES DE SOUSA','4945345','2019-02-26 19:38:07','1993-06-07','M','381','340','0');

INSERT INTO TB_PESSOA VALUES('338','07048559179','MARIANA LILIAN LIMA MAIA','3082211','2019-02-28 11:19:51','1998-08-24','F','382','341','0');

INSERT INTO TB_PESSOA VALUES('339','06259635125','CARLOS EDUARDO RIBEIRO DOS SANTOS','3417133','2019-02-28 11:40:52','2000-03-12','M','383','342','0');

INSERT INTO TB_PESSOA VALUES('340','06256485106','PEDRO HENRIQUE RIBEIRO DOS SANTOS','3417142','2019-02-28 11:47:39','1997-12-08','M','384','343','0');

INSERT INTO TB_PESSOA VALUES('341','13834759708','GLAUCIA PENHA MENDES','','2019-02-28 16:15:24','1984-04-28','F','385','344','0');

INSERT INTO TB_PESSOA VALUES('342','06702153171','GABRIELE SOUZA CONDE','','2019-02-28 19:58:41','1999-08-06','F','386','345','0');

INSERT INTO TB_PESSOA VALUES('343','08472945103','SAMARA ADRIELLY DE OLIVEIRA GASPAR','','2019-02-28 21:02:17','2003-10-01','F','387','346','0');

INSERT INTO TB_PESSOA VALUES('344','04780102146','THIAGO NUNES NEVES','3109677','2019-03-01 08:05:30','1997-02-26','M','388','347','0');

INSERT INTO TB_PESSOA VALUES('345','07099105175','JOãO DAVID DE JESUS COSTA','7110571','2019-03-01 08:29:09','1999-06-24','M','389','348','0');

INSERT INTO TB_PESSOA VALUES('346','04752608138','STEFFANY SILVA SOBRINHO','3025005','2019-03-01 10:07:20','1997-03-23','F','390','349','0');

INSERT INTO TB_PESSOA VALUES('347','02946012107','RAFAELA BARBOSA RAFACHO MOURA','5285840','2019-03-01 14:26:51','1998-11-29','F','391','350','0');

INSERT INTO TB_PESSOA VALUES('348','06319309148','RAFAEL OLIVEIRA SUCUPIRA','3479165','2019-03-01 14:45:59','2002-03-17','M','392','351','0');

INSERT INTO TB_PESSOA VALUES('349','07678537174','FERNANDA FERREIRA COSTA','3878981','2019-12-27 12:05:27','2001-09-13','F','394','352','0');

INSERT INTO TB_PESSOA VALUES('350','93376243115','SANDRA CARMEN DA SILVA','75922949','2019-12-27 19:57:04','1977-06-10','F','395','353','0');

INSERT INTO TB_PESSOA VALUES('351','05329350123','LETíCIA GABRIELLY LOURENçO SITARO','','2019-12-28 17:30:45','2003-03-22','F','396','354','0');

INSERT INTO TB_PESSOA VALUES('352','06680620104','GABRIELLE CHAVES SILVA','3565707','2019-12-30 12:37:53','2001-07-22','F','397','355','0');

INSERT INTO TB_PESSOA VALUES('353','06469649173','TIAGO VITOR GOMES DE MOURA','3499346','2020-01-01 18:34:30','1999-03-24','M','398','356','0');

INSERT INTO TB_PESSOA VALUES('354','04134730155','LARIZA WENTZ DE OLIVEIRA','6105791','2020-01-02 13:07:04','1995-03-05','F','399','357','428');

INSERT INTO TB_PESSOA VALUES('355','01034643100','PRISCILA DE CARVALHO BRITO','','2020-01-05 01:58:39','1991-07-05','F','400','358','0');

INSERT INTO TB_PESSOA VALUES('356','07046295182','LUIS EDUARDO RODRIGUES RAMOS','1410672','2020-01-05 05:45:51','2001-01-19','M','401','359','0');

INSERT INTO TB_PESSOA VALUES('357','06272016107','MARIANA CORTEZ DA SILVA DE PAOLI','3409484','2020-01-06 11:33:35','1998-04-30','F','402','360','0');

INSERT INTO TB_PESSOA VALUES('358','05964373151','ANA GRAZIELLE DE OLIVEIRA GOMES','2874919','2020-01-07 13:00:50','1997-07-25','F','403','361','0');

INSERT INTO TB_PESSOA VALUES('359','07604399150','LUDMILLA GOMES DA SILVA','3795745','2020-01-07 13:11:21','2001-05-30','F','404','362','438');

INSERT INTO TB_PESSOA VALUES('360','07674846148','EMILY PEREIRA DO NASCIMENTO','3807286','2020-01-07 23:03:11','2001-02-27','F','405','363','0');

INSERT INTO TB_PESSOA VALUES('361','04072603155','ANNE RAPHAELLA GOMES DE JESUS','1102580550','2020-01-08 12:39:48','2001-09-10','F','406','364','445');

INSERT INTO TB_PESSOA VALUES('362','03471042156','GIOVANNA BORGES ABRANTES','','2020-01-08 13:34:09','1997-08-11','F','407','365','0');

INSERT INTO TB_PESSOA VALUES('363','06383077163','ARIANE NUNES DA SILVA','3472927','2020-01-08 18:12:56','1999-03-01','F','408','366','0');

INSERT INTO TB_PESSOA VALUES('364','04158010101','BáRBARA GONçALVES BITTENCOURT','3748153','2020-01-09 16:51:00','2002-03-14','F','409','367','0');

INSERT INTO TB_PESSOA VALUES('365','06373986101','MARINA MELO DUTRA','3469831','2020-01-15 13:28:08','2002-04-01','F','410','368','0');

INSERT INTO TB_PESSOA VALUES('366','03925892575','THANDRESYA BIANCA PEREIRA PINHEIRO','2755130','2020-01-17 00:19:30','1992-07-21','F','411','369','0');

INSERT INTO TB_PESSOA VALUES('367','06932033151','LAVíNIA VIEIRA PEREIRA PINHEIRO','3632258','2020-01-17 08:46:24','2004-06-23','F','412','370','450');

INSERT INTO TB_PESSOA VALUES('368','07676975107','MARYANA NUNES DA SILVA','3515779','2020-01-18 10:04:56','2001-06-11','F','413','371','0');

INSERT INTO TB_PESSOA VALUES('369','08871894154','GUILHERME VINICIUS SILVA BARBOSA','7169535','2020-01-18 16:55:37','2004-03-29','M','414','372','0');

INSERT INTO TB_PESSOA VALUES('370','07549720118','BáRBARA OLIVEIRA LOPES','3799971','2020-01-19 20:46:19','2001-08-15','F','415','373','452');

INSERT INTO TB_PESSOA VALUES('371','08427663161','GABRIELA DIAS ALMEIDA','3948985','2020-01-21 14:29:12','2003-03-13','F','416','374','0');

INSERT INTO TB_PESSOA VALUES('372','70193030136','SARA LUIZ DA SILVA','3780809','2020-01-21 20:12:39','2002-01-06','F','417','375','0');

INSERT INTO TB_PESSOA VALUES('373','05522131101','LUCAS RODRIGUES DOS SANTOS','3179989','2020-01-22 09:15:13','1994-12-17','M','418','376','0');

INSERT INTO TB_PESSOA VALUES('374','04543052145','AYANA B SOUSA','3855692','2020-01-22 20:54:35','2002-11-29','F','419','377','0');

INSERT INTO TB_PESSOA VALUES('375','07939674145','ANNE CAROLINE SIMõES FERREIRA DANTAS','3860053','2020-01-22 20:59:02','2003-02-21','F','420','378','0');

INSERT INTO TB_PESSOA VALUES('376','70813808162','ALICE DE SOUZA VAZ DA SILVA','','2020-01-25 19:01:48','2003-01-26','F','421','379','0');

INSERT INTO TB_PESSOA VALUES('377','29764335187','MARIANA DOS SANTOS SILVA','4072281','2020-01-25 21:44:33','2004-06-28','F','422','380','0');

INSERT INTO TB_PESSOA VALUES('378','07707845188','MARIANA TAVARES TEIXEIRA DE MATOS','3.814.289','2020-01-26 21:50:36','2002-04-18','F','423','381','0');

INSERT INTO TB_PESSOA VALUES('379','07188215138','EMANUELA OLIVEIRA FEITOSA','','2020-01-26 23:09:46','2002-12-18','F','424','382','0');

INSERT INTO TB_PESSOA VALUES('380','02132897174','BRUNO SERRA DE OLIVEIRA','2681174','2020-01-28 19:22:09','1999-09-23','M','425','383','0');

INSERT INTO TB_PESSOA VALUES('381','07143791156','ISABELA TEIXEIRA MARTINS','3690719','2020-01-28 20:11:04','2002-08-09','F','426','384','462');

INSERT INTO TB_PESSOA VALUES('382','03299497138','BERNARD PINTO NACES','5312201','2020-01-28 21:37:10','2004-07-20','M','427','385','0');

INSERT INTO TB_PESSOA VALUES('383','02644806194','KALIL SCHäFLER','5175964','2020-01-29 08:26:07','1990-02-13','M','428','386','0');

INSERT INTO TB_PESSOA VALUES('384','03686007185','RYAN REIS FONTENELE','3997317','2020-01-29 23:31:04','2002-09-27','M','429','387','0');

INSERT INTO TB_PESSOA VALUES('385','09295697685','JANAINA DE SOUSA SILVA','16078850','2020-01-30 14:10:27','1988-08-19','F','430','388','0');

INSERT INTO TB_PESSOA VALUES('386','00607384131','ITALO JOSE DUTRA','4446910','2020-01-30 14:55:34','1984-03-19','M','431','389','0');

INSERT INTO TB_PESSOA VALUES('387','06383488112','MARA DO NASCIMENTO FLOR','3472623','2020-01-31 19:26:31','1999-08-13','F','432','390','0');

INSERT INTO TB_PESSOA VALUES('388','06680354129','CAIO FELIPE GOULART TORRES','2923887','2020-02-02 22:43:00','2001-08-08','M','433','391','0');

INSERT INTO TB_PESSOA VALUES('389','08418009101','MARIA LUIZA VITOR DA SILVA','7525094','2020-02-03 15:38:34','2004-10-27','F','434','392','0');

INSERT INTO TB_PESSOA VALUES('390','08417731148','MATHEUS HENRIQUE VITOR DA SILVA','7525092','2020-02-03 17:19:21','2004-02-20','M','435','393','0');

INSERT INTO TB_PESSOA VALUES('391','06396096196','RAFAEL PAULINO DE OLIVEIRA','3578246','2020-02-04 02:12:54','2001-06-23','M','436','394','0');

INSERT INTO TB_PESSOA VALUES('392','01520250657','GRACIENE DE SOUZA LEMOS','3741796','2020-02-04 09:32:12','1986-04-11','F','437','395','0');

INSERT INTO TB_PESSOA VALUES('393','74178431153','ANA PAULA DE SOUZA','5707586','2020-02-04 17:36:58','1985-06-08','F','438','396','470');

INSERT INTO TB_PESSOA VALUES('394','05694705360','DANIEL SANTOS GUEDES','3173278','2020-02-04 23:49:19','1994-05-02','M','439','397','0');

INSERT INTO TB_PESSOA VALUES('395','04708971125','ANTôNIA MICAELE SOUZA SILVA','','2020-02-06 00:46:26','1995-09-07','F','440','398','472');

INSERT INTO TB_PESSOA VALUES('396','06600138190','FELIPPE LUIZ DE MORAIS DA SILVA','3611431','2020-02-07 21:07:51','1998-10-14','M','441','399','0');

INSERT INTO TB_PESSOA VALUES('397','03070415148','NATáLIA DE LIMA','5886969','2020-02-08 07:21:38','1995-07-19','F','442','400','0');

INSERT INTO TB_PESSOA VALUES('398','00908386109','CAMILLA ALVES ARRUDA FONTES','','2020-02-08 20:44:18','2000-12-23','F','443','401','0');

INSERT INTO TB_PESSOA VALUES('399','00053005171','MARCELA FIGUEIREDO RIBEIRO','2154028','2020-02-09 00:46:46','1984-07-31','F','444','402','0');

INSERT INTO TB_PESSOA VALUES('400','07644354182','JONATAS GONçALVELS DE SOUZA','3399866','2020-02-09 19:00:18','2001-09-19','M','445','403','0');

INSERT INTO TB_PESSOA VALUES('401','13289837572','VERA LUCIA SANTANA','796577','2020-02-10 00:06:37','1956-06-17','F','446','404','0');

INSERT INTO TB_PESSOA VALUES('402','08505669169','TAYNA GOMES DE SOUSA','7000821','2020-02-10 15:59:38','2003-04-07','F','447','405','0');

INSERT INTO TB_PESSOA VALUES('403','08760791179','MATHEUS DA SILVA SOUTO','7445785','2020-02-10 21:23:34','2001-05-30','M','448','406','0');

INSERT INTO TB_PESSOA VALUES('404','02899512161','LAíS SABINO LEAL','2877309','2020-02-11 23:32:22','1999-09-20','F','449','407','0');

INSERT INTO TB_PESSOA VALUES('405','07074063150','ESTHER ANGéLICA COSTA SOUSA','3029062','2020-02-12 13:13:31','2001-08-08','F','450','408','0');

INSERT INTO TB_PESSOA VALUES('406','05256717146','ANDRESSA LOUISE DE DEUS MATEUS','5997733','2020-02-13 17:28:20','1995-01-02','F','451','409','0');

INSERT INTO TB_PESSOA VALUES('407','05940647162','WENDEL LUCAS SACRAMENTO ROSA','3381800','2020-02-13 17:38:03','1998-03-19','M','452','410','0');

INSERT INTO TB_PESSOA VALUES('408','05087633129','PRISCILA LORRRANE LOPES DE SOUSA','5920150','2020-02-16 22:03:15','1993-06-24','F','453','411','0');

INSERT INTO TB_PESSOA VALUES('409','08638682158','LUIZA GEHLHAAR','3969736','2020-02-17 18:24:30','2003-10-10','F','454','412','0');

INSERT INTO TB_PESSOA VALUES('410','05766553170','GABRIELLA DE OLIVEIRA GUEDES','3312943','2020-02-17 19:39:23','1998-02-18','F','455','413','0');

INSERT INTO TB_PESSOA VALUES('411','11186821655','YSABELLE ROMANNA VAZ BORGES','19112800','2020-02-17 21:32:38','1995-02-09','F','456','414','0');

INSERT INTO TB_PESSOA VALUES('412','04933594198','LUIZ GUILHERME VIEIRA RODRIGUES','3287499','2020-02-18 08:53:48','1999-12-13','M','457','415','0');

INSERT INTO TB_PESSOA VALUES('413','04100682174','LAIANE MAURíCIO BARROSO','2494556','2020-02-18 11:38:03','1993-04-07','F','458','416','0');

INSERT INTO TB_PESSOA VALUES('414','06709736105','VICTOR GABRIEL DE ALMEIDA ROQUE','356871','2020-02-18 12:46:38','2000-03-17','M','459','417','0');

INSERT INTO TB_PESSOA VALUES('415','05147984160','TIAGO FREIRE LOPES','2008099109030','2020-02-18 13:45:00','1995-07-01','M','460','418','0');

INSERT INTO TB_PESSOA VALUES('416','05734249181','GLAYDSTONE SOUSA MENESES','3349106','2020-02-19 00:34:44','1999-06-19','M','461','419','0');

INSERT INTO TB_PESSOA VALUES('417','64652807104','MARI JOSE SANTANA BARBOSA','1526468','2020-02-19 12:03:18','1973-12-26','F','462','420','0');

INSERT INTO TB_PESSOA VALUES('418','12345678909','JULIANA DE OLIVEIRA SANTOS','','2020-02-19 21:33:15','2003-11-20','F','463','421','0');

INSERT INTO TB_PESSOA VALUES('419','05816714147','KAIO DE JESUS RIBEIRO MENDONçA','','2020-02-20 09:25:10','2002-01-18','M','464','422','0');

INSERT INTO TB_PESSOA VALUES('420','05124432110','KAICK RIBEIRO DE PAULO','','2020-02-20 10:26:02','2003-06-08','M','465','423','0');

INSERT INTO TB_PESSOA VALUES('421','03267400155','FERNANDA LUíSA LUZ GOMES','3328406','2020-02-20 11:25:06','2000-10-11','F','466','424','0');

INSERT INTO TB_PESSOA VALUES('422','02703169140','DOUGLAS TIHAGO ALBERNAZ DE FARIA','3713647','2020-02-20 11:57:29','2000-01-22','M','467','425','0');

INSERT INTO TB_PESSOA VALUES('423','07059242112','POLYANA ALBERNAZ DE FARIA','3848959','2020-02-20 12:29:27','2001-10-14','F','468','426','0');

INSERT INTO TB_PESSOA VALUES('424','22133356134','EDMUNDO DA SILVA LIMA FILHO','567165','2020-02-20 14:29:26','1961-01-23','M','469','427','0');

INSERT INTO TB_PESSOA VALUES('425','07032796370','LUCAS BARBOSA VERAS','','2020-02-20 21:44:41','2002-01-22','M','470','428','0');

INSERT INTO TB_PESSOA VALUES('426','78537240397','ELLEM REJANE MILHOMEM','4202121','2020-02-21 08:31:13','1979-05-09','F','471','429','0');

INSERT INTO TB_PESSOA VALUES('427','31207600482','MARIA JANEIDE DE MEDEIROS SILVA','3490567','2020-02-21 11:54:13','1961-11-20','F','472','430','0');

INSERT INTO TB_PESSOA VALUES('428','03935748140','GABRIELLE DE SOUZA SPINDOLA','6502182','2020-02-21 18:21:10','2003-11-11','F','473','431','0');




DROP TABLE IF EXISTS TB_PLANO;


CREATE TABLE `TB_PLANO` (
  `co_plano` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_plano` varchar(100) DEFAULT NULL,
  `nu_mes_ativo` int(1) DEFAULT NULL COMMENT 'Número de meses ativo do plano (1, 3, 6, 12 e 24)',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'Status do plano A - Ativo / I - Inativo',
  PRIMARY KEY (`co_plano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PLANO_ASSINANTE;


CREATE TABLE `TB_PLANO_ASSINANTE` (
  `co_plano_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(10,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text DEFAULT NULL,
  `co_plano` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante`,`co_plano`),
  KEY `fk_TB_PLANO_ASSINANTE_TB_PLANO1_idx` (`co_plano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PLANO_ASSINANTE_ASSINATURA;


CREATE TABLE `TB_PLANO_ASSINANTE_ASSINATURA` (
  `co_plano_assinante_assinatura` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_expiracao` date DEFAULT NULL COMMENT 'data de expiriração da assinatura',
  `nu_filiais` int(11) DEFAULT 0 COMMENT 'Número de filiais para a assinatura',
  `nu_valor_assinatura` decimal(6,2) DEFAULT NULL COMMENT 'Valor final da assinatura',
  `nu_profissionais` int(3) DEFAULT NULL COMMENT 'Número de profissionais que o sistema ira gerenciar',
  `co_assinante` int(11) NOT NULL,
  `co_plano_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante_assinatura`,`co_assinante`,`co_plano_assinante`),
  KEY `fk_TB_PLANO_ASSINANTE_ASSINATURA_TB_ASSINANTE1_idx` (`co_assinante`),
  KEY `fk_TB_PLANO_ASSINANTE_ASSINATURA_TB_PLANO_ASSINANTE1_idx` (`co_plano_assinante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PLANO_PACOTE;


CREATE TABLE `TB_PLANO_PACOTE` (
  `co_plano_pacote` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Planos do Módulo',
  `co_plano` int(11) NOT NULL,
  `co_pacote` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_pacote`,`co_plano`,`co_pacote`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_MODULO1_idx` (`co_pacote`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_PLANO1_idx` (`co_plano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS TB_PROJETO;


CREATE TABLE `TB_PROJETO` (
  `co_projeto` int(11) NOT NULL AUTO_INCREMENT,
  `no_projeto` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  PRIMARY KEY (`co_projeto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO TB_PROJETO VALUES('1','Web Gej','2019-03-27 10:50:32');




DROP TABLE IF EXISTS TB_SESSAO;


CREATE TABLE `TB_SESSAO` (
  `co_sessao` int(11) NOT NULL AUTO_INCREMENT,
  `no_sessao` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_modulo` int(11) NOT NULL,
  PRIMARY KEY (`co_sessao`,`co_modulo`),
  KEY `fk_TB_SESSAO_TB_MODULO1_idx` (`co_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


INSERT INTO TB_SESSAO VALUES('4','Camisa','2019-04-05 17:09:31','1');

INSERT INTO TB_SESSAO VALUES('5','Missão','2019-04-05 17:12:01','2');

INSERT INTO TB_SESSAO VALUES('6','Agenda','2019-04-05 17:12:36','1');

INSERT INTO TB_SESSAO VALUES('7','Formação','2019-04-05 17:12:53','1');

INSERT INTO TB_SESSAO VALUES('8','Teatro','2019-04-05 17:13:24','1');

INSERT INTO TB_SESSAO VALUES('9','Integração','2019-04-05 17:14:24','3');

INSERT INTO TB_SESSAO VALUES('10','Produto','2019-04-05 17:16:15','3');

INSERT INTO TB_SESSAO VALUES('11','Administrativo','2019-04-15 14:53:16','1');

INSERT INTO TB_SESSAO VALUES('12','Camisa','2019-05-02 11:40:07','2');




DROP TABLE IF EXISTS TB_TAMANHO_CAMISA;


CREATE TABLE `TB_TAMANHO_CAMISA` (
  `co_tamanho_camisa` int(2) NOT NULL AUTO_INCREMENT,
  `no_tamanho` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`co_tamanho_camisa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


INSERT INTO TB_TAMANHO_CAMISA VALUES('1','BL PP');

INSERT INTO TB_TAMANHO_CAMISA VALUES('2','BL P');

INSERT INTO TB_TAMANHO_CAMISA VALUES('3','BL M');

INSERT INTO TB_TAMANHO_CAMISA VALUES('4','BL G');

INSERT INTO TB_TAMANHO_CAMISA VALUES('5','BL GG');

INSERT INTO TB_TAMANHO_CAMISA VALUES('6','P');

INSERT INTO TB_TAMANHO_CAMISA VALUES('7','M');

INSERT INTO TB_TAMANHO_CAMISA VALUES('8','G');

INSERT INTO TB_TAMANHO_CAMISA VALUES('9','GG');

INSERT INTO TB_TAMANHO_CAMISA VALUES('10','XG');




DROP TABLE IF EXISTS TB_TIPO_PAGAMENTO;


CREATE TABLE `TB_TIPO_PAGAMENTO` (
  `co_tipo_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `ds_tipo_pagamento` varchar(45) DEFAULT NULL,
  `sg_tipo_pagamento` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_tipo_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


INSERT INTO TB_TIPO_PAGAMENTO VALUES('1','Dinheiro','DI');

INSERT INTO TB_TIPO_PAGAMENTO VALUES('2','Cartão de Crédito','CC');

INSERT INTO TB_TIPO_PAGAMENTO VALUES('3','Depósito Bancário','DB');




DROP TABLE IF EXISTS TB_TRAFEGO;


CREATE TABLE `TB_TRAFEGO` (
  `co_trafego` int(11) NOT NULL AUTO_INCREMENT,
  `nu_ip` varchar(20) DEFAULT NULL,
  `ds_pais` varchar(100) DEFAULT NULL,
  `ds_code_pais` varchar(100) DEFAULT NULL,
  `ds_uf` varchar(45) DEFAULT NULL,
  `ds_estado` varchar(100) DEFAULT NULL,
  `ds_cidade` varchar(120) DEFAULT NULL,
  `ds_navegador` varchar(45) DEFAULT NULL,
  `ds_sistema_operacional` varchar(45) DEFAULT NULL,
  `ds_dispositivo` varchar(45) DEFAULT NULL,
  `ds_agente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`co_trafego`)
) ENGINE=InnoDB AUTO_INCREMENT=1721 DEFAULT CHARSET=utf8;


INSERT INTO TB_TRAFEGO VALUES('1716','127.0.0.1','Desconhecido','Desconhecida','Desconhecida','Desconhecida','Desconhecida','Firefox','Windows 10','Desktop','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0');

INSERT INTO TB_TRAFEGO VALUES('1717','127.0.0.1','Desconhecido','Desconhecida','Desconhecida','Desconhecida','Desconhecida','Firefox','Windows 10','Desktop','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0');

INSERT INTO TB_TRAFEGO VALUES('1718','127.0.0.1','Desconhecido','Desconhecida','Desconhecida','Desconhecida','Desconhecida','Firefox','Windows 10','Desktop','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0');

INSERT INTO TB_TRAFEGO VALUES('1720','127.0.0.1','Desconhecido','Desconhecida','Desconhecida','Desconhecida','Desconhecida','Firefox','Windows 10','Desktop','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0');




DROP TABLE IF EXISTS TB_USUARIO;


CREATE TABLE `TB_USUARIO` (
  `co_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `ds_senha` varchar(100) NOT NULL,
  `ds_code` varchar(50) NOT NULL COMMENT 'Senha criptografada',
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT '''A - Ativo / I - Inativo''',
  `st_troca_senha` varchar(1) DEFAULT 'N',
  `dt_cadastro` datetime NOT NULL,
  `co_imagem` int(10) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_usuario`,`co_imagem`,`co_pessoa`,`co_assinante`),
  KEY `fk_TB_USUARIO_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_USUARIO_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_USUARIO_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO VALUES('1','123456**','TVRJek5EVTJLaW89','A','S','2016-10-31 00:00:00','1','1','0');

INSERT INTO TB_USUARIO VALUES('2','Lucrece0611','VEhWamNtVmpaVEEyTVRFPQ==','A','N','2017-12-09 00:00:00','31','31','0');

INSERT INTO TB_USUARIO VALUES('3','raul**123','Y21GMWJDb3FNVEl6','I','N','2017-12-10 00:00:00','34','34','0');

INSERT INTO TB_USUARIO VALUES('4','santosdecalcajeansjpII123','YzJGdWRHOXpaR1ZqWVd4allXcGxZVzV6YW5CSlNURXlNdz09','A','N','2017-12-10 00:00:00','36','36','0');

INSERT INTO TB_USUARIO VALUES('5','pe.pio2309','Y0dVdWNHbHZNak13T1E9PQ==','A','N','2017-12-11 00:00:00','37','37','0');

INSERT INTO TB_USUARIO VALUES('6','OPACObrubs123','VDFCQlEwOWljblZpY3pFeU13PT0=','A','N','2017-12-11 00:00:00','39','39','0');

INSERT INTO TB_USUARIO VALUES('7','311088*lili**','TXpFeE1EZzRLbXhwYkdrcUtnPT0=','A','N','2017-12-20 00:00:00','62','61','0');

INSERT INTO TB_USUARIO VALUES('8','Maria10','VFdGeWFXRXhNQT09','A','N','2017-12-27 00:00:00','74','72','0');

INSERT INTO TB_USUARIO VALUES('9','Ultimagot4','Vld4MGFXMWhaMjkwTkE9PQ==','I','N','2017-12-27 00:00:00','75','73','0');

INSERT INTO TB_USUARIO VALUES('10','Dieguinho10','UkdsbFozVnBibWh2TVRBPQ==','I','N','2018-01-06 00:00:00','99','97','0');

INSERT INTO TB_USUARIO VALUES('11','MA130797','VFVFeE16QTNPVGM9','I','N','2018-01-06 00:00:00','100','98','0');

INSERT INTO TB_USUARIO VALUES('12','An020601','UVc0d01qQTJNREU9','I','N','2018-01-07 00:00:00','105','103','0');

INSERT INTO TB_USUARIO VALUES('13','euamominhaMAE123','WlhWaGJXOXRhVzVvWVUxQlJURXlNdz09','A','N','2018-01-31 00:00:00','192','189','0');

INSERT INTO TB_USUARIO VALUES('16','120296120296hca*','TVRJd01qazJNVEl3TWprMmFHTmhLZz09','I','N','2018-04-09 22:33:17','6','6','0');

INSERT INTO TB_USUARIO VALUES('17','Samambaia123','VTJGdFlXMWlZV2xoTVRJeg==','A','N','2018-04-23 16:55:21','239','104','0');

INSERT INTO TB_USUARIO VALUES('18','Maria24','VFdGeWFXRXlOQT09','A','N','2018-05-04 23:31:15','150','147','0');

INSERT INTO TB_USUARIO VALUES('19','noss@senhor@lov3','Ym05emMwQnpaVzVvYjNKQWJHOTJNdz09','A','N','2018-05-12 19:43:46','245','25','0');

INSERT INTO TB_USUARIO VALUES('20','Bxfc2ilcrk','UW5obVl6SnBiR055YXc9PQ==','I','N','2018-05-12 21:37:29','246','16','0');

INSERT INTO TB_USUARIO VALUES('21','mari10873388','YldGeWFURXdPRGN6TXpnNA==','I','N','2018-05-14 15:06:15','247','133','0');

INSERT INTO TB_USUARIO VALUES('22','yanka22','ZVdGdWEyRXlNZz09','A','N','2018-05-20 21:16:50','251','140','0');

INSERT INTO TB_USUARIO VALUES('24','8906','T0Rrd05nPT0=','A','N','2018-05-21 15:26:19','145','142','0');

INSERT INTO TB_USUARIO VALUES('25','wesley585978','ZDJWemJHVjVOVGcxT1RjNA==','A','N','2018-05-25 20:34:45','146','143','0');

INSERT INTO TB_USUARIO VALUES('26','241064','TWpReE1EWTA=','A','N','2018-05-31 15:55:29','254','117','0');

INSERT INTO TB_USUARIO VALUES('27','95250255','T1RVeU5UQXlOVFU9','I','N','2019-01-05 17:30:31','262','95','0');

INSERT INTO TB_USUARIO VALUES('32','7140kahh','TnpFME1HdGhhR2c9','I','N','2019-01-29 22:12:58','329','10','0');

INSERT INTO TB_USUARIO VALUES('33','170599','TVRjd05UazU=','I','N','2019-02-07 09:43:02','87','85','0');

INSERT INTO TB_USUARIO VALUES('34','Kt8CD3v125','UzNRNFEwUXpkakV5TlE9PQ==','I','N','2019-12-27 19:57:04','420','350','0');

INSERT INTO TB_USUARIO VALUES('35','85116994','T0RVeE1UWTVPVFE9','I','N','2020-01-08 18:12:56','447','363','0');




DROP TABLE IF EXISTS TB_USUARIO_PERFIL;


CREATE TABLE `TB_USUARIO_PERFIL` (
  `co_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `co_usuario` int(10) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(10) NOT NULL,
  PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`,`co_perfil_assinante`),
  KEY `fk_tb_usuario_tb_perfil_tb_perfil1_idx` (`co_perfil`),
  KEY `fk_tb_usuario_tb_perfil_tb_usuario_idx` (`co_usuario`),
  KEY `fk_TB_USUARIO_PERFIL_TB_PERFIL_ASSINANTE1_idx` (`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;


INSERT INTO TB_USUARIO_PERFIL VALUES('34','10','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('35','11','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('36','12','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('48','7','6','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('49','7','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('50','7','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('51','7','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('56','1','8','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('57','1','7','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('58','1','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('59','1','1','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('91','19','23','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('92','19','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('107','6','17','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('108','6','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('110','23','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('113','24','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('114','22','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('144','26','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('162','28','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('164','9','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('165','29','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('166','30','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('167','31','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('172','5','8','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('173','5','6','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('174','5','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('175','5','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('176','5','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('177','4','6','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('178','4','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('179','4','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('180','4','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('185','21','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('186','18','8','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('187','18','7','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('188','18','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('212','16','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('220','25','8','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('221','25','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('222','25','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('223','17','21','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('224','17','8','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('225','17','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('228','32','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('229','33','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('230','27','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('231','20','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('232','13','10','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('233','13','7','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('234','13','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('235','13','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('236','8','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('237','3','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('238','2','21','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('239','2','4','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('240','2','2','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('241','2','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('242','34','3','0');

INSERT INTO TB_USUARIO_PERFIL VALUES('243','35','3','0');




DROP TABLE IF EXISTS TB_VISITA;


CREATE TABLE `TB_VISITA` (
  `co_visita` int(11) NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `nu_visitas` int(11) DEFAULT NULL,
  `co_trafego` int(11) NOT NULL,
  PRIMARY KEY (`co_visita`,`co_trafego`),
  KEY `fk_TB_VISITA_TB_TRAFEGO1_idx` (`co_trafego`)
) ENGINE=InnoDB AUTO_INCREMENT=1275 DEFAULT CHARSET=utf8;


INSERT INTO TB_VISITA VALUES('1197','','2022-12-12 20:44:23','1','0');

INSERT INTO TB_VISITA VALUES('1199','','2022-12-12 20:44:31','1','0');

INSERT INTO TB_VISITA VALUES('1201','','2022-12-12 23:07:39','1','0');

INSERT INTO TB_VISITA VALUES('1203','','2022-12-12 23:07:46','1','0');

INSERT INTO TB_VISITA VALUES('1205','','2022-12-12 23:08:08','1','0');

INSERT INTO TB_VISITA VALUES('1207','','2022-12-12 23:08:22','1','0');

INSERT INTO TB_VISITA VALUES('1209','','2022-12-12 23:08:28','1','0');

INSERT INTO TB_VISITA VALUES('1211','','2022-12-12 23:09:33','1','0');

INSERT INTO TB_VISITA VALUES('1213','','2022-12-12 23:30:58','1','0');

INSERT INTO TB_VISITA VALUES('1215','','2022-12-12 23:33:18','1','0');

INSERT INTO TB_VISITA VALUES('1217','','2022-12-12 23:33:46','1','0');

INSERT INTO TB_VISITA VALUES('1219','','2022-12-12 23:34:10','1','0');

INSERT INTO TB_VISITA VALUES('1221','','2022-12-12 23:34:14','1','0');

INSERT INTO TB_VISITA VALUES('1223','','2022-12-12 23:35:01','1','0');

INSERT INTO TB_VISITA VALUES('1225','','2022-12-12 23:35:13','1','0');

INSERT INTO TB_VISITA VALUES('1227','','2022-12-12 23:36:36','1','0');

INSERT INTO TB_VISITA VALUES('1229','','2022-12-12 23:36:55','1','0');

INSERT INTO TB_VISITA VALUES('1231','','2022-12-12 23:37:11','1','0');

INSERT INTO TB_VISITA VALUES('1233','','2022-12-12 23:38:13','1','0');

INSERT INTO TB_VISITA VALUES('1235','','2022-12-12 23:38:43','1','0');

INSERT INTO TB_VISITA VALUES('1237','2022-12-12 23:44:14','2022-12-13 23:40:47','3','1717');

INSERT INTO TB_VISITA VALUES('1239','','2022-12-12 23:44:45','1','0');

INSERT INTO TB_VISITA VALUES('1241','','2022-12-12 23:44:49','1','0');

INSERT INTO TB_VISITA VALUES('1243','','2022-12-12 23:45:52','1','0');

INSERT INTO TB_VISITA VALUES('1245','','2022-12-12 23:46:48','1','0');

INSERT INTO TB_VISITA VALUES('1247','','2022-12-12 23:49:17','1','0');

INSERT INTO TB_VISITA VALUES('1249','','2022-12-12 23:49:27','1','0');

INSERT INTO TB_VISITA VALUES('1251','','2022-12-12 23:49:36','1','0');

INSERT INTO TB_VISITA VALUES('1253','','2022-12-12 23:50:20','1','0');

INSERT INTO TB_VISITA VALUES('1255','','2022-12-12 23:50:23','1','0');

INSERT INTO TB_VISITA VALUES('1257','2022-12-13 23:45:05','2022-12-13 23:45:34','2','1718');

INSERT INTO TB_VISITA VALUES('1273','2022-12-14 00:22:09','2022-12-14 00:22:09','1','1720');




