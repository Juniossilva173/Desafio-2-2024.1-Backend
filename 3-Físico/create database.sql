CREATE DATABASE DETRAN_ENGNET;
USE DETRAN_ENGNET;
CREATE TABLE motorista (
    cpf VARCHAR(100) PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    telefones VARCHAR(100) NOT NULL,
    sexo VARCHAR(100) NOT NULL,
    data_de_nascimento DATE NOT NULL,
    idade INT NOT NULL
);

CREATE TABLE categoria (
    numero_da_categoria INT PRIMARY KEY NOT NULL,
    nome_da_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE modelo (
    numero_do_modelo VARCHAR(100) PRIMARY KEY NOT NULL,
    modelo_do_carro VARCHAR(100) NOT NULL
);

CREATE TABLE veiculo (
    placa VARCHAR(100) PRIMARY KEY NOT NULL,
    chassi VARCHAR(100) NOT NULL,
    cor_predominante VARCHAR(100) NOT NULL,
    ano_de_fabricacao INT NOT NULL,
    numero_da_categoria INT NOT NULL,
    cpf_do_motorista VARCHAR(100) NOT NULL,
    numero_do_modelo VARCHAR(100) NOT NULL,
    FOREIGN KEY (numero_da_categoria) REFERENCES categoria(numero_da_categoria),
    FOREIGN KEY (cpf_do_motorista) REFERENCES motorista(cpf),
    FOREIGN KEY (numero_do_modelo) REFERENCES modelo(numero_do_modelo)
);

CREATE TABLE agente (
    matricula INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_de_contratacao DATE NOT NULL,
    meses_de_servico INT NOT NULL
);

CREATE TABLE tipo_de_infracao (
    codigo_do_tipo INT PRIMARY KEY NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    valor_da_multa DECIMAL(10, 2) NOT NULL
);

CREATE TABLE local_de_multa (
    codigo_local INT PRIMARY KEY NOT NULL,
    latitude DECIMAL(9, 6) NOT NULL,
    longitude DECIMAL(9, 6) NOT NULL,
    velocidade_permitida INT
);

CREATE TABLE infracao (
    codigo_da_infracao INT PRIMARY KEY NOT NULL,
    placa_do_veiculo VARCHAR(100) NOT NULL,
    data_hora TIMESTAMP NOT NULL,
    tipo_de_infracao INT NOT NULL,
    local INT NOT NULL,
    matricula_do_agente INT NOT NULL,
    velocidade_aferida INT,
    FOREIGN KEY (placa_do_veiculo) REFERENCES veiculo(placa),
    FOREIGN KEY (tipo_de_infracao) REFERENCES tipo_de_infracao(codigo_do_tipo),
    FOREIGN KEY (local) REFERENCES local_de_multa(codigo_local),
    FOREIGN KEY (matricula_do_agente) REFERENCES agente(matricula)
);