-- Criar o banco de dados 'dripstore'
CREATE DATABASE IF NOT EXISTS dripstore;

-- Usar o banco de dados
USE dripstore;
-- Tabela 'usuarios'
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    bairro VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    complemento VARCHAR(255),
    cep VARCHAR(8) NOT NULL
);

-- Inserir dados na tabela 'usuarios'
INSERT INTO usuarios (nome, cpf, telefone, email, password, endereco, bairro, cidade, complemento, cep) VALUES
('João Silva', '12345678901', '(11) 98765-4321', 'joao.silva@example.com', 'senha123', 'Rua A, 123', 'Centro', 'São Paulo', '', '01001000'),
('Maria Oliveira', '98765432109', '(21) 91234-5678', 'maria.oliveira@example.com', 'senha456', 'Avenida B, 456', 'Jardins', 'Rio de Janeiro', 'Apto 101', '20020000'),
('Carlos Souza', '11223344556', '(41) 99887-6543', 'carlos.souza@example.com', 'senha789', 'Rua C, 789', 'Centro', 'Curitiba', 'Sala 301', '80030000'),
('Ana Costa', '22334455667', '(61) 91910-1111', 'ana.costa@example.com', 'senha101', 'Avenida D, 101', 'Bairro A', 'Brasília', '', '70070000');

SELECT * FROM usuarios;

-- Desabilitar as verificações de chave estrangeira
SET foreign_key_checks = 0;

-- Dropar as tabelas existentes
DROP TABLE IF EXISTS pedidos_produtos;
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS estoque;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS categoriaPecas;
DROP TABLE IF EXISTS categoriasFuncaoPeca;
DROP TABLE IF EXISTS usuarios;

-- Reabilitar as verificações de chave estrangeira
SET foreign_key_checks = 1;
