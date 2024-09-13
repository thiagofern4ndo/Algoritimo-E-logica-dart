import 'dart:io';
// Algoritmo que o usuario entra com um valor e mostra seu antecessor.
void main (){
  print('Digite um numero');
  int numero = int.parse(stdin.readLineSync()!);
  print ('o antecessor desse numero é  ${numero-1}');

}
void main1 (){
  print('Digite um numero');
  int numero1 = int.parse(stdin.readLineSync()!);
  print ('O antecessor desse numero é ${numero1-1}');
}