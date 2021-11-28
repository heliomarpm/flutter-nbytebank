import 'package:flutter/material.dart';
import 'package:nbytebank/pages/dashboard/saldo_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Bytebank'),
      ),
      body: const Align(
        alignment: Alignment.topCenter,
        child: SaldoCard(),
      ),
    );
  }
}
