//Calculadora de nivel de imc usando funçoes!

import 'dart:io';

void main() {
  var mensagem = 'Atenção: Imc não leva em conta outros fatores e não deve ser usado de forma isolada para avaliar composição corporal.';

  double peso = pegarPeso();
  double altura = pegarAltura();
  double resultado = calcularImc(peso: peso, altura: altura);

  if (resultado < 18.5 ) {
    print('Seu imc indica que seu peso está abaixo do normal. $mensagem');
  } else if (resultado > 18.5 && resultado <= 24.9 ) {
    print('Seu imc indica que seu peso está normal. $mensagem');
  } else if (resultado > 24.9 && resultado < 30) {
    print('Seu imc indica que você está com sobrepeso. $mensagem');
  }else {
    print('Seu nivel de imc indica obesidade. $mensagem');
  }
}

double calcularImc({required double peso, required double altura}) {
  return peso / (altura * altura);
}

double pegarPeso() {
  print('Digite seu peso:');
  final String? pesoString = stdin.readLineSync();
  if (pesoString == null) {
    return 0.0;
  } else {
    return double.parse(pesoString);
  }
}

double pegarAltura() {
  print('Digite sua altura:');
  final String? alturaString = stdin.readLineSync();
  if (alturaString == null) {
    return 0.0;
  } else {
    return double.parse(alturaString);
  }
}