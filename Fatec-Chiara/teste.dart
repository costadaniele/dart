// classe é declaração
class Pessoa {
  String nome;
  String sexo;
  int idade;

  // atributos recebendo parâmetro
  Pessoa({this.nome, this.sexo, this.idade});
}

// instância
void main() {
  Pessoa p = Pessoa(nome: "Daniele", sexo: "F", idade: 29);
  Pessoa p2 = new Pessoa(idade: 18, nome: "Maria", sexo: "F");
  Pessoa p3 = new Pessoa(idade: 24, nome: "Fernanda", sexo: "F");

  print(p2.nome);
  print(p3.nome);
  print("Dados: Nome: ${p.nome}, sexo: ${p.sexo}, idade: ${p.idade}");
}
