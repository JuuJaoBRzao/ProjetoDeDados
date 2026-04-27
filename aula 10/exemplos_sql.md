<img width="1400" height="742" alt="image" src="https://github.com/user-attachments/assets/aca106ee-b9b1-4e88-9902-eaec27a7bce8" />

SELECT * from Paciente WHERE sexo == 'F'
SELECT * from Consulta where id_paciente = 4
SELECT Paciente.nome, Consulta.data from Paciente, Consulta WHERE Paciente.sexo == 'F' and Paciente.id_paciente == Consulta.id_consulta and Medico.id_medico == Consulta.id_medico

Mostrar os pacientes (nome) que tiveram ou vão ter consulta com médico traumatologista
SELECT Paciente.nome, Consulta.data, Medico.nome from Paciente, Medico, Consulta WHERE Medico.especialidade == 'Traumato' and Medico.id_medico == Consulta.id_medico and Paciente.id_paciente == Consulta.id_paciente

SELECT Consulta.data from Consulta WHERE id_paciente IN (SELECT id_paciente from Paciente WHERE sexo == 'F') 

<img width="1398" height="707" alt="image" src="https://github.com/user-attachments/assets/9a28e999-c1e9-4c0b-9074-78d26d5f97d7" />

1)
SELECT Aluno.nome, Curso.descricao 
FROM Disciplina, Turma, Matricula
WHERE Disciplina.nome == "ESTRUTURA DE DADOS"
AND Turma.ano_semestre like "2026%";
AND Disciplina.id_disciplina == Turma.id_disciplina
AND Turma.id_turma == Matricula.id_turma
AND Matricula.id_aluno == Aluno.id_aluno
AND Aluno.id_curso == Curso.id_curso

2) 
