//Nesse arquivo, seguindo uma logica de complexidade, temos um algoritmo que ordena todos os items da lista por preço.
void main () {
List<Map<String, dynamic>> livros = [
{'titulo': 'JavaScript', 'preco': 25},
{'titulo': 'PHP', 'preco': 15},
{'titulo': 'Java', 'preco': 30},
{'titulo': 'Elixir', 'preco': 50},
{'titulo': 'Go', 'preco': 45},
{'titulo': 'Python', 'preco': 20},
];

for (var atual = 0; atual < livros.length; atual++) {
  var menorValoLista = menorValor(livros, atual);
   
  var livroAtual = livros[atual]; 
print('livro Atual $livroAtual');
  var livroMenorPreco = livros[menorValoLista]; 
print('livro menor preço $livroMenorPreco');
  livros[atual] = livroMenorPreco;
  livros[menorValoLista] = livroAtual; 
}

print(livros);

}

int menorValor (List<Map<String, dynamic>> listaLivros, int posicaoInicial) {
  var maisBarato = posicaoInicial;

  for (var posicaoAtual = posicaoInicial; posicaoAtual < listaLivros.length; posicaoAtual++) {
    if(listaLivros[posicaoAtual]['preco'] < listaLivros[maisBarato]['preco']) {
      maisBarato = posicaoAtual;
    }
  }

  return maisBarato;
} 