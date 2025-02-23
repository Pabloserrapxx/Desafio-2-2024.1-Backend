-- Inserção de dados fictícios (Script Popula)

-- CATEGORIA
INSERT INTO Categoria (idCategoria, nome) VALUES
(1, 'Automóvel'),
(2, 'Motocicleta'),
(3, 'Caminhão'),
(4, 'Ônibus'),
(5, 'Utilitário');

-- MODELO
INSERT INTO Modelo (idModelo, modelo) VALUES
(1, 'Gol'),
(2, 'Uno'),
(3, 'Palio'),
(4, 'Corsa'),
(5, 'Civic'),
(6, 'Hilux'),
(7, 'Fiorino');
-- PROPRIETARIO
INSERT INTO Proprietario (cpf, nome, endereco, bairro, cidade, estado, sexo, dataNascimento, idade) VALUES
('12345678900', 'João Silva', 'Rua A, 123', 'Centro', 'São Paulo', 'SP', 'M', '1990-01-15', 34),
('98765432100', 'Maria Souza', 'Av. B, 456', 'Bela Vista', 'Rio de Janeiro', 'RJ', 'F', '1985-07-20', 39),
('11122233344', 'José Santos', 'Rua C, 789', 'Ipiranga', 'São Paulo', 'SP', 'M', '2000-12-10', 23),
('55544433322', 'Ana Oliveira', 'Av. D, 101', 'Copacabana', 'Rio de Janeiro', 'RJ', 'F', '1978-03-05', 46),
('99988877766', 'Pedro Costa', 'Rua E, 222', 'Liberdade', 'São Paulo', 'SP', 'M', '1995-09-28', 28);

-- VEICULO
INSERT INTO Veiculo (placa, chassi, cor, idCategoria, idModelo, cpfProprietario, anoFabricacao) VALUES
('ABC1234', '12345678901234567', 'Azul', 1, 1, '12345678900', 2020),
('DEF5678', '98765432109876543', 'Vermelho', 2, 2, '98765432100', 2022),
('GHI9012', '11122233344455566', 'Branco', 1, 3, '11122233344', 2021),
('JKL3456', '55544433322211100', 'Preto', 1, 1, '55544433322', 2019),
('MNO7890', '99988877766655544', 'Prata', 2, 2, '99988877766', 2023),
('PQR1122','11122333445566778', 'Verde', 3,6, '12345678900', 2024);

-- TELEFONE
INSERT INTO Telefone (cpfProprietario, telefone) VALUES
('12345678900', '11999999999'),
('12345678900', '11888888888'),
('98765432100', '21999999999'),
('11122233344', '11777777777'),
('55544433322', '21888888888');

-- LOCAL
INSERT INTO Local (idLocal, longitude, latitude) VALUES
(1, -46.63, -23.55),  -- São Paulo
(2, -43.20, -22.90),  -- Rio de Janeiro
(3, -47.88, -15.79),  -- Brasília
(4, -49.27, -25.42); -- Curitiba

-- TIPOINFRACAO
INSERT INTO TipoInfracao (idTipo, descricao, valor) VALUES
(1, 'Excesso de velocidade', 150.00),
(2, 'Estacionamento irregular', 100.00),
(3, 'Avanço de sinal vermelho', 200.00),
(4, 'Dirigir sem cinto', 80.00),
(5, 'Uso de celular ao volante', 120.00);

-- AGENTE
INSERT INTO Agente (matricula, nome, dataContratacao, tempoServicoMeses) VALUES
(12345, 'Carlos Silva', '2018-05-10', 72),
(54321, 'Fernanda Souza', '2020-01-22', 48),
(98765, 'Roberto Oliveira', '2019-11-03', 54),
(67890, 'Juliana Costa', '2021-07-15', 36),
(24680, 'Ricardo Santos', '2022-03-01', 24);

-- INFRACAO
INSERT INTO Infracao (idInfracao, idAgente, idLocal, idTipoInfracao, placaVeiculo, dataHora, velocidadeAferida) VALUES
(1, 12345, 1, 1, 'ABC1234', '2024-01-10 10:00:00', 80),
(2, 54321, 2, 2, 'DEF5678', '2024-01-15 14:30:00', NULL),
(3, 98765, 1, 3, 'GHI9012', '2024-01-20 16:45:00', NULL),
(4, 67890, 2, 4, 'JKL3456', '2024-01-25 09:15:00', NULL),
(5, 24680, 3, 5, 'MNO7890', '2024-01-30 11:20:00', 65),
(6, 12345, 1, 1, 'ABC1234', '2024-02-10 10:00:00', 95);