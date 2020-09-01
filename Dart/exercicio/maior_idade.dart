import 'dart:io'; //entrada

main() {
  //qual sua idade?
  //entrada
  print("Digite sua idade: ");
  var input = stdin.readLineSync();
  var idade = int.parse(input);

  //se idade >= 18 maior de idade
  if (idade >= 50) {
    print("Você é mais velho");
  } else if (idade >= 18) {
    print("Você é adulto");
  } else if (idade >= 15) {
    print("Você é adolescente");
  } else {
    print("Você é criança");
  }
}
