import 'package:flutter/material.dart';
import 'package:nbytebank/models/transferencia.model.dart';
import 'package:nbytebank/pages/transferencia/transferencia_form.page.dart';

const _tituloAppBar = 'Transferências';

class TransferenciaListaPage extends StatefulWidget {
  final List<TransferenciaModel> _transferencias = [];

  TransferenciaListaPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TransferenciaListaPageState();
  }
}

class TransferenciaListaPageState extends State<TransferenciaListaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_tituloAppBar),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const TransferenciaFormPage();
          })).then(
            (transferenciaRecebida) => _atualiza(transferenciaRecebida),
          );
        },
      ),
    );
  }

  void _atualiza(TransferenciaModel transferenciaRecebida) {
    if (transferenciaRecebida != null) {
      setState(() {
        widget._transferencias.add(transferenciaRecebida);
      });
    }
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
      title: Text(_transferencia.valor.toString()),
      subtitle: Text(_transferencia.numeroConta.toString()),
    ));
  }
}
