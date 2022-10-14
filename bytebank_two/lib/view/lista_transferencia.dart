import 'package:bytebank_two/components/item_transferencia.dart';
import 'package:bytebank_two/model/transferencia.dart';
import 'package:flutter/material.dart';

class ListaTransferencia extends StatefulWidget {
  @override
  State<ListaTransferencia> createState() => _ListaTransferenciaState();
}

class _ListaTransferenciaState extends State<ListaTransferencia> {
  List<Transferencia> recebeTransferencias = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Transferência'),
      ),
      body: ListView.builder(
        itemCount: recebeTransferencias.length,
        itemBuilder: (context, index) {
          return ItemTransferencia(transferencia: recebeTransferencias[index]);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[400],
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future future =
              Navigator.of(context).pushNamed('formTransferencia');

          future.then((transferenciaRecebida) {
            if (transferenciaRecebida != null) {
              setState(() {
                recebeTransferencias.add(transferenciaRecebida);
              });
              debugPrint(transferenciaRecebida.numeroConta.toString());
              debugPrint(transferenciaRecebida.valor.toString());
            } else {
              debugPrint('O Valor da transferência está nulla');
            }
          });
        },
        tooltip: 'Transferência',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
