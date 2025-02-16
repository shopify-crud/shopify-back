-- Criar o banco de dados 'dripstore'
CREATE DATABASE IF NOT EXISTS shopify_banco;

-- Usar o banco de dados
USE shopify_banco;
-- Tabela 'usuarios'
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Inserir dados na tabela 'usuarios'
INSERT INTO usuarios (nome, cpf, telefone, email, password) VALUES
('João Silva', '12345678901', '(11) 98765-4321', 'joao.silva@example.com', 'senha123'),
('Maria Oliveira', '98765432109', '(21) 91234-5678', 'maria.oliveira@example.com', 'senha456'),
('Carlos Souza', '11223344556', '(41) 99887-6543', 'carlos.souza@example.com', 'senha789'),
('Ana Costa', '22334455667', '(61) 91910-1111', 'ana.costa@example.com', 'senha101');

SELECT * FROM usuarios;

-- Desabilitar as verificações de chave estrangeira
SET foreign_key_checks = 0;

-- Dropar as tabelas existentes
DROP TABLE IF EXISTS usuarios;

-- Reabilitar as verificações de chave estrangeira
SET foreign_key_checks = 1;
