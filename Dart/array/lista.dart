main() {
  /* tipagem
  var nome = ['Thor', 'Bigodinho', 'Maria'];*/
  List<String> nome = ['Thor', 'Bigodinho', 'Maria'];

  nome.add('Daniele');

  print(nome.length); //tamanho
  print(nome); // printa os nomes
  print(nome[3]); //escolher na lista
  nome.remove('Bigodinho'); //remove o nome
  print(nome);
  nome.removeAt(0); //remove a posição
  print(nome);
}
