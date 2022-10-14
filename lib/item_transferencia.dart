import 'package:flutter/material.dart';
import 'package:bytebank/transferencia.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia transferencia;

  ItemTransferencia({required this.transferencia});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const FlutterLogo(
          size: 40,
          duration: Duration(seconds: 1),
        ),
        title: Text(transferencia.valor.toString()),
        subtitle: Text('${transferencia.numeroConta}'),
        trailing: const Icon(Icons.monetization_on_outlined),
      ),
    );
  }
}
