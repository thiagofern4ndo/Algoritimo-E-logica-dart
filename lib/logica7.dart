import 'dart:io';

void main () {
  /*Algoritmo que calcula media de notas levando em consideração peso de cada 
  nota para calcular a media final, no exemplo medias tem valor 2,3 e 5, respectivamente 
  e mostre se ele foi aprovado ou reprovado considerando nota 7 com minimo para aprovação*/

   print('Digite a 1º nota do aluno ');
   double primeraNota = double.parse(stdin.readLineSync()!);

    print('Digite a 2º nota do aluno ');
   double segundaNota = double.parse(stdin.readLineSync()!);

    print('Digite a 3º nota do aluno ');
   double terceiraNota = double.parse(stdin.readLineSync()!);


   var mediaFinal = ((primeraNota * 2) + (segundaNota * 3) + (terceiraNota * 5)) / 10;


   print('A média final do Aluno é $mediaFinal');

   if (mediaFinal >= 7) {
    print('Parabéns Você foi Aprovado');     
   } else {
    print('Você Foi reprovado sua media ficou abaixo de 7');
   }
}