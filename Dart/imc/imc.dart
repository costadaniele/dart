import 'dart:io';

main() {
  print("Digite seu peso: ");
  var entradaPeso = stdin.readLineSync();
  var peso = double.parse(entradaPeso);

  print("Digite sua altura: ");
  var entradaAltura = stdin.readLineSync();
  var altura = double.parse(entradaAltura);

  var imc = peso / (altura * altura);

  print(imc);

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
