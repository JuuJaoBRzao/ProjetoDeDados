SELECT * from Paciente WHERE sexo == 'F'
SELECT * from Consulta where id_paciente = 4
SELECT Paciente.nome, Consulta.data from Paciente, Consulta WHERE Paciente.sexo == 'F' and Paciente.id_paciente == Consulta.id_consulta and Medico.id_medico == Consulta.id_medico

Mostrar os pacientes (nome) que tiveram ou vão ter consulta com médico traumatologista
SELECT Paciente.nome, Consulta.data, Medico.nome from Paciente, Medico, Consulta WHERE Medico.especialidade == 'Traumato' and Medico.id_medico == Consulta.id_medico and Paciente.id_paciente == Consulta.id_paciente

SELECT Consulta.data from Consulta WHERE id_paciente IN (SELECT id_paciente from Paciente WHERE sexo == 'F') 
