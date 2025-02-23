CREATE DATABASE IF NOT EXISTS detran; 
USE detran;  

CREATE TABLE Categoria (
    idCategoria INT NOT NULL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL
);

CREATE TABLE Modelo (
    idModelo INT NOT NULL PRIMARY KEY,
    modelo VARCHAR(20) NOT NULL
);

CREATE TABLE Proprietario (
    cpf CHAR(11) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    sexo CHAR(1),
    dataNascimento DATE NOT NULL,
    idade INT,
    INDEX idx_proprietario_cpf (cpf)
);

CREATE TABLE Local (
    idLocal INT NOT NULL PRIMARY KEY,
    longitude DECIMAL(5, 2) NOT NULL,
    latitude DECIMAL(5, 2) NOT NULL
);

CREATE TABLE Agente (
    matricula INT NOT NULL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    dataContratacao DATE NOT NULL,
    tempoServicoMeses INT
);

CREATE TABLE TipoInfracao (
    idTipo INT NOT NULL PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL,
    valor DECIMAL(5, 2) NOT NULL,
    campo VARCHAR(255) NULL
);

-- Tabelas com FKs para as tabelas acima:

CREATE TABLE Veiculo (
    placa VARCHAR(7) NOT NULL PRIMARY KEY,
    chassi VARCHAR(17) NOT NULL,
    cor VARCHAR(20),
    idCategoria INT NOT NULL,
    idModelo INT NOT NULL,
    cpfProprietario VARCHAR(11) NOT NULL,
    anoFabricacao INT NOT NULL,
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria),
    FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo),
    FOREIGN KEY (cpfProprietario) REFERENCES Proprietario(cpf),
    INDEX idx_veiculo_categoria (idCategoria),
    INDEX idx_veiculo_modelo (idModelo),
    INDEX idx_veiculo_proprietario (cpfProprietario)
);
CREATE TABLE Telefone (
  idTelefone INT PRIMARY KEY AUTO_INCREMENT,
  cpfProprietario VARCHAR(11) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    FOREIGN KEY (cpfProprietario) REFERENCES Proprietario(cpf),
    INDEX idx_telefone_cpf (cpfProprietario)
);

CREATE TABLE Infracao (
    idInfracao INT NOT NULL PRIMARY KEY,
    idAgente INT NOT NULL,
    idLocal INT NOT NULL,
    idTipoInfracao INT NOT NULL,
    placaVeiculo VARCHAR(7) NOT NULL,
    dataHora DATETIME NOT NULL,
    velocidadeAferida INT,
    FOREIGN KEY (idAgente) REFERENCES Agente(matricula),
    FOREIGN KEY (idLocal) REFERENCES Local(idLocal),
    FOREIGN KEY (idTipoInfracao) REFERENCES TipoInfracao(idTipo),
    FOREIGN KEY (placaVeiculo) REFERENCES Veiculo(placa),
    INDEX idx_infracao_agente (idAgente),
    INDEX idx_infracao_local (idLocal),
    INDEX idx_infracao_tipo (idTipoInfracao),
    INDEX idx_infracao_veiculo (placaVeiculo),
    INDEX idx_infracao_datahora (dataHora)
);