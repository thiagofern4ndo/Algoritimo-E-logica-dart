
//Algoritmo que encontra menor valor usando o menotodo forEach
void main() {
  var produtos = <int> [40, 50, 10, 20, 30];

  var valorInicial = produtos[0]; 
  
  for (var element in produtos) {
    if (element < valorInicial) {
      valorInicial = element; 
    }
  }

  print('O menor valor da lista é: $valorInicial');
}