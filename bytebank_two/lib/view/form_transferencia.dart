import 'package:bytebank_two/components/editor.dart';
import 'package:bytebank_two/model/transferencia.dart';
import 'package:flutter/material.dart';

class FormTransferencia extends StatelessWidget {
  final numeroContaController = TextEditingController();
  final valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              rotulo: 'Nº da conta',
              dica: '0000',
              controlador: numeroContaController,
            ),
            Editor(
                rotulo: 'Valor',
                dica: '0.00',
                controlador: valorController,
                icone: Icons.monetization_on),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                final int? numeroConta =
                    int.tryParse(numeroContaController.text);

                final double? valor = double.tryParse(valorController.text);

                if (numeroConta != null && valor != null) {
                  final enviaTransferencia =
                      Transferencia(numeroConta: numeroConta, valor: valor);

                  Navigator.pop(context, enviaTransferencia);
                }
              },
              child: const Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}
