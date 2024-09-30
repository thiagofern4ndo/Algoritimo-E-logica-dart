import 'dart:io';

void main() {
  List<double> notas = [];

  for (int i = 1; i <= 4; i++) {
    stdout.write('Digite a nota $i: ');
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);
  }

  double media = notas.reduce((a, b) => a + b) / notas.length;

  print('\nA média do aluno é: $media');

  if (media >= 7) {
    print('Situação: Aprovado');
  } else if (media >= 5) {
    print('Situação: Em recuperação');
  } else {
    print('Situação: Reprovado');
  }
}