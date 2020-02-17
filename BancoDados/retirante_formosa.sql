select no_pessoa, te.no_cidade from tb_inscricao i
inner join tb_pessoa tp on i.co_pessoa = tp.co_pessoa
inner join tb_endereco te on tp.co_endereco = te.co_endereco
where co_evento = 38
and te.no_cidade like '%ormosa%'
order by no_pessoa;
