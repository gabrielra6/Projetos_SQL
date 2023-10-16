create table bairro (
	
	idbairro integer not null,
	nome varchar (30),
	
	constraint pk_bairro_idbairro primary key (idbairro),
	constraint un_bairro_nome unique (nome) 
)

insert into bairro (idbairro, nome)
values
	(1, 'Cidade Nova'),
	(2, 'Centro'),
	(3, 'São Pedro'),
	(4, 'Santa Rosa');
	
select * from bairro