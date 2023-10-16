CREATE TABLE cliente (
	idcliente integer not null,
	nome varchar (50) not null,
	cpf char (11),
	rg varchar (15),
	data_nascimento date,
	genero char (1),
	profissao varchar (30),
	nacionalidade varchar (30),
	logradouro varchar (30),
	numero varchar (10),
	complemento varchar (30),
	bairro varchar (30),
	municipio varchar (30),
	uf varchar (30),
	observacoes text,
	
	-- primary key
	constraint pk_cli_idcliente primary key (idcliente)
)

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero,	profissao,	nacionalidade, logradouro,	numero,	complemento, bairro, municipio, uf)
values(	1,	'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileira',	'Rua Joaquim Nabuco', '23',	'Casa',	'Cidade Nova', 'Porto União', 'SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero,	profissao,	nacionalidade, logradouro,	numero,	complemento, bairro, municipio, uf)
values(	2,	'Geraldo', '12343299929', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileira',	'Rua das Limas', '200',	'Ap', 'Centro', 'Poro União', 'SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero,	profissao,	nacionalidade, logradouro,	numero,	complemento, bairro, municipio, uf)
values(	3,	'Carlos', '87732323227', '55463', '1967-10-01', 'M', 'Pedreiro', 'Brasileira',	'Rua das Laranjeiras', '300',	'Apart.', 'Cto', 'Canoinhas', 'SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero,	profissao,	nacionalidade, logradouro,	numero,	complemento, bairro, municipio, uf)
values
	(4,	'Adriana', '12321222122', '98777', '1989-09-01', 'F', 'Jornalista', 'Brasileira',	'Rua das Limas', '240',	'Casa', 'São Pedro', 'Poro Vitória', 'PR'),
	(5,	'Amanda', '99982838828', '28382', '1991-03-04', 'F', 'Jorn.', 'Italiana',	'Av. Central', '100',	null, 'São Pedro', 'General Carneiro', 'PR'),
	(6,	'Angelo', '99982828181', '12323', '2000-01-01', 'M', 'Professor', 'Brasileira',	'Av. Beira Mar', '300',	null, 'Centro', 'São Paulo', 'SP'),
	(7,'Anderson',null,null,null,'M','Prof.','Italiano', 'Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP'),
	(9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS'),
	(10, 'Fabricio','8828282828','32323',null,'M','Estudante','Brasileiro',null,null,null,null, 'PU','SC'),
	(11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto União','SC'),
	(12,'Gilmar','88881818181','888','2000-02-10','M','Estud.',null,'Rua das Laranjeiras','200',null,'C. Nova','Canoinhas','SC'),
	(13,'Diego','1010191919','111939',null,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP'),
	(14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileiro',null,null, null,null,'União da Vitória','PR'),
	(15,'Jessica',null,null,null,'F','Estudante', null, null, null, null, null, 'União da Vitória','PR');

-- Consultas Simples

-- 1. O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente

SELECT nome, genero, profissao FROM  cliente
ORDER BY nome DESC;

-- 2. Os clientes que tenham a letra “R” no nome

SELECT * FROM cliente
WHERE nome LIKE '%r%';

-- 3. Os clientes que o nome inicia com a letra “C”

SELECT * FROM cliente
WHERE nome LIKE 'C%';

-- 4. Os clientes que o nome termina com a letra “A”

SELECT * FROM cliente
WHERE nome LIKE '%a';

-- 5. Os clientes que moram no bairro “Centro”

SELECT * FROM cliente
WHERE bairro = 'Centro';

-- 6. Os clientes que moram em complementos que iniciam com a letra “A”

SELECT nome, complemento FROM cliente
WHERE complemento LIKE 'A%';

-- 7. Somente os clientes do sexo feminino

SELECT * FROM cliente
WHERE genero = 'F';

-- 8. Os clientes que não informaram o CPF

SELECT * FROM cliente
WHERE cpf is null;

-- 9. O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão

SELECT nome, profissao FROM cliente
ORDER BY profissao ASC;


-- 10. Os clientes de nacionalidade “Brasileira”

SELECT nome, nacionalidade FROM cliente
WHERE nacionalidade like 'Brasileir%';

-- 11. Os clientes que informaram o número da residência

SELECT nome, numero FROM cliente
WHERE numero IS NOT null;

-- 12. Os clientes que moram em Santa Catarina

SELECT * FROM cliente
WHERE uf = 'SC';

-- 13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002

SELECT * FROM cliente
WHERE data_nascimento BETWEEN '2000-01-01' AND '2002-01-01'; 

-- 14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes

SELECT nome, logradouro ||', '|| numero ||', '|| complemento ||', '|| bairro ||', '|| municipio ||' - '|| uf AS "Endereço" FROM cliente

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES
	(16, 'Maicon', '12349596421', '1234', '1965-10-10', 'F', 'Empresário', null, null, null, null, null, 'Florianópolis', 'PR'),
	(17, 'Getúlio', null, '4631', null, 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC'),
	(18, 'Sandra', null, null, null, 'M', 'Professor', 'Italiana', null, '12', 'Bloco A', null, null, null);


-- 1. Altere os dados do cliente Maicon
--	 a. O CPF para 45390569432

UPDATE cliente
SET cpf = '45390569432'
WHERE idcliente = 16;

-- 	b. O gênero para M

UPDATE cliente
SET genero = 'M'
WHERE idcliente = 16;

-- 	c. A nacionalidade para Brasileira

UPDATE cliente
SET nacionalidade = 'Brasileira'
WHERE idcliente = 16;

-- 	d. O UF para SC

UPDATE cliente
SET uf = 'SC'
WHERE idcliente = 16;

-- 3. Altere os dados do cliente Getúlio
-- a. A data de nascimento para 01/04/1978

UPDATE cliente
SET data_nascimento = '1978-04-01'
WHERE idcliente = 17;

-- b. O gênero para M

UPDATE cliente
SET genero = 'M'
WHERE idcliente = 17;

-- 4. Altere os dados da cliente Sandra
-- a. O gênero para F

UPDATE cliente
SET genero = 'F'
WHERE idcliente = 18;

-- b. A profissão para Professora

UPDATE cliente
SET profissao = 'Professora'
WHERE idcliente = 18;

-- c. O número para 123

UPDATE cliente
SET numero = '123'
WHERE idcliente = 18;

-- 5. Apague o cliente Maicon

DELETE FROM cliente
WHERE idcliente = 16;

-- 6. Apague a cliente Sandra

DELETE FROM cliente
WHERE idcliente = 18;

SELECT * FROM cliente

--

alter table cliente
add idprofissao integer,
add constraint fk_cli_idprofissao foreign key (idprofissao) references profissao (idprofissao);

update cliente
set idprofissao =
	case
		when idcliente in (1, 9, 10, 12, 15, 17) then 1
		when idcliente = 2 then 2
		when idcliente = 3 then 3
		when idcliente in (4, 5) then 4
		when idcliente in (6, 7, 8, 13) then 5
	end;

alter table cliente
drop column profissao;

alter table cliente
add idnacionalidade integer,
add constraint fk_cli_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade);

select * from cliente;

update cliente
set idnacionalidade = 
	case 
		when idcliente in (1, 2, 3, 4, 6, 10, 11, 14, 16) then 1
		when idcliente in (5, 7) then 2
		when idcliente = 8 then 3
		when idcliente in (9, 13) then 4
	end;
	
alter table cliente
drop column nacionalidade;

select idcliente, complemento from cliente;

alter table cliente
add column idcomplemento integer,
add constraint fk_cmpl_idcomplemento foreign key (idcomplemento) references complemento (idcomplemento);

update cliente
set idcomplemento = 
	case
		when idcliente in (1, 4, 9, 13) then 1
		when idcliente in (2, 3, 7, 17) then 2
	end;

alter table cliente
drop column complemento;

select * from cliente

alter table cliente
add idbairro integer,
add constraint fk_bairro_idbairro foreign key (idbairro) references bairro (idbairro)

select idcliente, bairro from cliente

update cliente
set idbairro = 
	case
		when idcliente in (1, 12, 13) then 1
		when idcliente in (2, 3, 6, 8, 9, 17) then 2
		when idcliente in (4, 5) then 3
		when idcliente = 7  then 4
	end;
	
select * from cliente

alter table cliente
drop column bairro

select distinct (municipio) from cliente

