/*criar banco de dados*/
CREATE DATABASE biblioteca;

/*usar banco de dados criada*/
USE biblioteca;

/*criar tabelas*/
CREATE TABLE autores (
    autor_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    nacionalidade VARCHAR(50)
);

CREATE TABLE livros (
    livro_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200),
    ano_publicacao INT,
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
);

/*inserir dados nas tabelas*/
INSERT INTO autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileiro'),
('George Orwell', 'Britânico'),
('Gabriel García Márquez', 'Colombiano');

INSERT INTO livros (titulo, ano_publicacao, autor_id) VALUES
('Dom Casmurro', 1899, 1),
('1984', 1949, 2),
('Cem Anos de Solidão', 1967, 3),
('O Alienista', 1882, 1);

/*consulta para listar todos os livros com seus respectivos autores:*/
SELECT livros.titulo, autores.nome
FROM livros
JOIN autores ON livros.autor_id = autores.autor_id;

/*INNER JOIN: Retorna registros que têm valores correspondentes em ambas as tabelas.*/
SELECT livros.titulo, autores.nome
FROM livros
INNER JOIN autores ON livros.autor_id = autores.autor_id;

/*LEFT JOIN: Retornar todos os registros da tabela da esquerda (primeira tabela mencionada)*/
SELECT livros.titulo, autores.nome
FROM livros
LEFT JOIN autores ON livros.autor_id = autores.autor_id;

/*RIGHT JOIN: Retorna todos os registros da tabela da direita (segunda tabela mencionada)*/
SELECT livros.titulo, autores.nome
FROM livros
RIGHT JOIN autores ON livros.autor_id = autores.autor_id;

/*FULL JOIN: Retorna todos os registros quando há uma correspondência em qualquer uma das tabelas.*/
SELECT livros.titulo, autores.nome
FROM livros
FULL JOIN autores ON livros.autor_id = autores.autor_id;




