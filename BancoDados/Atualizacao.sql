INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("55", "4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("55", "2");

UPDATE TB_ENDERECO SET co_endereco = "239", ds_endereco = "Qs 403 , conj. 10 casa 27", ds_complemento = "", ds_bairro = "Samambaia norte", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 239;

UPDATE TB_CONTATO SET co_contato = "6", nu_tel1 = "61991639445", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "henriquecarvalhohca@outlook.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 6;

UPDATE TB_PESSOA SET co_pessoa = "6", nu_cpf = "05418337157", no_pessoa = "HENRIQUE CARVALHO ASSUNçãO", nu_rg = "", dt_nascimento = "1996-02-12", st_sexo = "M", co_contato = "6", co_endereco = "239", co_imagem = "446" where co_pessoa = 6;

UPDATE TB_INSCRICAO SET co_inscricao = "473", ds_pastoral = "51 fg wg", ds_retiro = "S", ds_membro_ativo = "S", ds_situacao_atual_grupo = "", nu_camisa = "8", no_responsavel = "JOSE ARNALDO", nu_tel_responsavel = "61999999999", st_status = "A", ds_descricao = "g wg", ds_alimentacao = "ewg ew g", ds_medicacao = "wge g", ds_motivo = "", st_equipe_trabalho = "N", co_pessoa = "6", co_imagem = "446", co_evento = "38" where co_inscricao = 473;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (55);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("55", "4");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("55", "2");

