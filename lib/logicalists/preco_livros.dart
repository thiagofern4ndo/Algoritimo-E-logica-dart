//Algoritmo que ordena um item da lista pelo de menor valor
void main (){
  List precoLivros = <int>  [25, 15, 30, 50, 45, 20];

  var livroMaisBarato = 0;

  for (var atual = 0; atual < precoLivros.length; atual++) {
if (precoLivros[atual]< precoLivros[livroMaisBarato]) {
  livroMaisBarato = atual;
   }
  }
   print(precoLivros[livroMaisBarato]);
}