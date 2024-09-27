import 'dart:io';

void main () {
  /* Algoritmo que calcula valor final de salario levando em consideração valor de salario, comissão e bonus */

  print('Digite Salario Fixo');
  double salario = double.parse(stdin.readLineSync()!);

    print('Digite quantidade vendida');
  double quantidade = double.parse(stdin.readLineSync()!);

  double valorTotalvendas = 0;

for (var i = 1; i <= quantidade; i++) {
   print('Digite o valor da venda $i');
   double valorVenda = double.parse(stdin.readLineSync()!); 
valorTotalvendas += valorVenda;
}

  print('Digite Bonus Fixo por unidade vendida');
  double bonus = double.parse(stdin.readLineSync()!);

    print('Digite % de comissão sobre valor total');
  double comissao = double.parse(stdin.readLineSync()!);


  double salarioFinal = ((valorTotalvendas / 100) * comissao ) + quantidade * bonus + salario;

  print('O valor que deve ser pago é $salarioFinal');


}