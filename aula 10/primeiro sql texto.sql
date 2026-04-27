-- mostra os esquemas de banco de dados no MySQL
show databases;

-- para ativar um esquema ou um banco de dados
use mysql;

-- mostra as tabelas de um esquema ou um banco de dados
show tables;

-- mostra todas as colunas/atributos e todas as linhas da tabela component
select *
from component;

-- cria e usa um esquema de banco de dados
create schema ufn_db;
use ufn_db;
show tables;

-- cria a tabela curso (id_curso, descricao)
CREATE TABLE curso (
	id_curso INT PRIMARY KEY not null,
    descricao VARCHAR(50) not null
);

select *
from curso;

-- cria a tabela aluno (id_aluno, nome, id_curso)
CREATE TABLE aluno (
	id_aluno INT PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL,
    id_curso  INT,
	CONSTRAINT fk_curso FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

select *
from aluno;    
