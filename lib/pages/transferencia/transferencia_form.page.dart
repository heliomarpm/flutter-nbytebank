import 'package:flutter/material.dart';
import 'package:nbytebank/components/editor.dart';
import 'package:nbytebank/models/transferencia.model.dart';

const _tituloAppBar = 'Criando Transferência';

const _rotuloCampoValor = 'Valor';
const _dicaCampoValor = '0.00';

const _rotuloCampoNumeroConta = 'Número da conta';
const _dicaCampoNumeroConta = '0000';

const _textoBotaoConfirmar = 'Confirmar';

class TransferenciaFormPage extends StatefulWidget {
  const TransferenciaFormPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<TransferenciaFormPage> {
  final _controladorCampoNumeroConta =
      TextEditingController();
  final _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_tituloAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                 _controladorCampoNumeroConta,
                dica: _dicaCampoNumeroConta,
                rotulo: _rotuloCampoNumeroConta,
              ),
              Editor(
                _controladorCampoValor,
                dica: _dicaCampoValor,
                rotulo: _rotuloCampoValor,
                icone: Icons.monetization_on,
              ),
              ElevatedButton(
                child: const Text(_textoBotaoConfirmar),
                onPressed: () => _criaTransferencia(context),
              ),
            ],
          ),
        ));
  }

  void _criaTransferencia(BuildContext context) {
    final numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final valor = double.tryParse(_controladorCampoValor.text);
    
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = TransferenciaModel(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
