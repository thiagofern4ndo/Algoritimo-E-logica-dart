// Importa a biblioteca dart:io para permitir a leitura de entrada do terminal
import 'dart:io';

// Função que calcula a raiz digital de um número inteiro
int digitalRoot(int n) {
  // Enquanto n tiver mais de um dígito (ou seja, for maior ou igual a 10)
  while (n >= 10) {
    // Inicializa uma variável para armazenar a soma dos dígitos
    int sum = 0;

    // Loop para calcular a soma dos dígitos do número
    while (n > 0) {
      // Adiciona o último dígito de n à soma
      sum += n % 10; // O operador % retorna o resto da divisão por 10 (último dígito)

      // Remove o último dígito de n usando a divisão inteira
      n ~/= 10; // O operador ~/ realiza a divisão inteira
    }

    // Atualiza n com a soma dos dígitos calculada
    n = sum; // Agora, n se torna a soma dos dígitos
  }
  
  // Retorna o resultado final, que é um único dígito
  return n; // Quando o loop terminar, n terá um único dígito
}

void main() {
  // Exibe uma mensagem solicitando ao usuário que digite um número
  print('Digite um número não negativo:');
  
  // Lê a entrada do usuário do terminal
  String? input = stdin.readLineSync(); // Lê uma linha de entrada como string
  
  // Tenta converter a entrada do usuário para um inteiro
  if (input != null) { // Verifica se a entrada não é nula
    int? number = int.tryParse(input); // Tenta converter a string para um inteiro

    // Verifica se a conversão foi bem-sucedida e se o número é não negativo
    if (number != null && number >= 0) {
      // Chama a função digitalRoot e exibe o resultado
      print('A raiz digital de $number é: ${digitalRoot(number)}');
    } else {
      // Exibe uma mensagem de erro se a entrada não for válida
      print('Por favor, insira um número não negativo válido.');
    }
  }
}
