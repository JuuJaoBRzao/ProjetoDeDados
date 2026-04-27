CREATE SCHEMA banco_db;
use banco_db;

CREATE TABLE Curso (
	id_curso INT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

CREATE TABLE Disciplina (
    id_disciplina INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE Turma (
    id_turma INT PRIMARY KEY,
    ano_semestre VARCHAR(10) NOT NULL,
    id_disciplina INT,
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_disciplina)
);

CREATE TABLE Matricula (
    id_matricula INT PRIMARY KEY,
    id_aluno INT,
    id_turma INT,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);

show tables;
