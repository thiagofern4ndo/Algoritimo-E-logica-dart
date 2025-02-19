import 'dart:io';

void main() {
  double? nota1 = double.tryParse(stdin.readLineSync()!);
  double? nota2 = double.tryParse(stdin.readLineSync()!);

  double? mediaNotas = (nota1! + nota2!) / 2;

  if (nota1 != null && nota2 != null) {
    double mediaNotas = (nota1 + nota2) / 2;
    print('Media: $mediaNotas');
  } else {
    print('Erro: Digite números válidos.');
  }

  if (mediaNotas >= 7) {
    print('Aluno Aprovado');
  } else {
    print('Aluno Reprovado');
  }
}
