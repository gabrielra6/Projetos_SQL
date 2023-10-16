create table municipio (
	
	idmunicipio integer not null,
	nome varchar (40) not null,
	iduf integer not null,
	
	constraint pk_munic_idmunicipio primary key (idmunicipio),
	constraint fk_munic_iduf foreign key (iduf) references uf (iduf),
	constraint un_minc_nome unique (nome)
)

select * from municipio

insert into municipio (idmunicipio, nome, iduf)
values
	(1, 'Porto Vitória', 3),
	(2, 'Porto Alegre', 2),
	(3, 'Porto União', 4),
	(4, 'União da Vitória', 3),
	(5, 'Curitiba', 3),
	(6, 'General Carneiro', 3),
	(7, 'Rio de Janeiro', 6),
	(8, 'Canoinhas', 4),
	(9, 'São Paulo', 1)
	

