class Pessoa {
  String nome;
  String sexo;
  int idade;
  //Primeira opção
  /*Pessoa(String nome, String sexo, int idade) {
    this.nome = nome;
    this.sexo = sexo;
    this.idade = idade;
    
    }

  forma resumida
  Pessoa(this.nome, this.sexo, this.idade);*/

  //Segunda opção - parâmetros não precisam ser posicionais - coloca-se as chaves
  Pessoa({this.nome, this.sexo, this.idade});
}

void main() {
  //Primeira opção, nessa opção o posicionamento ***importa
  /* Pessoa p = Pessoa(nome: 'José', 'M', 34);
  Pessoa p2 = new Pessoa('Pedro', 'M', 25);
  Pessoa p3 = new Pessoa('Maria', 'F', 23); */

  // Segunda opção, nessa opção você não fica presa ao posicionamento dos elementos
  Pessoa p = Pessoa(nome: 'José', sexo: 'M', idade: 24);
  Pessoa p2 = new Pessoa(nome: 'Pedro', sexo: 'M', idade: 25);
  Pessoa p3 = new Pessoa(nome: 'Maria', sexo: 'F', idade: 24);

  //Print
  print(p.nome); //imprime José
  print(p2.idade); //imprime 25
  //imprime todos os dados da Maria
  print('Dados da ${p3.nome} , ${p3.sexo} , ${p3.idade}');
}
