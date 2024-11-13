create table t_regiao (
   id_regiao int primary key,
   nm_regiao varchar2(50) not null
);

create table t_uf (
   id_uf     int primary key,
   sg_uf     char(2) not null,
   nm_uf     varchar2(50) not null,
   id_regiao int,
   constraint fk_t_uf_t_regiao foreign key ( id_regiao )
      references t_regiao ( id_regiao )
);

create table t_safra (
   id_safra      int primary key,
   dt_ano_inicio int not null,
   dt_ano_fim    int not null,
   constraint chk_t_safra_ano check ( dt_ano_inicio < dt_ano_fim )
);

create table t_producao (
   id_producao  int primary key,
   id_uf        int,
   id_safra     int,
   qt_produzida decimal(10,2) not null,
   constraint fk_producao_uf foreign key ( id_uf )
      references t_uf ( id_uf ),
   constraint fk_producao_safra foreign key ( id_safra )
      references t_safra ( id_safra )
);

select t_uf.sg_uf,
       t_safra.dt_ano_inicio,
       t_safra.dt_ano_fim,
       sum(t_producao.qt_produzida) as producao_total
  from t_producao
 inner join t_uf
on t_producao.id_uf = t_uf.id_uf
 inner join t_safra
on t_producao.id_safra = t_safra.id_safra
 where t_uf.sg_uf = 'MS'
   and t_safra.dt_ano_inicio = to_date('2022','YYYY')
   and t_safra.dt_ano_fim = to_date('2023','YYYY')
 group by t_uf.sg_uf,
          t_safra.dt_ano_inicio,
          t_safra.dt_ano_fim;

select to_char(
   t_safra.dt_ano_inicio,
   'YYYY'
) as ano,
       sum(t_producao.qt_produzida) as area_produzida
  from t_producao
 inner join t_safra
on t_producao.id_safra = t_safra.id_safra
 where t_safra.dt_ano_inicio >= to_date('1980','YYYY')
   and t_safra.dt_ano_inicio <= to_date('2020','YYYY')
 group by to_char(
   t_safra.dt_ano_inicio,
   'YYYY'
)
 order by to_char(
   t_safra.dt_ano_inicio,
   'YYYY'
);

select t_uf.nm_uf as estado,
       sum(t_producao.qt_produzida) as producao_total
  from t_producao
 inner join t_uf
on t_producao.id_uf = t_uf.id_uf
 group by t_uf.nm_uf
 order by producao_total desc;