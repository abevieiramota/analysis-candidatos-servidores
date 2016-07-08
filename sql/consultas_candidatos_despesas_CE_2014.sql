select 
cc.nome_candidato as nome, 
total.total_despesa, 
cc.descricao_cargo as candidato_cargo, 
s.descricao_cargo as servidor_cargo, 
s.org_lotacao as servidor_lotacao, 
s.funcao as servidor_funcao, 
cc.descricao_ocupacao as candidato_ocupacao, 
cc.desc_sit_tot_turno as candidato_situacao_turno_1
from candidato cc
inner join 
(
	select c.sequencial_candidato, sum(valor_despesa) as total_despesa
	from candidato c
	inner join despesa d using (sequencial_candidato)
	where num_turno = 1
	group by c.sequencial_candidato
) as total using (sequencial_candidato)
inner join servidor s on (s.nome = cc.nome_candidato and s.cpf_parcial = cc.cpf_candidato_parcial)
where num_turno = 1
order by total.total_despesa asc;

select *
from despesa
where sequencial_candidato in
(
	select 
	cc.sequencial_candidato
	from candidato cc
	inner join servidor s on (s.nome = cc.nome_candidato and s.cpf_parcial = cc.cpf_candidato_parcial)
)
order by nome_candidato asc