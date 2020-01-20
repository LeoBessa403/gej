INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("55", "4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("55", "2");

UPDATE TB_ENDERECO SET co_endereco = "239", ds_endereco = "Qs 403 , conj. 10 casa 27", ds_complemento = "", ds_bairro = "Samambaia norte", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 239;

UPDATE TB_CONTATO SET co_contato = "6", nu_tel1 = "61991639445", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "henriquecarvalhohca@outlook.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 6;

UPDATE TB_PESSOA SET co_pessoa = "6", nu_cpf = "05418337157", no_pessoa = "HENRIQUE CARVALHO ASSUNçãO", nu_rg = "", dt_nascimento = "1996-02-12", st_sexo = "M", co_contato = "6", co_endereco = "239", co_imagem = "446" where co_pessoa = 6;

UPDATE TB_INSCRICAO SET co_inscricao = "473", ds_pastoral = "51 fg wg", ds_retiro = "S", ds_membro_ativo = "S", ds_situacao_atual_grupo = "", nu_camisa = "8", no_responsavel = "JOSE ARNALDO", nu_tel_responsavel = "61999999999", st_status = "A", ds_descricao = "g wg", ds_alimentacao = "ewg ew g", ds_medicacao = "wge g", ds_motivo = "", st_equipe_trabalho = "N", co_pessoa = "6", co_imagem = "446", co_evento = "38" where co_inscricao = 473;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (55);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("55", "4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("55", "2");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("56", "4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("56", "2");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("57", "4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("57", "2");

UPDATE TB_ENDERECO SET co_endereco = "403", ds_endereco = "QNP 14 Conjunto J CASA 19", ds_complemento = "A", ds_bairro = "Ceilândia Sul (Ceilândia)", nu_cep = "72231410", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 403;

UPDATE TB_CONTATO SET co_contato = "361", nu_tel1 = "61984503577", nu_tel2 = "6133783064", nu_tel3 = "", nu_tel_0800 = "", ds_email = "anagrazielle18@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 361;

UPDATE TB_PESSOA SET co_pessoa = "358", nu_cpf = "05964373151", no_pessoa = "ANA GRAZIELLE DE OLIVEIRA GOMES", nu_rg = "2874919", dt_nascimento = "1997-07-25", st_sexo = "F", co_contato = "361", co_endereco = "403", co_imagem = "437" where co_pessoa = 358;

UPDATE TB_INSCRICAO SET co_inscricao = "464", ds_pastoral = "Catequese", ds_retiro = "N", ds_membro_ativo = "N", ds_situacao_atual_grupo = "", nu_camisa = "7", no_responsavel = "JOAQUINA", nu_tel_responsavel = "61985926274", st_status = "A", ds_descricao = "", ds_alimentacao = "", ds_medicacao = "", ds_motivo = "", st_equipe_trabalho = "N", co_pessoa = "358", co_imagem = "437", co_evento = "38" where co_inscricao = 464;

INSERT INTO TB_PARCELAMENTO (nu_parcela, nu_valor_parcela, dt_vencimento, co_tipo_pagamento, co_pagamento) VALUES ("2", "150", "2020-01-20", "1", "479");

UPDATE TB_PAGAMENTO SET nu_valor_desconto = "10.00", ds_observacao = "nngnf", nu_parcelas = "2" where co_pagamento = 479;

UPDATE TB_PARCELAMENTO SET co_usuario = "5", nu_valor_parcela_pago = "130.00", dt_vencimento_pago = "2020-01-30", co_tipo_pagamento = "2", ds_observacao = "cvhfdh" where co_parcelamento = 1707;

UPDATE TB_ADMINISTRATIVO SET nu_fundo_caixa = "290" where co_administrativo = 1;

UPDATE TB_PAGAMENTO SET nu_valor_pago = "130", tp_situacao = "I" where co_pagamento = 479;

INSERT INTO TB_PARCELAMENTO (nu_parcela, nu_valor_parcela, dt_vencimento, co_tipo_pagamento, co_pagamento) VALUES ("3", "20", "2020-01-20", "1", "479");

UPDATE TB_PAGAMENTO SET nu_valor_desconto = "10.00", ds_observacao = "nngnf", nu_parcelas = "3" where co_pagamento = 479;

