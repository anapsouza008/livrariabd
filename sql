-- Tabela de categorias
CREATE TABLE categorias (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela de fornecedores
CREATE TABLE fornecedores (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100)
);

-- Tabela de livros
CREATE TABLE livros (
    id INT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100),
    preco DECIMAL(10, 2),
    estoque INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- Tabela de clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- Tabela de vendas
CREATE TABLE vendas (
    id INT PRIMARY KEY,
    livro_id INT,
    cliente_id INT,
    quantidade INT,
    data_venda DATE,
    FOREIGN KEY (livro_id) REFERENCES livros(id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
-- Inserir categorias
INSERT INTO categorias (id, nome) VALUES
(1, 'Ficção'),
(2, 'Tecnologia'),
(3, 'Filosofia');

-- Inserir fornecedores
INSERT INTO fornecedores (id, nome, contato) VALUES
(1, 'Distribuidora Midas', 'contato@midas.com'),
(2, 'Saber Livros', 'saber@livros.com');

-- Inserir livros
INSERT INTO livros (id, titulo, autor, preco, estoque, categoria_id) VALUES
(1, 'O Mito de Sísifo', 'Albert Camus', 89.90, 10, 1),
(2, 'Design Thinking', 'Tim Brown', 76.70, 5, 3),
(3, 'A cabeça bem feita', 'Paulo Freire', 37.24, 8, 2);

-- Inserir clientes
INSERT INTO clientes (id, nome, telefone, email) VALUES
(1, 'Ana Paula', '(47) 98822-4490', 'anapsouza008@email.com'),
(2, 'Anderson Paulo', '(47) 99646-6528', 'andersonpsouza1990@email.com');

-- Inserir vendas
INSERT INTO vendas (id, livro_id, cliente_id, quantidade, data_venda) VALUES
(1, 1, 1, 1, '2025-05-10'),
(2, 2, 2, 2, '2025-05-09');

