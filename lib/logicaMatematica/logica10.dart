import 'dart:io';

void main () {

int? valor1 = int.tryParse(stdin.readLineSync()!);
int? valor2 = int.tryParse(stdin.readLineSync()!);

if (valor1! > valor2!) {
  print('$valor1 é maior que valor2');
}else {
  print('$valor2 é maior que valor1');
}
}