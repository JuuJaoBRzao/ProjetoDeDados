use mydb;

show tables;

select * 
from atleta;

insert into atleta values (1, "Maria");
insert into atleta values (2, "Pedro");
insert into atleta values (3, "Yasmin");
insert into atleta values (4, "Rafael");
insert into atleta values (5, "Daniel");

select *
from modalidade;

insert into modalidade values (500, "Beach Tennis");
insert into modalidade values (501, "Padel");
insert into modalidade values (502, "Volei de Praia");

select *
from clube;

insert into clube values (100, "Star Padel");
insert into clube values (101, "Fair Play");
insert into clube values (102, "Elite");
insert into clube values (103, "8000 Sports");
insert into clube values (104, "Pier Beach Tennis");

select *
from treinador;

insert into treinador values (1000, "Lucas", 100);
insert into treinador values (1001, "Pato", 102);
insert into treinador values (1002, "Jader", 103);
insert into treinador values (1003, "Enrico", 104);

select *
from ModalidadeTreinador;

insert into ModalidadeTreinador (modalidade, treinador) values (500, 1002);
insert into ModalidadeTreinador (modalidade, treinador) values (500, 1003);
insert into ModalidadeTreinador (modalidade, treinador) values (501, 1000);
insert into ModalidadeTreinador (modalidade, treinador) values (501, 1001);

select *
from AtletaModalidade;

insert into AtletaModalidade (atleta, modalidade) values (1, 500);
insert into AtletaModalidade (atleta, modalidade) values (1, 501);
insert into AtletaModalidade (atleta, modalidade) values (2, 500);
insert into AtletaModalidade (atleta, modalidade) values (3, 502);
insert into AtletaModalidade (atleta, modalidade) values (4, 502);

select *
from ModalidadeClube;

insert into ModalidadeClube (modalidade, clube) values (500, 100);
insert into ModalidadeClube (modalidade, clube) values (500, 101);
insert into ModalidadeClube (modalidade, clube) values (500, 103);
insert into ModalidadeClube (modalidade, clube) values (500, 104);
insert into ModalidadeClube (modalidade, clube) values (501, 100);
insert into ModalidadeClube (modalidade, clube) values (501, 101);
insert into ModalidadeClube (modalidade, clube) values (501, 102);


-- Quais os atletas não praticam nenhuma modalidade?
select *
from atleta as t1

left join atletamodalidade as t2
on t1.idAtleta = t2.atleta

left join modalidadeclube as t3
on t2.modalidade = t3.modalidade

left join modalidade as t4
on t4.idModalidade = t3.modalidade

left join clube as t5
on t5.idClube = t3.clube

left join modalidadetreinador as t6
on t6.modalidade = t4.idModalidade

left join treinador as t7
on t7.idTreinador = t6.treinador;