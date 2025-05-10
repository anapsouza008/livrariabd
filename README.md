# Sistema de Banco de Dados para Livraria

Este projeto contém a estrutura de um banco de dados relacional para uma livraria, desenvolvido em SQL. O objetivo é permitir o controle de produtos (livros), pedidos e demais operações básicas, como inserção e consulta de dados.

## Tecnologias Utilizadas

- SQL (Structured Query Language)
- SGBD compatível com SQL padrão (como MySQL, PostgreSQL ou SQLite)
- Git e GitHub para versionamento

## Estrutura do Projeto

- `criar_tabelas.sql`: Script com os comandos DDL para criar as tabelas `produtos` e `pedidos`.
- `inserir_dados.sql`: Script com os comandos DML para inserir dados de exemplo nas tabelas.
- `manipular_dados.sql`: Script com comandos `SELECT`, `UPDATE` e `DELETE` para simular manipulação e consultas.

## Relacionamentos entre Tabelas

- Um produto pode estar em vários pedidos (**1:N**).
- Cada pedido está associado a um único produto.

## Exemplos de Comandos

```sql
-- Inserção de um novo produto
INSERT INTO produtos (id, nome, preco, estoque) VALUES (1, 'Livro A', 39.90, 10);

-- Registro de um pedido
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES (1, 1, 2, '2025-05-10');

-- Atualização de estoque após a venda
UPDATE produtos SET estoque = estoque - 2 WHERE id = 1;

-- Consulta de pedidos
SELECT * FROM pedidos;
