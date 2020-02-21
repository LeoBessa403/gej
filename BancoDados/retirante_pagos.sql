select no_pessoa, nu_tel1, nu_tel2, nu_tel_responsavel, i.st_status
from TB_INSCRICAO i
         inner join TB_PESSOA tp on i.co_pessoa = tp.co_pessoa
         inner join TB_CONTATO tc on tp.co_contato = tc.co_contato
         inner join TB_PAGAMENTO t on i.co_inscricao = t.co_inscricao
where co_evento = 38
  and t.tp_situacao in ('C', 'P')
  and i.ds_membro_ativo = 'N'
order by no_pessoa;


select no_pessoa, tc.nu_tel1, tc.nu_tel2, nu_tel_responsavel, t.*, parc.*
from TB_INSCRICAO i
         inner join TB_PESSOA tp on i.co_pessoa = tp.co_pessoa
         inner join TB_ENDERECO te on tp.co_endereco = te.co_endereco
         inner join TB_CONTATO tc on tp.co_contato = tc.co_contato
         inner join TB_PAGAMENTO t on i.co_inscricao = t.co_inscricao
         INNER join TB_PARCELAMENTO parc on parc.co_pagamento = t.co_pagamento
where co_evento = 38
# and te.no_cidade like '%ormosa%' # and i.co_inscricao in (482) # and t.tp_situacao in ('N')
  and i.ds_membro_ativo = 'N'
  and t.tp_situacao in ('C', 'P')
  and i.st_status = 'A'
order by no_pessoa;


# PESQUISA INSCRIÇÕES
select i.co_inscricao, no_pessoa, i.st_status
from TB_INSCRICAO i
         inner join TB_PESSOA tp on i.co_pessoa = tp.co_pessoa
where co_evento = 38
#   and i.co_inscricao in (523, 502, 493, 479, 472, 444)
order by no_pessoa;

# DESATIVA A INSCRIÇÃO
update TB_INSCRICAO
set st_status = 'D'
where co_inscricao in (483, 449, 471, 520, 465, 548, 496, 514, 544);


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

https://api.whatsapp.com/send?phone=5561993126972&l=pt_BR&text=Ola%20Bom%20dia%20sou%20mebro%20do%20GEJ!

# INSCRIÇÕES POR CIDADE
select no_pessoa, te.no_cidade
from TB_INSCRICAO i
         inner join TB_PESSOA tp on i.co_pessoa = tp.co_pessoa
         inner join TB_ENDERECO te on tp.co_endereco = te.co_endereco
where co_evento = 38
  and te.no_cidade like '%ormosa%'
order by no_pessoa;

update TB_PARCELAMENTO
set nu_valor_parcela = '160.00',
    co_usuario       = 5,
    where co_parcelamento in (1774);


update TB_PAGAMENTO
set nu_valor_desconto = null
where co_pagamento in (438);

select tparc.*
from TB_INSCRICAO ti
         inner join TB_PAGAMENTO tp on ti.co_inscricao = tp.co_inscricao
         inner join TB_PARCELAMENTO tparc on tp.co_pagamento = tparc.co_pagamento
where ti.co_inscricao in (438);


