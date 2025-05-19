create database campeonato_futebol;

use campeonato_futebol;

create table times (
codtimes_campeonatofutebol int primary key auto_increment,
nome_times varchar(15),
jogadores_times varchar(50),
tecnico_times varchar(50),
cidade_times varchar(50),
posicao_time varchar(50)
);

create table divisao (
codDivisao_campeonato int primary key auto_increment,
num_divisao varchar(15),
fk_divisao_id_campeonato int
);

alter table divisao add foreign key (fk_divisao_id_campeonato) 
references times (codtimes_campeonatofutebol);

insert into times (nome_times, jogadores_times, tecnico_times, cidade_times, posicao_time)
value ('vasco', '24' ,'marcio', 'sao paulo', '18');

 insert into times (nome_times, jogadores_times, tecnico_times, cidade_times, posicao_time)
value ('flamengo','22' , 'renato', 'rio de janeiro', '5');

insert into times (nome_times, jogadores_times, tecnico_times, cidade_times, posicao_time)
value ('palmeiras', '25', 'pedro', 'sao paulo', '8');

insert into times (nome_times, jogadores_times, tecnico_times, cidade_times, posicao_time)
value ('gremio', '26', 'enzo', 'santa catarina', '12');

insert into times (nome_times, jogadores_times, tecnico_times, cidade_times, posicao_time)
value ('sport', '23', 'magrao', 'recife', '4');

insert into divisao (num_divisao, fk_divisao_id_campeonato)
value ('segunda', 1);

insert into divisao (num_divisao, fk_divisao_id_campeonato)
value ('primeira', 2);

insert into divisao (num_divisao, fk_divisao_id_campeonato)
value ('primeira', 3);

insert into divisao (num_divisao, fk_divisao_id_campeonato)
value ('segunda', 4);

insert into divisao (num_divisao, fk_divisao_id_campeonato)
value ('primeira', 5);


SELECT t.nome_times
FROM times t
INNER JOIN divisao d ON t.codtimes_campeonatofutebol = d.fk_divisao_id_campeonato
WHERE t.nome_times LIKE '%rio%';

SELECT t.nome_times, d.num_divisao
FROM times t
INNER JOIN divisao d ON t.codtimes_campeonatofutebol = d.fk_divisao_id_campeonato;

SELECT t.nome_times
FROM times t
INNER JOIN divisao d ON t.codtimes_campeonatofutebol = d.fk_divisao_id_campeonato
WHERE t.nome_times LIKE 's%';

SELECT t.nome_times, d.num_divisao
FROM times t
INNER JOIN divisao d ON t.codtimes_campeonatofutebol = d.fk_divisao_id_campeonato
WHERE d.num_divisao LIKE '%primeira%';

SELECT t.nome_times
FROM times t
INNER JOIN divisao d ON t.codtimes_campeonatofutebol = d.fk_divisao_id_campeonato
WHERE t.nome_times LIKE '%o';
