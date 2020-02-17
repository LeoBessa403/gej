select no_pessoa, nu_tel1, nu_tel2, nu_tel_responsavel from tb_inscricao i
inner join tb_pessoa tp on i.co_pessoa = tp.co_pessoa
inner join tb_contato tc on tp.co_contato = tc.co_contato
inner join tb_pagamento t on i.co_inscricao = t.co_inscricao
where co_evento = 38
and t.tp_situacao in ('C', 'P')
and i.ds_membro_ativo = 'N'
order by no_pessoa asc
