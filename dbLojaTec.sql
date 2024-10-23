create database dblojaetec;
use dblojaetec;
show tables;

truncate table usuarios;
drop table if exists usuarios;
create table usuarios(
idUser int auto_increment primary key, 
nome varchar(50) not null,
fone varchar(15),
login varchar(50) not null unique,
senha varchar(50) not null);

select nome,fone,login,senha from usuarios;

insert into usuarios(nome, fone, login, senha) values('João Silva', '12345-6789', 'joaosilva@gmail.com', 'senha_hashed_1'),
('Maria Oliveira', '98765-4321', 'mariaoliveira@gmail.com', 'senha_hashed_2'),
('Carlos Santos', 93244-4959, 'carlossantos@gmail.com', 'senha_hashed_3'),
('Ana Pereira', '11122-3344', 'anapereira@gmail.com', 'senha_hashed_4'),
('Ricardo Lima', '55566-7788', 'ricardolima@gmail.com', 'senha_hashed_5'),
('Fernanda Costa', 98432-5040, 'fernandacosta@gmail.com', 'senha_hashed_6'),
('Juliana Martins', '44455-6677', 'julianamartins@gmail.com', 'senha_hashed_7'),
('Paulo Souza', '22233-4455', 'paulosouza@gmail.com', 'senha_hashed_8'),
('Lucas Almeida', '88899-0011', 'lucasalmeida@gmail.com', 'senha_hashed_9'),
('Tatiane Rocha', 99934-0545, 'tatianerocha@gmail.com', 'senha_hashed_10');

drop table if exists clientes;
truncate table clientes;
create table clientes(
idCli int primary key auto_increment,
nomeCli varchar(50) not null,
endCli varchar(100),
foneCli varchar(15) not null,
emailCli varchar(50));


INSERT INTO clientes (nomeCli, endCli, foneCli, emailCli)
VALUES 
('João da Silva', 'Rua A, 123', '12345-6789', 'joao@example.com'),
('Maria Oliveira', 'Rua B, 456', '98765-4321', 'maria@example.com'),
('Carlos Santos', 'Rua C, 789', '55555-5555', 'carlos@example.com'),
('Ana Pereira', 'Rua D, 321', '22222-2222', 'ana@example.com'),
('Ricardo Lima', 'Rua E, 654', '33333-3333', 'ricardo@example.com'),
('Fernanda Costa', 'Rua F, 987', '44444-4444', 'fernanda@example.com'),
('Juliana Martins', 'Rua G, 159', '88888-8888', 'juliana@example.com'),
('Paulo Souza', 'Rua H, 753', '66666-6666', 'paulo@example.com'),
('Lucas Almeida', 'Rua I, 246', '77777-7777', 'lucas@example.com'),
('Tatiane Rocha', 'Rua J, 369', '99999-9999', 'tatiane@example.com');

select nomeCli,endCli,foneCli,emailCli from clientes;

drop table if exists ordem_servico;
truncate table ordem_servico;
create table ordem_servico(
os int primary key  auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150)not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idCli int not null,
foreign key(idCli) references clientes(idCli));

INSERT INTO ordem_servico (data_os,equipamento, defeito, servico, tecnico, valor, idCli)
VALUES 
('2024-01-10 09:30:00','Notebook Dell', 'Não liga', 'Reparo de hardware', 'Carlos Silva', 250.00, 1),
('2024-02-15 14:45:00','Impressora HP', 'Atola papel', 'Limpeza e ajuste', 'Ana Pereira', 100.00, 2),
('2024-03-22 11:00:00','Smartphone Samsung', 'Tela quebrada', 'Substituição de tela', 'Ricardo Lima', 300.00, 3),
('2024-04-05 18:15:00','Desktop Acer', 'Desempenho lento', 'Upgrade de RAM', 'Juliana Martins', 150.00, 4),
('2024-05-30 07:00:00','Tablet Apple', 'Bateria não carrega', 'Troca de bateria', 'Fernanda Costa', 200.00, 5),
('2024-06-18 12:30:00','Roteador TP-Link', 'Sem sinal', 'Configuração e teste', 'Paulo Souza', 80.00, 6),
('2024-07-25 16:20:00','Console PlayStation', 'Não conecta à internet', 'Verificação de rede', 'Lucas Almeida', 120.00, 7),
('2024-08-12 10:10:00','Câmera Canon', 'Imagens borradas', 'Limpeza de lente', 'Tatiane Rocha', 90.00, 8),
('2024-09-30 15:45:00','Máquina de lavar', 'Não centrifuga', 'Reparo mecânico', 'João da Silva', 220.00, 9),
('2024-10-23 20:00:00','Micro-ondas Brastemp', 'Não esquenta', 'Verificação de circuito', 'Maria Oliveira', 180.00, 10);

select data_os, equipamento, defeito, servico, tecnico,valor, idCli from ordem_servico;



 