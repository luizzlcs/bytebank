import 'package:bytebank_two/view/form_transferencia.dart';
import 'package:bytebank_two/view/lista_transferencia.dart';
import 'package:flutter/material.dart';

class BytebanckTwo extends StatelessWidget {
  const BytebanckTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaTransferencia(),
      routes: {
        'formTransferencia': (context) => FormTransferencia(),
      },
    );
  }
}
