import 'package:flutter/material.dart';
import 'package:nbytebank/models/saldo.dart';
import 'package:nbytebank/pages/dashboard/dashboard.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SaldoModel(0),
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
        primaryColor: Colors.green[900],
        // accentColor: Colors.blueAccent[700],
        // buttonTheme: ButtonThemeData(
        //   buttonColor: Colors.blueAccent[700],
        //   textTheme: ButtonTextTheme.primary,
        // ),
        primarySwatch: Colors.blue,
      ),
      home: const Dashboard(),
    );
  }
}
