-- Criação das tabelas
CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome TEXT,
    cargo TEXT
);

CREATE TABLE registro_atividades (
    id SERIAL PRIMARY KEY,
    atividade TEXT,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criação do trigger
CREATE TRIGGER after_insert_funcionarios
AFTER INSERT ON funcionarios
BEGIN
    INSERT INTO registro_atividades (atividade) VALUES ('Novo funcionário inserido: ' || NEW.nome);
END;

-- Inserção de um novo funcionário para testar o trigger
INSERT INTO funcionarios (nome, cargo) VALUES ('João', 'Programador');

-- Verificação dos registros na tabela de registro de atividades
SELECT * FROM registro_atividades;
