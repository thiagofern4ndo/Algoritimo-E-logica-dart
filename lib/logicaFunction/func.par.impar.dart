//Função que identifica se o numero é par ou impar

import 'dart:io';

identificarParOuImpar(int numero) {
  if (numero % 2 == 0) {
    print("$numero é par.");
  } else {
    print("$numero é impar.");
  }
}

void main () {
  print ("Digite um número:");
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    int? numero = int.tryParse(entrada);

    if (numero != null)  {
      identificarParOuImpar(numero);

    } else {
      print ("Por favor, insira um número válido.");
    }
  } else  {
    print ("nenhuma entrada fornecida.");
  }
}