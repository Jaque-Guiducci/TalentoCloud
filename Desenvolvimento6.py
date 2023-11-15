"""Desenvolva um programa que recebe do usuário nome completo e ano de nascimento que seja entre 1922 e 2021.
A partir dessas informações, o sistema mostrará o nome do usuário e a idade que completou, ou completará, no ano atual (2022).
Caso o usuário não digite um número ou apareça um inválido no campo do ano, o sistema informará o erro e continuará perguntando até que
um valor correto seja preenchido.
Trabalhe esse código em seu IDE, suba ele para sua conta no GitHub e compartilhe o link desse projeto no campo ao lado para que outros desenvolvedores 
possam analisá-lo.
"""
executar = True;

def calculaIdade(nome, ano):
  if (ano<1922) or (ano>2021):    
    print("O ano deve estar entre 1922 e 2021");
    executar = True;
        
  else:
    idade = 2022 - ano;
    print("A idade de ", nome, "em 2022 é (ou será)", idade,"anos");
    executar = False;
  return (executar)

print("Digite seu nome:");
nome=input();

while executar==True:
  print("Digite o ano do seu nascimento (entre 1922 e 2021):");
  try:
    ano=int(input());
  except:
    print("O ano deve ser um valor numérico");
  executar = calculaIdade(nome, ano);