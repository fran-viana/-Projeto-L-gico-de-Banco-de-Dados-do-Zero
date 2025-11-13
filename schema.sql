-- LIMPAR TABELAS 
DROP TABLE IF EXISTS Servico_has_Oficina;
DROP TABLE IF EXISTS Oficina;
DROP TABLE IF EXISTS Servico;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Veiculo;
DROP TABLE IF EXISTS Mecanico;
DROP TABLE IF EXISTS Ordem_Servico;

-- TABELA CLIENTE
CREATE TABLE Cliente (
  idCliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  telefone VARCHAR(15),
  email VARCHAR(100)
);

-- TABELA VEICULO
CREATE TABLE Veiculo (
  idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
  modelo VARCHAR(50),
  placa VARCHAR(10),
  ano INT,
  idCliente INT,
  FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

-- TABELA MECÂNICO
CREATE TABLE Mecanico (
  idMecanico INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  especialidade VARCHAR(50)
);

-- TABELA SERVIÇO
CREATE TABLE Servico (
  idServico INT AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(100),
  valor DECIMAL(10,2)
);

-- TABELA OFICINA
CREATE TABLE Oficina (
  idOficina INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  endereco VARCHAR(150)
);

-- TABELA ORDEM DE SERVIÇO
CREATE TABLE Ordem_Servico (
  idOrdem INT AUTO_INCREMENT PRIMARY KEY,
  data_emissao DATE,
  idCliente INT,
  idMecanico INT,
  idVeiculo INT,
  FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
  FOREIGN KEY (idMecanico) REFERENCES Mecanico(idMecanico),
  FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo)
);

-- TABELA RELAÇÃO OFICINA x SERVIÇO
CREATE TABLE Servico_has_Oficina (
  idOficina INT,
  idServico INT,
  PRIMARY KEY (idOficina, idServico),
  FOREIGN KEY (idOficina) REFERENCES Oficina(idOficina),
  FOREIGN KEY (idServico) REFERENCES Servico(idServico)
);
