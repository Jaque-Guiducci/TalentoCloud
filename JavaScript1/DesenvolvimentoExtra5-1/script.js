/*<!--Crie um projeto com dois arquivos: index.html e script.js. No arquivo 'index' insira a estrutura base HTML
     e dentro da tag 'body' inclua quatro tags vazias: h1, ul, a, ol. Adicione o atributo id="titulo" à tag h1,
     o atributo href="https://prozeducacao.com.br" à tag 'a', e o atributo id="lista-ordenada" à tag 'ol'. 
     Na sequência, realize a conexão entre o arquivo HTML e o arquivo JavaScript.No arquivo script.js capture 
     os quatro elementos criados, e use a propriedade .innerText para adicionar conteúdo textual aos elementos
     'h1' e 'a', e a propriedade .innerHTML para adicionar três itens simples na lista não ordenada, e três 
     itens com links para outros sites na lista ordenada.  -->*/

const elementoH1 = document.querySelector("h1");
elementoH1.innerText = "TalentoCloud";
console.log(elementoH1);
const elementA = document.querySelector("a");
elementA.innerText = "https://prozeducacao.com.br";
console.log(elementA);
const elementLista = document.querySelector("ul");
elementLista.innerHTML = `
<ul>
<li>Inicio</li>
<li>Conteúdo</li>
<li>Contato</li>
</ul>
`
console.log(elementLista);
const elementListO = document.querySelector("ol");
elementListO.innerHTML = `
<ol>
<li>Elemento Um</li>
<li>Elemento Dois</li>
<li>Elemento Três</li>
</ol>
`