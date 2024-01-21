/*Crie um projeto com dois arquivos: index.html e script.js. 
   No arquivo 'index' insira apenas a estrutura base HTML e a tag script para conectar o arquivo HTML com 
   o arquivo de extensão JavaScript.
   Usando os conceitos aprendidos nesse módulo, e sem alterar o arquivo index.html, adicione um título 
   simples ao site com o id 'titulo', e um elemento que represente um produto à venda. O produto precisa 
   incluir pelo menos o nome, a descrição e o preço. Pode incluir outros "elementos filhos" se achar 
   necessário como, por exemplo, uma imagem. Procure usar o método simples e o método complexo, ensinados 
   neste tópico.*/
   
/*Primeira parte - Criar o Título.*/
   const titulo = document.createElement("h1");
   titulo.id="titulo";
   titulo.innerText="Este é o Título do Site";
   const secoes=document.querySelector("body");
   secoes.appendChild(titulo);
   
/*segunda parte - criar um produto para venda*/
const produto = document.createElement("div");
produto.innerHTML = `
  <div>
    <h2>Produto em Destaque</h2>
    <p>Características do produto</p>
    <p id="valorPromocional">Preço Promocional R$</p>
  </div>
`;
secoes.appendChild(produto);

  