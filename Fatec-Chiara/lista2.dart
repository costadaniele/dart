main() {
  print('Operando listas');
  List mlista = [1, 3, 4, 11, 33];
  print(mlista);

  //adicionar
  mlista.add(9);
  print(mlista);

  //ordenar
  mlista.sort();
  print(mlista);

  var lista2 = List();
  lista2.add(4);
  print(lista2);
  print('tamanho:' + lista2.length.toString());
  print('primeiro:' + lista2.first.toString());

  //lista vazia?
  print(mlista.isEmpty);
  //lista não vazia
  print(mlista.isNotEmpty);

  //(posição na lista, número inserido)
  mlista.insert(3, 9);
  print('elemento inserido: ${mlista[3]}');
  print(mlista);
}
