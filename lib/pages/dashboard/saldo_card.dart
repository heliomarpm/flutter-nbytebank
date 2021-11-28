import 'package:flutter/material.dart';
import 'package:nbytebank/models/saldo.dart';
import 'package:provider/provider.dart';

class SaldoCard extends StatelessWidget {

  const SaldoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Consumer<SaldoModel>(
          builder: (context, valor, child) {
            return Text(
              valor.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
    );
  }
}
