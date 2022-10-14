import 'package:flutter/material.dart';

class Flag extends StatelessWidget {
  final Color cor1;
  final Color cor2;
  final Color cor3;
  final double largura;

  const Flag(this.cor1, this.cor2, this.cor3, this.largura, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        child: Row(
          children: [
            Container(
              height: 140,
              width: largura,
              color: cor1,
            ),
            Container(
              height: 140,
              width: largura,
              color: cor2,
            ),
            Container(
              height: 140,
              width: largura,
              color: cor3,
            ),
          ],
        ),
      ),
    );
  }
}
