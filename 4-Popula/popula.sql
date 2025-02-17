INSERT INTO motorista (
    cpf,
    nome,
    endereco,
    bairro,
    cidade,
    estado,
    telefones,
    sexo,
    data_de_nascimento,
    idade
) VALUES 
    ('111.222.333-44', 'João da Silva', 'Rua das Flores, 123', 'Centro', 'São Paulo', 'São Paulo', '11987654321', 'Masculino', '1985-03-15', 38),
    ('222.333.444-55', 'Maria Oliveira', 'Avenida Brasil, 456', 'Jardim América', 'Rio de Janeiro', 'Rio de Janeiro', '21987654321', 'Feminino', '1990-07-22', 33),
    ('333.444.555-66', 'Carlos Souza', 'Rua das Palmeiras, 789', 'Barra da Tijuca', 'Rio de Janeiro', 'Rio de Janeiro', '21912345678', 'Masculino', '1978-11-30', 45),
    ('444.555.666-77', 'Ana Costa', 'Rua dos Coqueiros, 101', 'Boa Viagem', 'Recife', 'Pernambuco', '81987654321', 'Feminino', '1995-05-10', 28),
    ('555.666.777-88', 'Pedro Santos', 'Avenida Paulista, 2020', 'Bela Vista', 'São Paulo', 'São Paulo', '11912345678', 'Masculino', '1980-12-25', 43);

INSERT INTO agente (
    matricula,
    nome,
    data_de_contratacao,
    meses_de_servico
) VALUES 
    (1001, 'Fernando Almeida', '2015-06-10', 96),
    (1002, 'Rondineli Costa', '2018-03-22', 66),
    (1003, 'Ricardo Souza', '2010-11-15', 150),
    (1004, 'Patrício Lima', '2020-09-01', 36),
    (1005, 'Adagilson Oliveira', '2012-07-30', 132);

INSERT INTO local_de_multa (
    codigo_local,
    latitude,
    longitude,
    velocidade_permitida
) VALUES 
    (1, -15.799854, -47.864471, 60),
    (2, -23.550520, -46.633308, 50),
    (3, -22.906847, -43.172897, 70),
    (4, -12.971599, -38.501896, 40),
    (5, -16.686891, -49.264794, 80);

INSERT INTO tipo_de_infracao (
    codigo_do_tipo,
    descricao,
    valor_da_multa
) VALUES 
    (1, 'Avanço de sinal vermelho', 293.47),
    (2, 'Excesso de velocidade', 130.16),
    (3, 'Estacionamento em local proibido', 88.38),
    (4, 'Dirigir sem cinto de segurança', 195.23),
    (5, 'Uso de celular ao volante', 293.47);

INSERT INTO categoria (
    numero_da_categoria,
    nome_da_categoria
) VALUES 
    (1, 'Automóvel'),
    (2, 'Motocicleta'),
    (3, 'Caminhão'),
    (4, 'Ônibus'),
    (5, 'Caminhonete');

INSERT INTO modelo (
    numero_do_modelo,
    modelo_do_carro
) VALUES 
    ('123456', 'GOL MI'),
    ('234567', 'UNO CS'),
    ('345678', 'COROLLA XEI'),
    ('456789', 'HB20S'),
    ('567890', 'ONIX LTZ');

INSERT INTO veiculo (
    placa,
    chassi,
    cor_predominante,
    ano_de_fabricacao,
    numero_da_categoria,
    cpf_do_motorista,
    numero_do_modelo
) VALUES 
    ('ABC1D23', '9BWZZZ377VT004251', 'Prata', 2015, 1, '111.222.333-44', '123456'),
    ('XYZ4E56', '9BWBWZZZ377VT004252', 'Preto', 2018, 2, '222.333.444-55', '234567'),
    ('QWE7R89', '9BWZZZ377VT004253', 'Branco', 2020, 1, '333.444.555-66', '345678'),
    ('ASD0F12', '9BWZZZ377VT004254', 'Vermelho', 2019, 3, '444.555.666-77', '456789'),
    ('ZCX3V45', '9BWZZZ377VT004255', 'Azul', 2017, 4, '555.666.777-88', '567890');
INSERT INTO infracao (
    codigo_da_infracao,
    placa_do_veiculo,
    data_hora,
    tipo_de_infracao,
    local,
    matricula_do_agente,
    velocidade_aferida
) VALUES 
    (1, 'ABC1D23', '2023-10-01 14:30:00', 1, 1, 1001, 80),
    
    (2, 'XYZ4E56', '2023-10-02 09:15:00', 2, 2, 1002, 70),
    
    (3, 'QWE7R89', '2023-10-03 18:45:00', 3, 3, 1003, 60),
    
    (4, 'ASD0F12', '2023-10-04 12:00:00', 4, 4, 1004, 50),
    
    (5, 'ZCX3V45', '2023-10-05 16:20:00', 5, 5, 1005, 90);