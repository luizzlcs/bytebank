import 'package:bytebank/dash_flag.dart';
import 'package:bytebank/formulario_transferencia.dart';
import 'package:bytebank/lista_transferencias.dart';
import 'package:flutter/material.dart';

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'formulario': (context) => FormularioTransferencia(),
        'dash': (context) => const DashFlag(),
      },
      home: ListaTransferencias(),
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(
          secondary: Colors.blueAccent[700],
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
    );
  }
}
