"""
Desenvolvimento 3
Precisamos imprimir um número para cada andar de um hotel de 20 andares. Porém, o dono do hotel é supersticioso e optou por não ter um 13ro andar.

Escreva um código que imprima todos os números exceto o número 13.
Escreva mais um código que resolva o mesmo problema, mas dessa vez usando o laço de repetição 'while'.

Como desafio, imprima eles em ordem decrescente (20, 19, 18...)

"""
""" escrevendo os números, exceto o número 13, com for """

for ap in range (1, 21): 
    if ap == 13:
        continue;
    else:
        print(ap);

""" Usando o while"""
cont = 1;
while (cont <= 20):
    if (cont == 13):
        cont += 1;
        continue;
    else:
      print (cont);
    cont += 1;

""" em ordem decrescente """
cont = 20;
while (cont >= 1):
    if (cont == 13):
        cont -= 1;
        continue;
    else:
      print (cont);
    cont -= 1;