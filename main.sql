create database plataforma_estudos;

use plataforma_estudos;

create table cursos(
	id int auto_increment primary key,
    nome_curso varchar(50),
    duracao varchar(50),
    status_curso boolean
);

create table instrutor(
	id int auto_increment primary key,
    nome varchar(50) not null,
    email varchar(50) not null,
    idade int(2),
    numero char(11)
);

create table cursos_instrutor(
	id int auto_increment primary key,
    id_cursos int,
    id_instrutor int,
    
	foreign key (id_cursos) references cursos(id),
	foreign key (id_instrutor) references instrutor(id)
);


create table aluno(
	id int auto_increment primary key,
    nome varchar(50) not null,
    email varchar(50) not null,
    id_curso int,
    idade int(2),
    cpf char(11),
    numero char(11),
    endereco varchar(100),
    
    foreign key (id_curso) references cursos(id)
);

create table desempenho_aluno(
	id int auto_increment primary key,
    id_aluno int,
    progressao float,
    faltas int,
    aproveitamento float,
    nota float,
    
    foreign key (id_aluno) references aluno(id)
);

create table disciplina(
	id int auto_increment primary key,
    nome_disciplina varchar(50),
    carga_horaria varchar(50),
    alunos_cadastrados int(50)
);

create table cursos_disciplinas(
	id int auto_increment primary key,
    id_curso int,
    id_disciplina int,
    
    foreign key (id_curso) references cursos(id),
	foreign key (id_disciplina) references disciplina(id)
);

insert into instrutor (nome, email, idade, numero) values
('Joana Oliveira', 'joana@email.com', 28, '5151234678'),
('Marcos Santos', 'marcos@email.com', 35, '4949876532'),
('Laura Pereira', 'laura@email.com', 30, '6762347809'),
('Rafael Silva', 'rafael@email.com', 25, '7477894512'),
('Carolina Souza', 'carolina@email.com', 32, '3033216590'),
('Amanda Rodrigues', 'amanda@plataforma_estudos.com', 35, '31987654567'),
('Renato Nunes', 'renato@plataforma_estudos.com', 31, '11976543456'),
('Juliana Ferreira', 'juliana@plataforma_estudos.com', 27, '21987659876'),
('Fernando Santos', 'fernando@plataforma_estudos.com', 38, '11912348901'),
('Camila Lima', 'camila@plataforma_estudos.com', 36, '21987654321');

INSERT INTO cursos (nome_curso, duracao, status_curso) VALUES
('Desenvolvimento Web Avançado', '6 meses', TRUE),
('Banco de Dados para sistemas empresariais', '4 meses', TRUE),
('Inteligência Artificial Aplicada', '8 meses', FALSE),
('Python no dia a dia', '5 meses', TRUE),
('Redes de Computadores Avançadas', '7 meses', FALSE);

INSERT INTO cursos_instrutor (id_cursos, id_instrutor) VALUES
(1, 3), (1, 6), (1, 9),
(2, 1), (2, 4), (2, 7),
(3, 2), (3, 5), (3, 8),
(4, 3), (4, 6), (4, 10),
(5, 1), (5, 4), (5, 9);

INSERT INTO aluno (nome, email, id_curso, idade, cpf, numero, endereco) VALUES
('João da Silva', 'joao.silva@email.com', 4, 25, '12345678910', '51987654321', 'Rua das Flores, 123'),
('Maria Santos', 'maria.santos@email.com', 4, 30, '98765432101', '11987654321', 'Av. Principal, 456'),
('Pedro Oliveira', 'pedro.oliveira@email.com', 3, 22, '23456789012', '31976543210', 'Travessa da Paz, 87'),
('Ana Souza', 'ana.souza@email.com', 1, 28, '87654321098', '21965432109', 'Rua do Comércio, 56'),
('Carlos Pereira', 'carlos.pereira@email.com', 2, 26, '34567890123', '11954321098', 'Avenida Central, 789'),
('Fernanda Lima', 'fernanda.lima@email.com', 1, 24, '76543210987', '41943210987', 'Alameda dos Anjos, 234'),
('Thiago Santos', 'thiago.santos@email.com', 5, 29, '45678901234', '21987654321', 'Rua das Palmeiras, 876'),
('Marina Costa', 'marina.costa@email.com', 3, 27, '67890123456', '11976543210', 'Praça da Liberdade, 321'),
('Luiz Oliveira', 'luiz.oliveira@email.com', 4, 23, '89012345678', '21965432109', 'Avenida dos Girassóis, 45'),
('Beatriz Almeida', 'beatriz.almeida@email.com', 2, 31, '01234567890', '51943210987', 'Rua das Orquídeas, 67'),
('Rafaela Oliveira', 'rafaela@email.com', 1, 26, '34567890123', '76543210987', 'Rua K, 345'),
('Gustavo Martins', 'gustavo@email.com', 2, 29, '45678901234', '65432109876', 'Avenida L, 678'),
('Larissa Silva', 'larissa@email.com', 3, 24, '56789012345', '54321098765', 'Rua M, 901'),
('Diego Pereira', 'diego@email.com', 4, 27, '67890123456', '43210987654', 'Avenida N, 234'),
('Carolina Ferreira', 'carolina@email.com', 5, 30, '78901234567', '32109876543', 'Rua O, 567'),
('Vinicius Rodrigues', 'vinicius@email.com', 1, 28, '89012345678', '21098765432', 'Avenida P, 890'),
('Laura Souza', 'laura@email.com', 2, 25, '90123456789', '10987654321', 'Rua Q, 123'),
('Gabriel Lima', 'gabriel@email.com', 3, 22, '01234567890', '98765432109', 'Avenida R, 456'),
('Amanda Costa', 'amanda@email.com', 4, 31, '12345678901', '87654321098', 'Rua S, 789'),
('Bruno Alves', 'bruno@email.com', 5, 23, '23456789012', '76543210987', 'Avenida T, 901');

INSERT INTO desempenho_aluno (id_aluno, progressao, faltas, aproveitamento, nota) VALUES
(1, 75.5, 5, 85.2, 8.7),
(2, 80.0, 3, 92.5, 9.5),
(3, 60.8, 8, 70.0, 6.9),
(4, 90.2, 1, 98.3, 9.8),
(5, 70.3, 4, 80.1, 7.5),
(6, 85.5, 2, 93.7, 9.2),
(7, 55.0, 10, 65.8, 6.0),
(8, 78.9, 6, 88.6, 8.4),
(9, 92.1, 0, 99.0, 9.9),
(10, 68.4, 7, 78.2, 7.2),
(11, 72.6, 6, 81.3, 7.8),
(12, 88.3, 1, 95.7, 9.3),
(13, 63.7, 9, 72.5, 6.5),
(14, 91.5, 2, 97.8, 9.7),
(15, 68.9, 5, 78.4, 7.4),
(16, 84.2, 3, 90.6, 8.9),
(17, 59.8, 8, 68.7, 6.2),
(18, 76.4, 4, 84.9, 8.1),
(19, 94.7, 0, 99.5, 9.9),
(20, 66.5, 7, 76.2, 7.0);

INSERT INTO disciplina (nome_disciplina, carga_horaria, alunos_cadastrados) VALUES
('Introdução à Programação', '60 horas', 4),
('Banco de Dados Avançado', '45 horas', 4),
('Desenvolvimento Web', '50 horas', 4),
('Inteligência Artificial', '40 horas', 5),
('Redes de Computadores', '55 horas', 3);


INSERT INTO cursos_disciplina (id_curso, id_disciplina) VALUES
(4,1), (2,2), (3,4), (1,3), (5,5);

-- Seleciona todos os alunos cujo desempenho na tabela desempenho_aluno está abaixo da média, que é 7, e conta quantos alunos estão nessa situação
SELECT COUNT(*) AS media_baixa FROM aluno WHERE id IN (SELECT id_aluno FROM desempenho_aluno WHERE nota < 7);

-- Seleciona o aproveitamento médio dos alunos que estão com pelo menos 70% de aproveitamento
SELECT ROUND(AVG(aproveitamento),2) AS aproveitamento_medio FROM desempenho_aluno WHERE aproveitamento > 70.0;


-- Seleciona, de acordo com o ID do curso escolhido, os nomes dos alunos, o nome do curso e sua nota se sua nota estiver abaixo de 7
DELIMITER //

CREATE PROCEDURE AlunosCursosNotasRuins(IN curso_escolhido INT)
BEGIN
	SELECT aluno.nome, cursos.nome_curso, desempenho_aluno.nota
	FROM aluno
	INNER JOIN cursos ON aluno.id_curso = cursos.id
	INNER JOIN desempenho_aluno ON desempenho_aluno.id_aluno = aluno.id
	WHERE desempenho_aluno.nota < 7 AND cursos.id = curso_escolhido;
END //

DELIMITER ;

CALL AlunosCursosNotasRuins(1);