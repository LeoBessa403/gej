INSERT INTO TB_PROJETO (no_projeto, dt_cadastro) VALUES ("Web Gej", "2019-03-27 10:50:32");

INSERT INTO TB_MODULO (no_modulo, co_projeto, dt_cadastro) VALUES ("Sistema", "1", "2019-03-27 11:15:00");

INSERT INTO TB_SESSAO (no_sessao, co_modulo, dt_cadastro) VALUES ("Sistema", "1", "2019-03-27 11:15:50");

INSERT INTO TB_SESSAO (no_sessao, co_modulo, dt_cadastro) VALUES ("Site", "1", "2019-03-27 11:16:02");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Manter Camisa", "<p>Manter camisa</p>", "1", "I", "2019-03-27 11:16:40", "2019-03-27 11:16:40");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-03-27 11:16:40", "1");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Manter Pedido camisa", "<p>Manter Pedido camisa</p>", "1", "I", "2019-03-27 11:17:04", "2019-03-27 11:17:04");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-03-27 11:17:04", "2");

