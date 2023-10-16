create table uf(
	
	iduf integer not null,
	nome varchar (30) not null,
	sigla char(2) not null,
	
	constraint pk_uf_iduf primary key (iduf),
	constraint us_uf_nome unique (nome),
	constraint us_uf_sigla unique (sigla)
);

select * from uf

insert into uf (iduf, nome, sigla)
values
	(1, 'São Paulo', 'SP'),
	(2, 'Rio Grande do Sul', 'RS'),
	(3, 'Paraná', 'PR'),
	(4, 'Santa Catarina', 'SC')

insert into uf (iduf, nome, sigla)
values
	(5, 'Minas Gerais', 'MG'),
	(6, 'Rio de Janeiro', 'RJ');
