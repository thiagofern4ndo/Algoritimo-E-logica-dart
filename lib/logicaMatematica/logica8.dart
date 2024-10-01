import 'dart:io';

int digitalRoot(int n) {

  while (n >= 10) {

    int sum = 0;

    while (n > 0) {
     
      sum += n % 10; 
      n ~/= 10; 
    }
    n = sum; 
  }
  
 
  return n; 
}

void main() {

  print('Digite um número não negativo:');
  
  String? input = stdin.readLineSync(); 
  

  if (input != null) { 
    int? number = int.tryParse(input); 
    if (number != null && number >= 0) {
      print('A raiz digital de $number é: ${digitalRoot(number)}');
    } else {
      print('Por favor, insira um número não negativo válido.');
    }
  }
}
