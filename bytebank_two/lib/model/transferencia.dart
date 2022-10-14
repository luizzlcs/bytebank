class Transferencia {
  final int numeroConta;
  final double valor;

  Transferencia({
    required this.numeroConta,
    required this.valor,
  });

  @override
  String toString() {
    return 'Nº da conta: $numeroConta, Valor: R\$ $valor';
  }
}
