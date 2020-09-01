import 'dart:io';

//função principal
main() {
  //escopo global
  calculoImc();
}

calculoImc() {
  //escopo local
  print("Digite seu peso: ");
  String entradaPeso = stdin.readLineSync();
  double peso = double.parse(entradaPeso);

  print("Digite sua altura: ");
  String entradaAltura = stdin.readLineSync();
  double altura = double.parse(entradaAltura);

  double imc = calcImc(peso, altura);

  imprimirResultado(imc); //parâmetro
}

//método
double calcImc(double peso, double altura) {
  return peso / (altura * altura);
}

//escopo
imprimirResultado(double imc) {
  //função recebendo um parâmetro
  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc > 18.5 && imc < 24.9) {
    print('Peso normal');
  } else if (imc > 25 && imc < 29.9) {
    print("Sobrepeso");
  } else if (imc > 30 && imc < 34.9) {
    print("Obesidade grau 1");
  } else if (imc > 35 && imc < 39.9) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }
}
