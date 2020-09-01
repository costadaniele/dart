//Exemplo 1
main() {
  List n = [1, 2, 3, 4, 5];
  print(n);

  //números um embaixo do outro
  for (var e in n) {
    print(e);
  }

  //números adicionados
  n.add(6);
  n.add(3.5);
  print(n);
  //tamanho da lista
  print(n.length);
}
