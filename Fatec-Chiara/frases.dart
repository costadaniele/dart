//import para rodar o random
import 'dart:math';

void main() {
  //lista de frases
  var frase = [
    "A longa jornada até o fim de um capítulo começa com um pequeno passo para o primeiro parágrafo.",
    "Tudo o que se pode fazer com facilidade também deve ser feito com dedicação",
    "Todos nós temos talento em alguma área. Basta descobrir qual.",
    "Experiência é o nome que damos aos nossos erros!",
    "Se você fizer o que sempre fez, receberá o que sempre recebeu.",
    "Nada supera a gentileza. Ser gentil é que é ser forte de fato",
    "O ponto de vista correto para tentar resolver um problema é o ponto de interrogação",
    "Um erro de julgamento pode ser tolerado quando se deixa a razão livre para combatê-lo",
    "Levanta, sacode a poeira, dá a volta por cima.",
    "Nem todos os dias são bons, mas há algo bom em cada dia."
  ];

  // adicionando mais frases
  frase.add('Não é falta de café, nem tequila, é meu código que não compila.');
  frase.add('Não trate como constante, quem te trata como variável.');

  Random random = Random();
  int aleatorio = random.nextInt(12);
  print('Frase do dia:\n${frase[aleatorio]}');
}
