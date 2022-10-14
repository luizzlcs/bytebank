import 'package:bytebank/item_transferencia.dart';
import 'package:bytebank/transferencia.dart';
import 'package:flutter/material.dart';

import 'formulario_transferencia.dart';

class ListaTransferencias extends StatefulWidget {
  @override
  State<ListaTransferencias> createState() => _ListaTransferenciasState();
}

class _ListaTransferenciasState extends State<ListaTransferencias> {
  List<Transferencia> _transferencias = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferência'),
      ),
      body: ListView.builder(
        itemCount: _transferencias.length,
        itemBuilder: (context, index) {
          final transferencia = _transferencias[index];

          return ItemTransferencia(transferencia: transferencia);
        },
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transferencia?> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormularioTransferencia();
              },
            ),
          );

          future.then((transferenciaRecebida) {
            if (transferenciaRecebida != null) {
              setState(() {
                _transferencias.add(transferenciaRecebida);
              });
              debugPrint(
                  ''''Nº DE TRANSFERÊNCIA: ${transferenciaRecebida.numeroConta}
                      VALOR TRANSFERIDO: ${transferenciaRecebida.valor}
                  ''');
            }
          });

          /* final Future futureB = Navigator.pushNamed(context, 'formulario');

          futureB.then((value) {
            if (value != null) {
              _transferencias.add(value);
              print(_transferencias.length);
            }
          }); */
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
    );
  }
}
