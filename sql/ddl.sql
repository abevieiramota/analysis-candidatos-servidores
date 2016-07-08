CREATE TABLE candidato
(
  ano_eleicao smallint,
  num_turno smallint,
  sigla_uf character varying(2),
  sigla_ue character varying(10),
  descricao_ue character varying(30),
  codigo_cargo smallint,
  descricao_cargo character varying(50),
  nome_candidato character varying(120),
  sequencial_candidato bigint,
  numero_candidato integer,
  cpf_candidato character varying(20),
  nome_urna_candidato character varying(120),
  cod_situacao_candidatura smallint,
  des_situacao_candidatura character varying(50),
  numero_partido smallint,
  sigla_partido character varying(10),
  nome_partido character varying(80),
  codigo_legenda bigint,
  sigla_legenda character varying(30),
  composicao_legenda character varying(150),
  nome_legenda character varying(100),
  codigo_ocupacao smallint,
  descricao_ocupacao character varying(120),
  data_nascimento date,
  num_titulo_eleitoral_candidato bigint,
  idade_data_eleicao smallint,
  codigo_sexo smallint,
  descricao_sexo character varying(10),
  cod_grau_instrucao smallint,
  descricao_grau_instrucao character varying(40),
  codigo_estado_civil smallint,
  descricao_estado_civil character varying(50),
  --codigo_cor_raca smallint,
  --descricao_cor_raca character varying(15),
  codigo_nacionalidade smallint,
  descricao_nacionalidade character varying(50),
  sigla_uf_nascimento character varying(2),
  codigo_municipio_nascimento smallint,
  nome_municipio_nascimento character varying(50),
  despesa_max_campanha bigint,
  cod_sit_tot_turno smallint,
  desc_sit_tot_turno character varying(20),
  nm_email character varying(150),
  cpf_candidato_parcial character varying(10)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE candidato
  OWNER TO djangular3;

CREATE TABLE despesa
(
  sequencial_candidato bigint,
  cargo character varying(50),
  nome_candidato character varying(100),
  cpf_do_candidato bigint,
  tipo_do_documento character varying(50),
  "número_do_documento" character varying(50),
  "CPF/CNPJ_do_fornecedor" character varying(20),
  nome_do_fornecedor character varying(200),
  "Nome_do_fornecedor_(Receita_Federal)" character varying(200),
  "cod_setor_econômico_do_fornecedor" character varying(10),
  "setor_econômico_do_fornecedor" character varying(300),
  data_da_despesa character varying(20),
  valor_despesa bigint,
  tipo_despesa character varying(200),
  "descriçao_da_despesa" character varying(300)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE despesa
  OWNER TO djangular3;

CREATE TABLE servidor
(
  id_servidor bigint,
  nome character varying(60),
  cpf character varying(14),
  descricao_cargo character varying(40),
  classe_cargo character varying(1),
  org_lotacao character varying(40),
  regime_juridico character varying(35),
  jornada_de_trabalho character varying(19),
  data_ingresso_orgao timestamp without time zone,
  cpf_parcial character varying(10),
  sigla_funcao character varying(3),
  nivel_funcao character varying(4),
  funcao character varying(39)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE servidor
  OWNER TO djangular3;
