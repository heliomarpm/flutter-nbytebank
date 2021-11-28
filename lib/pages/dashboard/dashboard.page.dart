import 'package:flutter/material.dart';
import 'package:nbytebank/pages/dashboard/saldo_card.dart';
import 'package:nbytebank/pages/deposito/deposito_form.page.dart';
import 'package:nbytebank/pages/transferencia/transferencia_form.page.dart';
import 'package:nbytebank/pages/transferencia/transferencia_lista.page.dart';
import 'package:nbytebank/pages/transferencia/ultimas_transferencias.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New Bytebank'),
        ),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: ListView(children: [
            const Align(
              alignment: Alignment.topCenter,
              child: SaldoCard(),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Creditar'),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DepositoFormPage(),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Transferência'),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TransferenciaFormPage(),
                    ),
                  ),
                ),
              ],
            ),
            UltimasTransferencias(),
          ]),
        ));
  }
}
