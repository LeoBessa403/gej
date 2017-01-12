-- MYSQL WORKBENCH SYNCHRONIZATION
-- GENERATED: 2016-12-07 14:03
-- MODEL: NEW MODEL
-- VERSION: 1.0
-- PROJECT: NAME OF THE PROJECT
-- AUTHOR: LEO

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

<<<<<<< .mineCREATE TABLE IF NOT EXISTS `gej_bd`.`TB_AUDITORIA` (
  `co_auditoria` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `no_tabela` VARCHAR(150) NULL DEFAULT NULL,
  `dt_realizado` DATETIME NULL DEFAULT NULL,
  `no_operacao` VARCHAR(1) NULL DEFAULT NULL,
  `ds_item_anterior` TEXT NULL DEFAULT NULL,
  `ds_item_atual` TEXT NULL DEFAULT NULL,
  `co_registro` INT(10) NULL DEFAULT NULL,
  `ds_perfil_usuario` TEXT NULL DEFAULT NULL,
  `co_usuario` INT(10) NOT NULL,
  PRIMARY KEY (`co_auditoria`, `co_usuario`),
  INDEX `fk_TB_AUDITORIA_TB_USUARIO1_idx` (`co_usuario` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_AUDITORIA` (
  `CO_AUDITORIA` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NO_TABELA` VARCHAR(150) NULL DEFAULT NULL,
  `DT_REALIZADO` DATETIME NULL DEFAULT NULL,
  `NO_OPERACAO` VARCHAR(1) NULL DEFAULT NULL,
  `DS_ITEM_ANTERIOR` TEXT NULL DEFAULT NULL,
  `DS_ITEM_ATUAL` TEXT NULL DEFAULT NULL,
  `CO_REGISTRO` INT(10) NULL DEFAULT NULL,
  `DS_PERFIL_USUARIO` TEXT NULL DEFAULT NULL,
  `CO_USUARIO` INT(10) NOT NULL,
  PRIMARY KEY (`CO_AUDITORIA`, `CO_USUARIO`),
  INDEX `FK_TB_AUDITORIA_TB_USUARIO1_IDX` (`CO_USUARIO` ASC))
ENGINE = MYISAM
DEFAULT CHARACTER SET = UTF8;
>>>>>>> .theirs
<<<<<<< .mineCREATE TABLE IF NOT EXISTS `gej_bd`.`TB_EVENTO` (
  `co_evento` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `no_evento` VARCHAR(250) NULL DEFAULT NULL,
  `ds_conteudo` TEXT NULL DEFAULT NULL,
  `ds_palavras_chaves` VARCHAR(100) NULL DEFAULT NULL,
  `dt_cadastro` DATETIME NULL DEFAULT NULL,
  `dt_realizado` DATE NULL DEFAULT NULL,
  `ds_local` VARCHAR(150) NULL DEFAULT NULL,
  PRIMARY KEY (`co_evento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_EVENTO` (
  `CO_EVENTO` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NO_EVENTO` VARCHAR(250) NULL DEFAULT NULL,
  `DS_CONTEUDO` TEXT NULL DEFAULT NULL,
  `DS_PALAVRAS_CHAVES` VARCHAR(100) NULL DEFAULT NULL,
  `DT_CADASTRO` DATETIME NULL DEFAULT NULL,
  `DT_REALIZADO` DATE NULL DEFAULT NULL,
  `DS_LOCAL` VARCHAR(150) NULL DEFAULT NULL,
  PRIMARY KEY (`CO_EVENTO`))
ENGINE = MYISAM
DEFAULT CHARACTER SET = LATIN1;
>>>>>>> .theirs
<<<<<<< .mineCREATE TABLE IF NOT EXISTS `gej_bd`.`TB_IMAGEM` (
  `co_imagem` INT(10) NOT NULL AUTO_INCREMENT,
  `ds_caminho` VARCHAR(150) NULL DEFAULT NULL,
  PRIMARY KEY (`co_imagem`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_IMAGEM` (
  `CO_IMAGEM` INT(10) NOT NULL AUTO_INCREMENT,
  `DS_CAMINHO` VARCHAR(150) NULL DEFAULT NULL,
  PRIMARY KEY (`CO_IMAGEM`))
ENGINE = INNODB
DEFAULT CHARACTER SET = LATIN1;
>>>>>>> .theirs
<<<<<<< .mineCREATE TABLE IF NOT EXISTS `gej_bd`.`TB_FUNCIONALIDADE` (
  `co_funcionalidade` INT(11) NOT NULL AUTO_INCREMENT,
  `no_funcionalidade` VARCHAR(150) NOT NULL,
  `ds_rota` VARCHAR(250) NOT NULL,
  `st_status` VARCHAR(1) NOT NULL DEFAULT 'I' COMMENT 'A - Ativo / I - Inativo',
  PRIMARY KEY (`co_funcionalidade`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_FUNCIONALIDADE` (
  `CO_FUNCIONALIDADE` INT(11) NOT NULL AUTO_INCREMENT,
  `NO_FUNCIONALIDADE` VARCHAR(150) NOT NULL,
  `DS_ROTA` VARCHAR(250) NOT NULL,
  `ST_STATUS` VARCHAR(1) NOT NULL DEFAULT 'I' COMMENT 'A - ATIVO / I - INATIVO',
  PRIMARY KEY (`CO_FUNCIONALIDADE`))
ENGINE = INNODB
DEFAULT CHARACTER SET = LATIN1;
>>>>>>> .theirs
<<<<<<< .mineCREATE TABLE IF NOT EXISTS `gej_bd`.`TB_CONTATO` (
  `co_contato` INT(11) NOT NULL AUTO_INCREMENT,
  `nu_tel1` VARCHAR(15) NOT NULL,
  `nu_tel2` VARCHAR(15) NULL DEFAULT NULL,
  `nu_tel3` VARCHAR(15) NULL DEFAULT NULL,
  `ds_email` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`co_contato`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `gej_bd`.`TB_ENDERECO` (
  `co_endereco` INT(11) NOT NULL AUTO_INCREMENT,
  `ds_endereco` VARCHAR(150) NOT NULL,
  `ds_complemento` VARCHAR(100) NULL DEFAULT NULL,
  `ds_bairro` VARCHAR(80) NULL DEFAULT NULL,
  `nu_cep` VARCHAR(15) NULL DEFAULT NULL,
  `no_cidade` VARCHAR(80) NULL DEFAULT NULL,
  `sg_uf` VARCHAR(2) NULL DEFAULT NULL,
  PRIMARY KEY (`co_endereco`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `gej_bd`.`TB_PESSOA` (
  `co_pessoa` INT(11) NOT NULL AUTO_INCREMENT,
  `nu_cpf` VARCHAR(15) NULL DEFAULT NULL,
  `no_pessoa` VARCHAR(100) NOT NULL,
  `nu_rg` VARCHAR(15) NULL DEFAULT NULL,
  `dt_cadastro` DATETIME NULL DEFAULT NULL,
  `dt_nascimento` DATE NULL DEFAULT NULL,
  `st_sexo` VARCHAR(1) NULL DEFAULT NULL,
  `co_contato` INT(11) NOT NULL,
  `co_endereco` INT(11) NOT NULL,
  PRIMARY KEY (`co_pessoa`, `co_contato`, `co_endereco`),
  INDEX `fk_TB_PESSOA_TB_CONTATO1_idx` (`co_contato` ASC),
  INDEX `fk_TB_PESSOA_TB_ENDERECO1_idx` (`co_endereco` ASC),
  CONSTRAINT `fk_TB_PESSOA_TB_CONTATO1`
    FOREIGN KEY (`co_contato`)
    REFERENCES `gej_bd`.`TB_CONTATO` (`co_contato`),
  CONSTRAINT `fk_TB_PESSOA_TB_ENDERECO1`
    FOREIGN KEY (`co_endereco`)
    REFERENCES `gej_bd`.`TB_ENDERECO` (`co_endereco`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `gej_bd`.`TB_MEMBRO` (
  `co_membro` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `no_responsavel` VARCHAR(100) NULL DEFAULT NULL,
  `st_estuda` VARCHAR(1) NULL DEFAULT NULL,
  `st_trabalha` VARCHAR(1) NULL DEFAULT NULL,
  `ds_conhecimento` TEXT NULL DEFAULT NULL,
  `st_status` VARCHAR(1) NULL DEFAULT NULL,
  `st_batizado` VARCHAR(1) NOT NULL,
  `st_eucaristia` VARCHAR(1) NOT NULL,
  `st_crisma` VARCHAR(1) NOT NULL,
  `co_pessoa` INT(11) NOT NULL,
  PRIMARY KEY (`co_membro`, `co_pessoa`),
  INDEX `fk_TB_MEMBRO_TB_PESSOA1_idx` (`co_pessoa` ASC),
  CONSTRAINT `fk_TB_MEMBRO_TB_PESSOA1`
    FOREIGN KEY (`co_pessoa`)
    REFERENCES `gej_bd`.`TB_PESSOA` (`co_pessoa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_MEMBRO` (
  `CO_MEMBRO` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NO_RESPONSAVEL` VARCHAR(100) NULL DEFAULT NULL,
  `ST_ESTUDA` VARCHAR(1) NULL DEFAULT NULL,
  `ST_TRABALHA` VARCHAR(1) NULL DEFAULT NULL,
  `DS_CONHECIMENTO` TEXT NULL DEFAULT NULL,
  `ST_STATUS` VARCHAR(1) NULL DEFAULT NULL,
  `ST_BATIZADO` VARCHAR(1) NOT NULL,
  `ST_EUCARISTIA` VARCHAR(1) NOT NULL,
  `ST_CRISMA` VARCHAR(1) NOT NULL,
  `CO_PESSOA` INT(11) NOT NULL,
  PRIMARY KEY (`CO_MEMBRO`, `CO_PESSOA`),
  INDEX `FK_TB_MEMBRO_TB_PESSOA1_IDX` (`CO_PESSOA` ASC),
  CONSTRAINT `FK_TB_MEMBRO_TB_PESSOA1`
    FOREIGN KEY (`CO_PESSOA`)
    REFERENCES `GEJ_BD`.`TB_PESSOA` (`CO_PESSOA`))
ENGINE = INNODB
DEFAULT CHARACTER SET = LATIN1;
>>>>>>> .theirs
<<<<<<< .mineCREATE TABLE IF NOT EXISTS `gej_bd`.`TB_INSCRICAO` (
  `co_inscricao` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ds_pastoral` TEXT NULL DEFAULT NULL,
  `ds_retiro` VARCHAR(1) NULL DEFAULT NULL,
  `ds_membro_ativo` VARCHAR(1) NULL DEFAULT 'N',
  `ds_situacao_atual_grupo` INT(1) NULL DEFAULT NULL,
  `co_evento` INT(10) UNSIGNED NOT NULL,
  `nu_camisa` INT(1) NOT NULL,
  `no_responsavel` VARCHAR(50) NOT NULL,
  `nu_tel_responsavel` VARCHAR(15) NOT NULL,
  `ds_descricao` TEXT NOT NULL,
  `co_pessoa` INT(11) NOT NULL,
  PRIMARY KEY (`co_inscricao`, `co_pessoa`),
  INDEX `fk_tb_membro_retiro_tb_retiro1_idx` (`co_evento` ASC),
  INDEX `fk_TB_INSCRICAO_TB_PESSOA1_idx` (`co_pessoa` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_INSCRICAO` (
  `CO_INSCRICAO` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DS_PASTORAL` TEXT NULL DEFAULT NULL,
  `DS_RETIRO` VARCHAR(1) NULL DEFAULT NULL,
  `DS_MEMBRO_ATIVO` VARCHAR(1) NULL DEFAULT 'N',
  `DS_SITUACAO_ATUAL_GRUPO` INT(1) NULL DEFAULT NULL,
  `CO_EVENTO` INT(10) UNSIGNED NOT NULL,
  `NU_CAMISA` INT(1) NOT NULL,
  `NO_RESPONSAVEL` VARCHAR(50) NOT NULL,
  `NU_TEL_RESPONSAVEL` VARCHAR(15) NOT NULL,
  `DS_DESCRICAO` TEXT NOT NULL,
  `CO_PESSOA` INT(11) NOT NULL,
  PRIMARY KEY (`CO_INSCRICAO`, `CO_PESSOA`),
  INDEX `FK_TB_MEMBRO_RETIRO_TB_RETIRO1_IDX` (`CO_EVENTO` ASC),
  INDEX `FK_TB_INSCRICAO_TB_PESSOA1_IDX` (`CO_PESSOA` ASC))
ENGINE = MYISAM
DEFAULT CHARACTER SET = LATIN1;
>>>>>>> .theirs
<<<<<<< .mineCREATE TABLE IF NOT EXISTS `gej_bd`.`TB_PERFIL` (
  `co_perfil` INT(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` VARCHAR(45) NOT NULL,
  `st_status` VARCHAR(1) NULL DEFAULT 'I',
  PRIMARY KEY (`co_perfil`),
  UNIQUE INDEX `co_perfil_UNIQUE` (`co_perfil` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_PERFIL` (
  `CO_PERFIL` INT(11) NOT NULL AUTO_INCREMENT,
  `NO_PERFIL` VARCHAR(45) NOT NULL,
  `ST_STATUS` VARCHAR(1) NULL DEFAULT 'I',
  PRIMARY KEY (`CO_PERFIL`),
  UNIQUE INDEX `CO_PERFIL_UNIQUE` (`CO_PERFIL` ASC))
ENGINE = INNODB
DEFAULT CHARACTER SET = LATIN1;
>>>>>>> .theirs
CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_USUARIO` (
  `CO_USUARIO` INT(10) NOT NULL AUTO_INCREMENT,
  `DS_SENHA` VARCHAR(100) NOT NULL,
  `DS_CODE` VARCHAR(50) NOT NULL,
  `ST_STATUS` VARCHAR(1) NOT NULL DEFAULT 'I' COMMENT '\'A - ATIVO / I - INATIVO\'',
  `DT_CADASTRO` DATETIME NOT NULL,
  `CO_IMAGEM` INT(10) NOT NULL,
  `CO_PESSOA` INT(11) NOT NULL,
  PRIMARY KEY (`CO_USUARIO`, `CO_IMAGEM`, `CO_PESSOA`),
  INDEX `FK_TB_USUARIO_TB_IMAGEM1_IDX` (`CO_IMAGEM` ASC),
  INDEX `FK_TB_USUARIO_TB_PESSOA2_IDX` (`CO_PESSOA` ASC),
  CONSTRAINT `FK_TB_USUARIO_TB_IMAGEM1`
    FOREIGN KEY (`CO_IMAGEM`)
    REFERENCES `GEJ_BD`.`TB_IMAGEM` (`CO_IMAGEM`),
  CONSTRAINT `FK_TB_USUARIO_TB_PESSOA2`
    FOREIGN KEY (`CO_PESSOA`)
    REFERENCES `GEJ_BD`.`TB_PESSOA` (`CO_PESSOA`))
ENGINE = INNODB
DEFAULT CHARACTER SET = UTF8;

CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_USUARIO_PERFIL` (
  `CO_USUARIO_PERFIL` INT(11) NOT NULL AUTO_INCREMENT,
  `CO_USUARIO` INT(10) NOT NULL,
  `CO_PERFIL` INT(11) NOT NULL,
  PRIMARY KEY (`CO_USUARIO_PERFIL`, `CO_USUARIO`, `CO_PERFIL`),
  INDEX `FK_TB_USUARIO_PERFIL_TB_USUARIO1_IDX` (`CO_USUARIO` ASC),
  INDEX `FK_TB_USUARIO_PERFIL_TB_PERFIL1_IDX` (`CO_PERFIL` ASC),
  CONSTRAINT `FK_TB_USUARIO_PERFIL_TB_USUARIO1`
    FOREIGN KEY (`CO_USUARIO`)
    REFERENCES `GEJ_BD`.`TB_USUARIO` (`CO_USUARIO`),
  CONSTRAINT `FK_TB_USUARIO_PERFIL_TB_PERFIL1`
    FOREIGN KEY (`CO_PERFIL`)
    REFERENCES `GEJ_BD`.`TB_PERFIL` (`CO_PERFIL`))
ENGINE = INNODB
DEFAULT CHARACTER SET = UTF8;

<<<<<<< .mineCREATE TABLE IF NOT EXISTS `gej_bd`.`TB_PERFIL_FUNCIONALIDADE` (
  `co_perfil_funcionalidade` INT(11) NOT NULL AUTO_INCREMENT,
  `co_perfil` INT(11) NOT NULL,
  `co_funcionalidade` INT(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`, `co_perfil`, `co_funcionalidade`),
  INDEX `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade` ASC),
  INDEX `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil` ASC),
  CONSTRAINT `fk_tb_perfil_tb_funcionalidade_tb_perfil1`
    FOREIGN KEY (`co_perfil`)
    REFERENCES `gej_bd`.`TB_PERFIL` (`co_perfil`),
  CONSTRAINT `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1`
    FOREIGN KEY (`co_funcionalidade`)
    REFERENCES `gej_bd`.`TB_FUNCIONALIDADE` (`co_funcionalidade`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_PERFIL_FUNCIONALIDADE` (
  `CO_PERFIL_FUNCIONALIDADE` INT(11) NOT NULL AUTO_INCREMENT,
  `CO_PERFIL` INT(11) NOT NULL,
  `CO_FUNCIONALIDADE` INT(11) NOT NULL,
  PRIMARY KEY (`CO_PERFIL_FUNCIONALIDADE`, `CO_PERFIL`, `CO_FUNCIONALIDADE`),
  INDEX `FK_TB_PERFIL_TB_FUNCIONALIDADE_TB_FUNCIONALIDADE1_IDX` (`CO_FUNCIONALIDADE` ASC),
  INDEX `FK_TB_PERFIL_TB_FUNCIONALIDADE_TB_PERFIL1_IDX` (`CO_PERFIL` ASC),
  CONSTRAINT `FK_TB_PERFIL_TB_FUNCIONALIDADE_TB_PERFIL1`
    FOREIGN KEY (`CO_PERFIL`)
    REFERENCES `GEJ_BD`.`TB_PERFIL` (`CO_PERFIL`),
  CONSTRAINT `FK_TB_PERFIL_TB_FUNCIONALIDADE_TB_FUNCIONALIDADE1`
    FOREIGN KEY (`CO_FUNCIONALIDADE`)
    REFERENCES `GEJ_BD`.`TB_FUNCIONALIDADE` (`CO_FUNCIONALIDADE`))
ENGINE = INNODB
DEFAULT CHARACTER SET = LATIN1;
>>>>>>> .theirs
<<<<<<< .mine=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_PESSOA` (
  `CO_PESSOA` INT(11) NOT NULL AUTO_INCREMENT,
  `NU_CPF` VARCHAR(15) NULL DEFAULT NULL,
  `NO_PESSOA` VARCHAR(100) NOT NULL,
  `NU_RG` VARCHAR(15) NULL DEFAULT NULL,
  `DT_CADASTRO` DATETIME NULL DEFAULT NULL,
  `DT_NASCIMENTO` DATE NULL DEFAULT NULL,
  `ST_SEXO` VARCHAR(1) NULL DEFAULT NULL,
  `CO_CONTATO` INT(11) NOT NULL,
  `CO_ENDERECO` INT(11) NOT NULL,
  PRIMARY KEY (`CO_PESSOA`, `CO_CONTATO`, `CO_ENDERECO`),
  INDEX `FK_TB_PESSOA_TB_CONTATO1_IDX` (`CO_CONTATO` ASC),
  INDEX `FK_TB_PESSOA_TB_ENDERECO1_IDX` (`CO_ENDERECO` ASC),
  CONSTRAINT `FK_TB_PESSOA_TB_CONTATO1`
    FOREIGN KEY (`CO_CONTATO`)
    REFERENCES `GEJ_BD`.`TB_CONTATO` (`CO_CONTATO`),
  CONSTRAINT `FK_TB_PESSOA_TB_ENDERECO1`
    FOREIGN KEY (`CO_ENDERECO`)
    REFERENCES `GEJ_BD`.`TB_ENDERECO` (`CO_ENDERECO`))
ENGINE = INNODB
DEFAULT CHARACTER SET = LATIN1;

CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_CONTATO` (
  `CO_CONTATO` INT(11) NOT NULL AUTO_INCREMENT,
  `NU_TEL1` VARCHAR(15) NOT NULL,
  `NU_TEL2` VARCHAR(15) NULL DEFAULT NULL,
  `NU_TEL3` VARCHAR(15) NULL DEFAULT NULL,
  `DS_EMAIL` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`CO_CONTATO`))
ENGINE = INNODB
DEFAULT CHARACTER SET = LATIN1;

CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_ENDERECO` (
  `CO_ENDERECO` INT(11) NOT NULL AUTO_INCREMENT,
  `DS_ENDERECO` VARCHAR(150) NOT NULL,
  `DS_COMPLEMENTO` VARCHAR(100) NULL DEFAULT NULL,
  `DS_BAIRRO` VARCHAR(80) NULL DEFAULT NULL,
  `NU_CEP` VARCHAR(15) NULL DEFAULT NULL,
  `NO_CIDADE` VARCHAR(80) NULL DEFAULT NULL,
  `SG_UF` VARCHAR(2) NULL DEFAULT NULL,
  PRIMARY KEY (`CO_ENDERECO`))
ENGINE = INNODB
DEFAULT CHARACTER SET = LATIN1;

>>>>>>> .theirs<<<<<<< .mineCREATE TABLE IF NOT EXISTS `gej_bd`.`TB_ACESSO` (
  `co_acesso` INT(11) NOT NULL AUTO_INCREMENT,
  `ds_session_id` VARCHAR(255) NOT NULL,
  `dt_inicio_acesso` DATETIME NULL DEFAULT NULL,
  `dt_fim_acesso` DATETIME NULL DEFAULT NULL,
  `co_usuario` INT(10) NOT NULL,
  PRIMARY KEY (`co_acesso`, `co_usuario`),
  INDEX `fk_TB_ACESSO_TB_USUARIO1_idx` (`co_usuario` ASC),
  CONSTRAINT `fk_TB_ACESSO_TB_USUARIO1`
    FOREIGN KEY (`co_usuario`)
    REFERENCES `gej_bd`.`TB_USUARIO` (`co_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_ACESSO` (
  `CO_ACESSO` INT(11) NOT NULL AUTO_INCREMENT,
  `DS_SESSION_ID` VARCHAR(255) NOT NULL,
  `DT_INICIO_ACESSO` DATETIME NULL DEFAULT NULL,
  `DT_FIM_ACESSO` DATETIME NULL DEFAULT NULL,
  `CO_USUARIO` INT(10) NOT NULL,
  PRIMARY KEY (`CO_ACESSO`, `CO_USUARIO`),
  INDEX `FK_TB_ACESSO_TB_USUARIO1_IDX` (`CO_USUARIO` ASC),
  CONSTRAINT `FK_TB_ACESSO_TB_USUARIO1`
    FOREIGN KEY (`CO_USUARIO`)
    REFERENCES `GEJ_BD`.`TB_USUARIO` (`CO_USUARIO`))
ENGINE = INNODB
DEFAULT CHARACTER SET = LATIN1;
>>>>>>> .theirs
<<<<<<< .mineCREATE TABLE IF NOT EXISTS `gej_bd`.`TB_TIPO_PAGAMENTO` (
  `co_tipo_pagamento` INT(11) NOT NULL AUTO_INCREMENT,
  `ds_tipo_pagamento` VARCHAR(45) NULL DEFAULT NULL,
  `sg_tipo_pagamento` VARCHAR(2) NULL DEFAULT NULL,
  PRIMARY KEY (`co_tipo_pagamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `gej_bd`.`TB_PAGAMENTO` (
  `co_pagamento` INT(11) NOT NULL AUTO_INCREMENT,
  `nu_total` DECIMAL(10,2) NULL DEFAULT NULL,
  `nu_valor_pago` DECIMAL(10,2)	NULL DEFAULT NULL,
  `nu_parcelas` INT(11) NULL DEFAULT NULL,
  `tp_situacao` VARCHAR(1) NULL DEFAULT 'N' COMMENT 'N - Não iniciado / I - Iniciado / C - Concluido',
  `ds_observacao` TEXT NULL DEFAULT NULL,
  `co_inscricao` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`co_pagamento`, `co_inscricao`),
  INDEX `fk_TB_PAGAMENTO_TB_INSCRICAO1_idx` (`co_inscricao` ASC),
  CONSTRAINT `fk_TB_PAGAMENTO_TB_INSCRICAO1`
    FOREIGN KEY (`co_inscricao`)
    REFERENCES `gej_bd`.`TB_INSCRICAO` (`co_inscricao`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_PAGAMENTO` (
  `CO_PAGAMENTO` INT(11) NOT NULL AUTO_INCREMENT,
  `NU_TOTAL` DECIMAL NULL DEFAULT NULL,
  `NU_VALOR_PAGO` DECIMAL NULL DEFAULT NULL,
  `NU_PARCELAS` INT(11) NULL DEFAULT NULL,
  `TP_SITUACAO` VARCHAR(1) NULL DEFAULT 'N' COMMENT 'N - NÃO INICIADO / I - INICIADO / C - CONCLUIDO',
  `DS_OBSERVACAO` TEXT NULL DEFAULT NULL,
  `CO_INSCRICAO` INT(10) UNSIGNED NOT NULL,
  `CO_TIPO_PAGAMENTO` INT(11) NOT NULL,
  PRIMARY KEY (`CO_PAGAMENTO`, `CO_INSCRICAO`),
  INDEX `FK_TB_PAGAMENTO_TB_INSCRICAO1_IDX` (`CO_INSCRICAO` ASC),
  CONSTRAINT `FK_TB_PAGAMENTO_TB_INSCRICAO1`
    FOREIGN KEY (`CO_INSCRICAO`)
    REFERENCES `GEJ_BD`.`TB_INSCRICAO` (`CO_INSCRICAO`))
ENGINE = MYISAM
DEFAULT CHARACTER SET = UTF8;
>>>>>>> .theirs
<<<<<<< .mineCREATE TABLE IF NOT EXISTS `gej_bd`.`TB_PARCELAMENTO` (
  `co_parcelamento` INT(11) NOT NULL AUTO_INCREMENT,
  `nu_parcela` INT(11) NULL DEFAULT NULL,
  `nu_valor_parcela` DECIMAL(10,2) NULL DEFAULT NULL,
  `nu_valor_parcela_pago` DECIMAL(10,2)	NULL DEFAULT NULL,
  `dt_vencimento` DATE NULL DEFAULT NULL,
  `dt_vencimento_pago` DATE NULL DEFAULT NULL,
  `ds_observacao` TEXT NULL DEFAULT NULL,
  `co_pagamento` INT(11) NOT NULL,
  `co_tipo_pagamento` INT(11) NOT NULL,
  PRIMARY KEY (`co_parcelamento`, `co_pagamento`,  `co_tipo_pagamento`),
  INDEX `fk_TB_PARCELAMENTO_TB_PAGAMENTO1_idx` (`co_pagamento` ASC),
  INDEX `fk_TB_PARCELAMENTO_TB_TIPO_PAGAMENTO1_idx` (`co_tipo_pagamento` ASC),
  CONSTRAINT `fk_TB_PARCELAMENTO_TB_PAGAMENTO1`
    FOREIGN KEY (`co_pagamento`)
    REFERENCES `gej_bd`.`TB_PAGAMENTO` (`co_pagamento`),
  CONSTRAINT `fk_TB_PARCELAMENTO_TB_TIPO_PAGAMENTO1`
    FOREIGN KEY (`co_tipo_pagamento`)
    REFERENCES `gej_bd`.`TB_TIPO_PAGAMENTO` (`co_tipo_pagamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
=======CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_PARCELAMENTO` (
  `CO_PARCELAMENTO` INT(11) NOT NULL AUTO_INCREMENT,
  `NU_PARCELA` INT(11) NULL DEFAULT NULL,
  `NU_VALOR_PARCELA` DECIMAL NULL DEFAULT NULL,
  `NU_VALOR_PARCELA_PAGO` DECIMAL NULL DEFAULT NULL,
  `DT_VENCIMENTO` DATE NULL DEFAULT NULL,
  `DT_VENCIMENTO_PAGO` DATE NULL DEFAULT NULL,
  `DS_OBSERVACAO` TEXT NULL DEFAULT NULL,
  `CO_PAGAMENTO` INT(11) NOT NULL,
  `CO_TIPO_PAGAMENTO` INT(11) NOT NULL,
  PRIMARY KEY (`CO_PARCELAMENTO`, `CO_PAGAMENTO`,  `CO_TIPO_PAGAMENTO`),
  INDEX `FK_TB_PARCELAMENTO_TB_PAGAMENTO1_IDX` (`CO_PAGAMENTO` ASC),
  INDEX `FK_TB_PARCELAMENTO_TB_TIPO_PAGAMENTO1_IDX` (`CO_TIPO_PAGAMENTO` ASC),
  CONSTRAINT `FK_TB_PARCELAMENTO_TB_PAGAMENTO1`
    FOREIGN KEY (`CO_PAGAMENTO`)
    REFERENCES `GEJ_BD`.`TB_PAGAMENTO` (`CO_PAGAMENTO`),
  CONSTRAINT `FK_TB_PARCELAMENTO_TB_TIPO_PAGAMENTO1`
    FOREIGN KEY (`CO_TIPO_PAGAMENTO`)
    REFERENCES `GEJ_BD`.`TB_TIPO_PAGAMENTO` (`CO_TIPO_PAGAMENTO`))
ENGINE = MYISAM
DEFAULT CHARACTER SET = LATIN1;

CREATE TABLE IF NOT EXISTS `GEJ_BD`.`TB_TIPO_PAGAMENTO` (
  `CO_TIPO_PAGAMENTO` INT(11) NOT NULL AUTO_INCREMENT,
  `DS_TIPO_PAGAMENTO` VARCHAR(45) NULL DEFAULT NULL,
  `SG_TIPO_PAGAMENTO` VARCHAR(2) NULL DEFAULT NULL,
  PRIMARY KEY (`CO_TIPO_PAGAMENTO`))
ENGINE = INNODB
DEFAULT CHARACTER SET = LATIN1;
>>>>>>> .theirs

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
