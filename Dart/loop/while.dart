main() {
  bool condicao = true;
  int x = 0;

  while (condicao) {
    print('Oi $x');
    if (x > 9) {
      condicao = false;
    }
    x++;
  }
}
