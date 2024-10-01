import 'dart:io';

//Algoritimo que calcula notas de alunos

void main() {
  List<double> notas = [];
print('Digite o Nome do Aluno');
  String nome  = stdin.readLineSync()!;

  for (int i = 1; i <= 3; i++) {
    stdout.write('Digite a nota na avaliação numero $i: ');
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);
  }

  double media = notas.reduce((a, b) => a + b) / notas.length;

  print('\nNome do aluno: $nome');
  print('E a media obtida é: $media');

  if (media >= 7) {
    print('Situação: Aprovado');
  } else if (media >= 5) {
    print('Situação: Em recuperação');
  } else {
    print('Situação: Reprovado');
  }
}