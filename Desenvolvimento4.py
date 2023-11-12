"""Faça uma função calculadora de dois números com três parâmetros:
 os dois primeiros serão os números da operação e o terceiro será a entrada que definirá a operação a 
 ser executada. Considera a seguinte definição:

1. Soma
2. Subtração
3. Multiplicação
4. Divisão

Caso seja inserido um número de operação que não exista, o resultado deverá ser 0.
"""

def calculadora(numero1, numero2, op):
    res = 0;
    if (op==1): 
        res = numero1+numero2;
    elif (op == 2): 
        res = numero1-numero2;
    elif (op == 3):
        res = numero1*numero2;
    elif (op == 4):
        res = numero1/numero2;
    else: print("Opção inválida");
    return(res)

print("Digite o primeiro número:");
numero1 = int(input());
print("Digite o segundo número:");
numero2 = int(input());
print("Digite o número da operação que deseja fazer:");
print("1 - soma, 2 - subtração, 3 - multiplicação ou 4 - divisão")
op = int(input());

res = calculadora(numero1, numero2, op);
print("O resultado da operação é:", res);