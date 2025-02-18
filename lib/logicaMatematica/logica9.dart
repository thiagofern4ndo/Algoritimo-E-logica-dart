import 'dart:io';

void main () {

print('Digite um Valor');
  int? valor = int.tryParse(stdin.readLineSync()!);

  if (valor! >=  0) {
    print('Numero Positivo');
  } else {
    print('Numero negativo');
  }
}