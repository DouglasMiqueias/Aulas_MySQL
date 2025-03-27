insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade) -- Se os valores estiverem na mesma ordem, não precisa dessa linha;
values
(default, 'Creuza', '1970-10-15','F', '55.50', '1.50', default),
(default, 'Pedro', '2000-12-01','M', '90.50', '1.80', default),
(default, 'Douglas', '2004-09-14','M', '100.50', '1.85', default),
(default, 'Henrico', '1999-07-15','m', '58.50', '1.75', 'EUA');
	
select * from pessoas;

-- DDL - DATA DEFINITION LANGUAGE - EX -CREATE TABLE, CREATA DATABASE;
-- DML - DATA MANIPULATION LNGUAGE - EX INSERT INTO;
