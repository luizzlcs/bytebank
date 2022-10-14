class Pessoa {
  final String nome;
  final int idade;
  final String sexo;

  Pessoa({required this.nome, required this.idade, required this.sexo});

  @override
  String toString() {
    return '$nome $idade $sexo';
  }
}
