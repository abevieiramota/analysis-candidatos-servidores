select cc.nome_candidato, cc.despesa_max_campanha, total.total_despesa, s.org_lotacao, s.descricao_cargo, s.funcao, s.regime_juridico, cc.descricao_cargo, cc.descricao_ocupacao, cc.desc_sit_tot_turno
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
order by total.total_despesa desc;