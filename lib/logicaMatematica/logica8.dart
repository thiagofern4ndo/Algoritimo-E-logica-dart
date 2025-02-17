import 'dart:io';

void main () {

print('Digite um Numero');
  int? valor = int.tryParse(stdin.readLineSync()!);

  if (valor! > 10) {
print("O Valor é maior que 10");
  } else { 
    print("O Valor é menor que 10");
  }
}
