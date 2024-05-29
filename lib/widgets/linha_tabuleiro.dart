import 'package:flutter/material.dart';

import 'button_tabuleiro.dart';

class LinhaTabuleiro extends StatelessWidget {
  const LinhaTabuleiro({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 400,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Card(
          elevation: 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonTabuleiro(indiceArrayPai: 0),
              ButtonTabuleiro(indiceArrayPai: 1),
              ButtonTabuleiro(indiceArrayPai: 2),
            ],
          ),
        ),
      ),
    );
  }
}
