select c.nome_candidato, total.total_despesa, d.*
from candidato c
inner join despesa d on (c.sequencial_candidato = d.sequencial_candidato)
inner join 
(
	select d.sequencial_candidato, sum(valor_despesa) as total_despesa
	from despesa d
	inner join (
		-- servidores candidatos
		select c.sequencial_candidato
		from candidato c
		inner join servidor s on (c.cpf_candidato_parcial = s.cpf_parcial and c.nome_candidato = s.nome)
	) as sc on (d.sequencial_candidato = sc.sequencial_candidato)
	group by d.sequencial_candidato
	having sum(valor_despesa) <= 2000
	order by sum(valor_despesa) asc
) as total on (c.sequencial_candidato = total.sequencial_candidato)
order by total.total_despesa asc