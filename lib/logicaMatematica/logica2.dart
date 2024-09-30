//Algoritmo que calcula as dimenssoes de um retangulo com base nas entradas do usuario.
import 'dart:io';

void main (){
  print('Digite Largura');
  double base = double.parse(stdin.readLineSync()!);
  print('Digite Altura');
  double altura = double.parse(stdin.readLineSync()!);
  double area = base*altura;

  print('A area do retângulo é $area');


}