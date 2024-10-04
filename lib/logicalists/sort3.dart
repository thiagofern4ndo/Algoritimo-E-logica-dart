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
  var analise = atual;
  while (analise > 0 && livros[analise]['preco'] < livros[analise -1]['preco']) {
    var livroAnalise = livros[analise];
    var livroAnterior = livros[analise - 1];
    livros[analise] = livroAnterior;
    livros[analise -1] = livroAnalise;
    analise--;
  }
}

print(livros);





}
