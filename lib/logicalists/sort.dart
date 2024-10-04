//Manipulando Arrays com chave e valor para encontrar item com menor preço
void main (){
  List<Map<String, int>> iFood = [
    {'marmita' : 28}, // 0
    {'pizza' : 85}, //1
    {'pastel' : 20}, // 2
    {'Hamburguer' : 43}, //3
    {'sushi' : 109}, //4
    {'açai' : 21}, // 5
  ];

  var itemMaisBarato = 0;

  for (var atualMaisBarato = 0;  atualMaisBarato < iFood.length; atualMaisBarato++) {
    if (iFood[atualMaisBarato].values.first < iFood[itemMaisBarato].values.first) {
      itemMaisBarato = atualMaisBarato;
    } 
  }

  print('O item mais barato da lista é ${iFood[itemMaisBarato].keys.first} e seu  preço é ${iFood[itemMaisBarato].values.first} reais');
  
}  