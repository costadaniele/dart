import 'dart:math';

main() {
  //lista vazia
  List n = [];
  n.clear();
  int r = 0;
  for (int i = 0; i < 20; i++) {
    r = Random().nextInt(50);
    n.add(r);
  }
  print(n);
  n.sort();
  print(n.first);
  print(n.last);
}
