import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:nbytebank/models/saldo.model.dart';
import 'package:nbytebank/models/transferencias.model.dart';
import 'package:nbytebank/pages/dashboard/dashboard.page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => SaldoModel(0)),
      ChangeNotifierProvider(create: (context) => TransferenciasModel()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New ByteBank',
      theme: ThemeData(
        // primaryColor: Colors.green[900],
        // accentColor: Colors.blueAccent[700],
        // buttonTheme: ButtonThemeData(
        //   buttonColor: Colors.blueAccent[700],
        //   textTheme: ButtonTextTheme.primary,
        // ),
        primarySwatch: Colors.green,
      ),
      home: const DashboardPage(),
    );
  }
}
