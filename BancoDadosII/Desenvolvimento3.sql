/*Criar um Procedure, considerando que o banco de dados tem no Banco de dados há uma tabela de nome comporas*/

CREATE PROCEDURE relatorio_compras_diario()
AS
BEGIN
    SELECT strftime('%Y-%m-%d', data_compra) AS data,
           COUNT(*) AS quantidade_compras
    FROM compras
    GROUP BY strftime('%Y-%m-%d', data_compra);
END;

--chamar o procedure através do comando
CALL relatorio_compras_diario();

