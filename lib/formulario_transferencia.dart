import 'package:bytebank/editor.dart';
import 'package:bytebank/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  final controladorCampoNumeroConta = TextEditingController();
  final controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criando Transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
                controlador: controladorCampoNumeroConta,
                rotulo: 'Número da conta',
                dica: '0000'),
            Editor(
              controlador: controladorCampoValor,
              rotulo: 'Valor',
              dica: '0.00',
              icone: Icons.monetization_on_rounded,
            ),
            Container(
              width: 120,
              height: 50,
              color: Colors.red,
              child: Text(
                'Novamente eu vou testar esse Widget pra vê o que vai acontecer',
                style: TextStyle(overflow: TextOverflow.ellipsis),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                final double? valor =
                    double.tryParse(controladorCampoValor.text);
                final int? numeroConta =
                    int.tryParse(controladorCampoNumeroConta.text);

                if (numeroConta != null && valor != null) {
                  final transferencia = Transferencia(valor, numeroConta);
                }

                if (numeroConta != null && valor != null) {
                  final criaTransferencia = Transferencia(valor, numeroConta);
                  Navigator.pop(context, criaTransferencia);

                  ScaffoldMessenger.of((context)).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Número da conta: ${criaTransferencia.numeroConta} Valor: ${criaTransferencia.valor}'),
                      action: SnackBarAction(
                        label: 'Action',
                        onPressed: () {
                          // Code to execute.
                        },
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text('Você precisa atribuir algum valor aos campos!'),
                      backgroundColor: Colors.red,
                      action: SnackBarAction(
                        label: 'Action',
                        onPressed: () {
                          // Code to execute.
                        },
                      ),
                    ),
                  );
                }
              },
              child: const Text(
                'Confirmar',
                style: TextStyle(overflow: TextOverflow.ellipsis),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('dash');
                },
                child: Text('Bandeiras'))
          ],
        ),
      ),
    );
  }

  _criarTransferencia() {}
}
