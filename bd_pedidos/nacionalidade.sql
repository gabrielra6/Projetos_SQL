create table nacionalidade(

	idnacionalidade integer not null,
	nome varchar (20),
	
	constraint pk_nac_idnacionalidade primary key (idnacionalidade),
	constraint un_nac_nome unique (nome)
);

select * from nacionalidade

insert into nacionalidade (idnacionalidade, nome)
values
	(1, 'Brasileira'),
	(2, 'Italiana'),
	(3, 'Norte-Americana'),
	(4, 'Alemã');
	
select * from nacionalidade
