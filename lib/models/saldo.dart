import 'package:flutter/cupertino.dart';

class SaldoModel extends ChangeNotifier{
  final double valor;
  
  SaldoModel(
    this.valor,
  );
  
  @override
  String toString() => 'R\$ $valor';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SaldoModel &&
      other.valor == valor;
  }

  @override
  int get hashCode => valor.hashCode;
}
