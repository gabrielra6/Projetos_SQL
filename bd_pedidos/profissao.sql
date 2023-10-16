create table profissao(
	
	idprofissao integer not null,
	nome varchar(30),
	
	constraint pk_prof_idprofissao primary key (idprofissao),
	constraint un_prof_nome unique (nome)
);

select * from profissao

insert into profissao (idprofissao, nome)
values
	(1, 'Estudante'),
	(2,	'Engenheiro'),
	(3, 'Pedreiro'),
	(4, 'Jornalista'),
	(5, 'Professor');
	
select * from profissao
