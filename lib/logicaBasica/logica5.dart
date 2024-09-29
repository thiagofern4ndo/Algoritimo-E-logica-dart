/* Algoritmo que calcula reajuste de salario,
 entre com  salario atual é % de reajuste*/

import 'dart:io';

void main() {
  print('Valor Salario mensal');
  double salarioAtual = double.parse(stdin.readLineSync()!);
  print('Valor do Reajuste');
  double percentualReajuste = double.parse(stdin.readLineSync()!);

  double valorReajuste = salarioAtual * (percentualReajuste / 100);

  double salarioReajustado = salarioAtual + valorReajuste;

  print('valor do Salario reajustado $salarioReajustado');
}
