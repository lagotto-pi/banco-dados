create database sprint;
use sprint;

-- criando tabela para armazenar os dados do sensor
create table sensor (
    idSensor int primary key auto_increment,
    porcentagem int,
    umidade varchar(50)
);

-- inserindo valores do sensor
insert into sensor (porcentagem, umidade) values
(80, 'alta'),
(50, 'baixa'),
(60, 'baixa'),
(70, 'ideal');

-- criando tabela para armazenar os dados de cada cliente
create table cliente (
    idCliente int primary key auto_increment,
    nome varchar(100),
    localizacao varchar(200),
    dtInstalacao date,
    idSensor int,
    foreign key (idSensor) references sensor(idSensor)
    );
    
-- inserindo dados na tabela dos clientes
insert into cliente (nome, localizacao, dtInstalacao) values
('Muniz', 'Guilhermina', 2025-03-10),
('Thiago', 'Santo André', 2025-01-15),
('Arthur', 'Patriarca', 2025-02-05);

    
