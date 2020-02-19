select no_pessoa, nu_tel1, nu_tel2, nu_tel_responsavel, i.st_status
from TB_INSCRICAO i
         inner join TB_PESSOA tp on i.co_pessoa = tp.co_pessoa
         inner join TB_CONTATO tc on tp.co_contato = tc.co_contato
         inner join TB_PAGAMENTO t on i.co_inscricao = t.co_inscricao
where co_evento = 38
 and t.tp_situacao in ('C', 'P')
  and i.ds_membro_ativo = 'N'
order by no_pessoa;


# PESQUISA INSCRIÇÕES
select i.co_inscricao, no_pessoa, i.st_status
from TB_INSCRICAO i
         inner join TB_PESSOA tp on i.co_pessoa = tp.co_pessoa
where co_evento = 38
  and i.co_inscricao in (523, 502, 493, 479, 472, 444)
order by no_pessoa;

# DESATIVA A INSCRIÇÃO
update TB_INSCRICAO
set st_status = 'D'
where co_inscricao in (523, 502, 493, 479, 472, 444);


# PESQUISA PESSOAS COM DESCONTO
select no_pessoa, t.tp_situacao AS situacao_pagamento, t.nu_valor_desconto
from TB_INSCRICAO i
         inner join TB_PESSOA tp on i.co_pessoa = tp.co_pessoa
         inner join TB_CONTATO tc on tp.co_contato = tc.co_contato
         inner join TB_PAGAMENTO t on i.co_inscricao = t.co_inscricao
where co_evento = 38
# and t.tp_situacao in ('C', 'P')
#  and i.ds_membro_ativo = 'N'
  and i.st_status = 'A'
  and t.nu_valor_desconto > 0
order by no_pessoa;

# INSCRIÇÕES POR CIDADE
select no_pessoa, te.no_cidade
from tb_inscricao i
         inner join tb_pessoa tp on i.co_pessoa = tp.co_pessoa
         inner join tb_endereco te on tp.co_endereco = te.co_endereco
where co_evento = 38
  and te.no_cidade like '%ormosa%'
order by no_pessoa;


