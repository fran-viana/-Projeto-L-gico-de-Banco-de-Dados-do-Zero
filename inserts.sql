-- CLIENTES
INSERT INTO Cliente (nome, telefone, email) VALUES
('João Silva', '99999-1111', 'joao@email.com'),
('Maria Santos', '98888-2222', 'maria@email.com'),
('Carlos Souza', '97777-3333', 'carlos@email.com');

-- VEÍCULOS
INSERT INTO Veiculo (modelo, placa, ano, idCliente) VALUES
('Fiat Uno', 'ABC-1234', 2010, 1),
('Honda Civic', 'XYZ-5678', 2018, 2),
('Chevrolet Onix', 'KLM-9999', 2020, 3);

-- MECÂNICOS
INSERT INTO Mecanico (nome, especialidade) VALUES
('Pedro Lima', 'Motor'),
('Ana Costa', 'Suspensão'),
('Rafael Almeida', 'Freios');

-- SERVIÇOS
INSERT INTO Servico (descricao, valor) VALUES
('Troca de óleo', 120.00),
('Revisão completa', 450.00),
('Troca de pastilhas de freio', 200.00),
('Alinhamento e balanceamento', 150.00);

-- OFICINAS
INSERT INTO Oficina (nome, endereco) VALUES
('Oficina Central', 'Rua das Flores, 100'),
('AutoTech Serviços', 'Av. Brasil, 500');

-- RELAÇÃO SERVIÇOS x OFICINAS
INSERT INTO Servico_has_Oficina (idOficina, idServico) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4);

-- ORDENS DE SERVIÇO
INSERT INTO Ordem_Servico (data_emissao, idCliente, idMecanico, idVeiculo) VALUES
('2025-11-10', 1, 1, 1),
('2025-11-11', 2, 2, 2),
('2025-11-12', 3, 3, 3);

