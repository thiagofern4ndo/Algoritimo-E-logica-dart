//Ultilizando metodo contains para verificar a a existencia de algo na lista

void main (){
  var produtos = <int> [40, 50, 10, 20, 30];
  var procurando = 10;

  if (produtos.contains(procurando)) {

    print('Sim, contem o valor $procurando');
  }else {
    print('O Valor $procurando não foi encontrnado');
  }
} 