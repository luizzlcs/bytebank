import 'package:flutter/material.dart';

import '../model/transferencia.dart';

class ItemTransferencia extends StatelessWidget {
  Transferencia _transferencia;

  ItemTransferencia({required Transferencia transferencia})
      : _transferencia = transferencia;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
        trailing: Icon(Icons.monetization_on_rounded),
        iconColor: Colors.green,
        leading: FlutterLogo(
          size: 56,
        ),
      ),
    );
  }
}
