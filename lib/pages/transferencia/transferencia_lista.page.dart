import 'package:flutter/material.dart';
import 'package:nbytebank/models/transferencia.model.dart';
import 'package:nbytebank/models/transferencias.model.dart';
import 'package:nbytebank/pages/transferencia/transferencia_form.page.dart';
import 'package:provider/provider.dart';

const _tituloAppBar = 'Transferências';

class TransferenciaListaPage extends StatelessWidget {
  const TransferenciaListaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_tituloAppBar),
      ),
      body: Consumer<TransferenciasModel>(builder: (context, model, child) {
        return ListView.builder(
          itemCount: model.transferencias.length,
          itemBuilder: (context, indice) {
            final transferencia = model.transferencias[indice];
            return ItemTransferencia(transferencia);
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransferenciaFormPage();
          }));
        },
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final TransferenciaModel _transferencia;

  const ItemTransferencia(this._transferencia, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(_transferencia.toStringValor()),
        subtitle: Text(_transferencia.toStringConta()),
      ),
    );
  }
}
