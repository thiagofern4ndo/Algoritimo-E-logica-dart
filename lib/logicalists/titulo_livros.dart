
//Algoritimo manipulando list e map, para encontrar menor valor e exibir na tela titulo e preço
//comentario, para a classe principal, função para fazer uma unica coisa


void main () {

List<Map<String, dynamic>> livros = [
{'titulo': 'JavaScript', 'preco': 25},
{'titulo': 'PHP', 'preco': 15},
{'titulo': 'Java', 'preco': 30},
{'titulo': 'Elixir', 'preco': 50},
{'titulo': 'Go', 'preco': 45},
{'titulo': 'Python', 'preco': 20},
];

var tituloMaisBarato = 0;

for (var atual = 0; atual  < livros.length; atual++) {
  if (livros[atual]['preco'] < livros[tituloMaisBarato]['preco']) {
    tituloMaisBarato = atual;
  }
 }

     print('O livro mais barato é ${livros [tituloMaisBarato]['titulo']} e seu preço é ${livros [tituloMaisBarato]['preco']}');
}
