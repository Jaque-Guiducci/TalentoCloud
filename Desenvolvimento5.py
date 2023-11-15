def calculadora(op):
    res = 0;
    if op == 0:
      print("Programa Finalizado");
    while (op != 0):
      try:
        print("Digite o primeiro número:");
        numero1 = int(input());
        print("Digite o segundo número:");
        numero2 = int(input());
        if (op==1):
          res = numero1+numero2;
        elif (op == 2):
          res = numero1-numero2;
        elif (op == 3):
          res = numero1*numero2;
        elif (op == 4):
          res = numero1/numero2;
        print("O resultado da operação é:", res);
        print("Digite uma opção:");
        print("1 - soma, 2 - subtração, 3 - multiplicação, 4 - divisão ou 0 - sair");
        op = int(input());
      except:
        print("Digite uma opção Válida");
        print("1 - soma, 2 - subtração, 3 - multiplicação, 4 - divisão ou 0 - sair");
        input(op);
        
      return()

print("Digite uma opção:");
print("1 - soma, 2 - subtração, 3 - multiplicação, 4 - divisão ou 0 - sair");
try:
  op = int(input());
  algo = calculadora(op);
except:
  print("Digite uma opção válida:");
  print("1 - soma, 2 - subtração, 3 - multiplicação, 4 - divisão ou 0 - sair");
  op = int(input());
  algo = calculadora(op);