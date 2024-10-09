void main() {
  List<Map<String, dynamic>> livrariaShopping = [
    {'titulo': 'JavaScript', 'preco': 25},
    {'titulo': 'PHP', 'preco': 15},
    {'titulo': 'Java', 'preco': 30},
    {'titulo': 'Elixir', 'preco': 50},
    {'titulo': 'Go', 'preco': 45},
    {'titulo': 'Python', 'preco': 20},
  ];

  ordenarLista(livrariaShopping);

  List<Map<String, dynamic>> livrariaCentro = [
    {'titulo': 'C#', 'preco': 13},
    {'titulo': 'Flutter', 'preco': 37},
    {'titulo': 'Angular', 'preco': 32},
    {'titulo': 'React', 'preco': 22},
    {'titulo': 'Node', 'preco': 65},
    {'titulo': 'Vue', 'preco': 66},
  ];

  ordenarLista(livrariaCentro);

  var livrariaOnline = juntarListas(livrariaShopping, livrariaCentro);
 for (var listaCompletaDeLivros in livrariaOnline) {

print(listaCompletaDeLivros);

 }
}

void ordenarLista(List<Map<String, dynamic>> lista) {
  for (var indiceAtual = 0; indiceAtual < lista.length; indiceAtual++) {
    var menorValorLista = maisBarato(lista, indiceAtual);

    var livroAtual = lista[indiceAtual];
    var livroMenorPreco = lista[menorValorLista];

    lista[indiceAtual] = livroMenorPreco;
    lista[menorValorLista] = livroAtual;
  }
}

List<Map<String, dynamic>> juntarListas(
    List<Map<String, dynamic>> livrariaShopping, List<Map<String, dynamic>> livrariaCentro) {
  List<Map<String, dynamic>> livrariaOnline = [];
  var atualShopping = 0;
  var atualCentro = 0;

  while (atualShopping < livrariaShopping.length &&
      atualCentro < livrariaCentro.length) {
    var livrosShopping = livrariaShopping[atualShopping];
    var livrosCentro = livrariaCentro[atualCentro];

    if (livrosShopping['preco'] < livrosCentro['preco']) {
      livrariaOnline.add(livrosShopping);
      atualShopping++;
    } else {
      livrariaOnline.add(livrosCentro);
      atualCentro++;
    }
  }


  while (atualShopping < livrariaShopping.length) {
    livrariaOnline.add(livrariaShopping[atualShopping]);
    atualShopping++;
  }

  
  while (atualCentro < livrariaCentro.length) {
    livrariaOnline.add(livrariaCentro[atualCentro]);
    atualCentro++;
  }

  return livrariaOnline;
}

int maisBarato(List<Map<String, dynamic>> listaLivros, int posicaoInicial) {
  var livroMaisBarato = posicaoInicial;

  for (var posicaoAtual = posicaoInicial; posicaoAtual < listaLivros.length; posicaoAtual++) {
    if (listaLivros[posicaoAtual]['preco'] < listaLivros[livroMaisBarato]['preco']) {
      livroMaisBarato = posicaoAtual;
    }
  }

  return livroMaisBarato;
}
