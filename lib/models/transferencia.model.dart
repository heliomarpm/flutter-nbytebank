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

  String toStringValor() {
    return 'R\$ ${valor.toStringAsFixed(2)}';
  }

  String toStringConta() {
    return 'Conta $numeroConta';
  }
}
