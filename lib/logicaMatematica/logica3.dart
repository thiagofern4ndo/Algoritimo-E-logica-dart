/* Alrotitmo que leia idade de uma pessoa, expressa em anos
meses e dias e escreva a idade dessa expressa em dias
Considere que o ano tem 365 dias e o mes 30 dias */

import 'dart:io';

void main (){

  print('Digite quantos anos você tem');
  int anos = int.parse(stdin.readLineSync()!);
  print('Digite em que mes nós estamos de 1 a 12');
  int meses = int.parse(stdin.readLineSync()!);
  print('Digite qual dia do mes é de 1 a 30');
  int dias = int.parse(stdin.readLineSync()!);

  int idade;

  idade = (anos* 365) + (meses * 30 + dias);

  print('Você já viveu  $idade dias!');

  




}