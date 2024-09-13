/* Algoritmo que calcula % de votos validos, brancos e nulos
  */
import 'dart:io';

void main() {
  print('Digite o numero de eleitores votantes');
  int votosTotais = int.parse(stdin.readLineSync()!);
  print('digite o numero de votos validos');
  int votosValidos = int.parse(stdin.readLineSync()!);
  print('digite o numero de votos Nulos');
  int votosNulos = int.parse(stdin.readLineSync()!);
  print('digite o numero de votos em branco');
  int votosBranco = int.parse(stdin.readLineSync()!);

  double votosValidosPorcentagem = (votosValidos / votosTotais) * 100;
  double votosNulosPorcentagem = (votosNulos / votosTotais) * 100;
  double votosBrancoPorcentagem = (votosBranco / votosTotais) * 100;

  print(
      'A % de votos validos é $votosValidosPorcentagem%, a % votos em branco é $votosBrancoPorcentagem%  e a % de votos nulos é $votosNulosPorcentagem%');
}
