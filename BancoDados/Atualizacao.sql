UPDATE TB_ENDERECO SET co_endereco = "1", ds_endereco = "qr 403 conjunto 10 casa 28", ds_complemento = "", ds_bairro = "Samambaia Norte", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 1;

UPDATE TB_CONTATO SET co_contato = "1", nu_tel1 = "61993274991", nu_tel2 = "6130826060", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 1;

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leonardo-machado-carvalho-bessa-5e05322fb4507.jpg");

UPDATE TB_PESSOA SET co_pessoa = "1", nu_cpf = "72681438187", no_pessoa = "LEONARDO MACHADO CARVALHO BESSA", nu_rg = "2077811", dt_nascimento = "1984-07-06", st_sexo = "M", co_contato = "1", co_endereco = "1" where co_pessoa = 1;

INSERT INTO TB_INSCRICAO (ds_pastoral, ds_retiro, dt_cadastro, ds_membro_ativo, ds_situacao_atual_grupo, nu_camisa, no_responsavel, nu_tel_responsavel, st_status, ds_descricao, ds_alimentacao, ds_medicacao, ds_motivo, st_equipe_trabalho, co_pessoa, co_evento, co_imagem) VALUES ("Gej Dom bosco 5 anos", "S", "2019-12-26 20:20:31", "N", "", "", "JOSE ARNALDO", "61993003405", "A", "nada a falar", "quem", "não", "", "N", "1", "38", "409");

INSERT INTO TB_PAGAMENTO (nu_total, nu_parcelas, co_inscricao) VALUES ("160", "1", "437");

INSERT INTO TB_PARCELAMENTO (co_pagamento, co_tipo_pagamento, nu_parcela, nu_valor_parcela, dt_vencimento) VALUES ("445", "1", "1", "160", "2019-12-26");

UPDATE TB_ENDERECO SET co_endereco = "147", ds_endereco = "Condomínio Vila Paraíso Bl A Apt 103", ds_complemento = "", ds_bairro = "Vila Paraíso", nu_cep = "72879282", no_cidade = "Valparaíso Goiás ", sg_uf = "GO" where co_endereco = 147;

UPDATE TB_CONTATO SET co_contato = "150", nu_tel1 = "61993055454", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "Karlenerlima@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 150;

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("maria-karlene-ramos-lima-5e05397062245.jpg");

UPDATE TB_PESSOA SET co_pessoa = "147", nu_cpf = "01304694160", no_pessoa = "MARIA KARLENE RAMOS LIMA", nu_rg = "2410507", dt_nascimento = "1986-08-24", st_sexo = "F", co_contato = "150", co_endereco = "147" where co_pessoa = 147;

INSERT INTO TB_INSCRICAO (ds_pastoral, ds_retiro, dt_cadastro, ds_membro_ativo, ds_situacao_atual_grupo, nu_camisa, no_responsavel, nu_tel_responsavel, st_status, ds_descricao, ds_alimentacao, ds_medicacao, ds_motivo, st_equipe_trabalho, co_pessoa, co_evento, co_imagem) VALUES ("", "N", "2019-12-26 20:51:28", "N", "", "3", "JOSE ARNALDO", "61993003405", "A", "", "", "", "", "N", "147", "38", "410");

INSERT INTO TB_PAGAMENTO (nu_total, nu_parcelas, co_inscricao) VALUES ("160", "1", "438");

INSERT INTO TB_PARCELAMENTO (co_pagamento, co_tipo_pagamento, nu_parcela, nu_valor_parcela, dt_vencimento) VALUES ("446", "1", "1", "160", "2019-12-26");

UPDATE TB_ENDERECO SET co_endereco = "37", ds_endereco = "QR 403 conj 10 casa 28", ds_complemento = "", ds_bairro = "Samambaia Norte", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 37;

UPDATE TB_CONTATO SET co_contato = "37", nu_tel1 = "61991058681", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "lele.403@hotmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 37;

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("leticia-machado-carvalho-bessa-5e05518fae6ba.jpg");

UPDATE TB_PESSOA SET co_pessoa = "37", nu_cpf = "03904086111", no_pessoa = "LETíCIA MACHADO CARVALHO BESSA", nu_rg = "2807680", dt_nascimento = "1992-08-27", st_sexo = "F", co_contato = "37", co_endereco = "37" where co_pessoa = 37;

INSERT INTO TB_INSCRICAO (ds_pastoral, ds_retiro, dt_cadastro, ds_membro_ativo, ds_situacao_atual_grupo, nu_camisa, no_responsavel, nu_tel_responsavel, st_status, ds_descricao, ds_alimentacao, ds_medicacao, ds_motivo, st_equipe_trabalho, co_pessoa, co_evento, co_imagem) VALUES ("", "N", "2019-12-26 22:34:24", "N", "", "3", "JOSE ARNALDO", "61999999999", "A", "", "", "", "", "N", "37", "38", "411");

