/*Uma loja tem um banco de dados que contém todo o controle de vendas de produtos e de cadastro de clientes.
 Pensando nisso, crie uma função para somar todos os clientes que foram cadastrados na loja durante um dia.
Trabalhe esse código em seu IDE, suba ele para sua conta no GitHub e compartilhe o link desse projeto no 
campo ao lado para que outros desenvolvedores possam analisá-lo. */

data_alvo = datetime(2024, 3, 26)  -- Por exemplo, 26 de março de 2024
total_clientes_dia = somar_clientes_cadastrados(data_alvo)
print(f"Total de clientes cadastrados em {data_alvo.date()}: {total_clientes_dia}")

/*Neste exemplo:

A função somar_clientes_cadastrados recebe a data alvo como argumento.
A data alvo é convertida para o formato de string que o SQLite entende (YYYY-MM-DD).
A consulta SQL é executada para contar o número de clientes cadastrados na data alvo.
O resultado é retornado como o total de clientes cadastrados naquele dia.
No exemplo de uso, uma data específica é passada para a função, e o total de clientes cadastrados 
nesse dia é exibido. 
