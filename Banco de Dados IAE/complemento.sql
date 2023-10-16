create table complemento(
	
	idcomplemento integer not null,
	nome varchar (30),
	
	constraint pk_cmpl_idcomplemento primary key (idcomplemento),
	constraint un_cmpl_nome unique (nome)
);

select * from complemento

insert into complemento (idcomplemento, nome)
values
	(1, 'Casa'),
	(2, 'Apartamento');