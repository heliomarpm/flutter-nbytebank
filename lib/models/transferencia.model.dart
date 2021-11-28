class TransferenciaModel {
  final double valor;
  final int numeroConta;

  TransferenciaModel(
    this.valor,
    this.numeroConta,
  );

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroConta: $numeroConta}';
  }
}