INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("alegria-que-vem-de-deus-5cab801d455b7.jpg");

INSERT INTO TB_CAMISA (no_camisa, nu_valor_custo, nu_valor_venda, tp_pedido, co_imagem) VALUES ("Alegria que vem de Deus", "16.00", "22.00", "N", "409");

INSERT INTO TB_CAMISA_COR_CAMISA (co_camisa, co_cor_camisa) VALUES ("1", "16");

INSERT INTO TB_CAMISA_COR_CAMISA (co_camisa, co_cor_camisa) VALUES ("1", "9");

INSERT INTO TB_CAMISA_COR_CAMISA (co_camisa, co_cor_camisa) VALUES ("1", "6");

UPDATE TB_CAMISA SET no_camisa = "Alegria que vem de Deus", nu_valor_custo = "16.00", nu_valor_venda = "22.00", tp_pedido = "N" where co_camisa = 1;

DELETE FROM TB_CAMISA_COR_CAMISA where co_camisa in (1);

INSERT INTO TB_CAMISA_COR_CAMISA (co_camisa, co_cor_camisa) VALUES ("1", "16");

INSERT INTO TB_CAMISA_COR_CAMISA (co_camisa, co_cor_camisa) VALUES ("1", "9");

INSERT INTO TB_CAMISA_COR_CAMISA (co_camisa, co_cor_camisa) VALUES ("1", "6");

