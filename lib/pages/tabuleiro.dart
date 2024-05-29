import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jogo_da_velha/riverpod/jogadores_provider.dart';
import 'package:jogo_da_velha/widgets/linha_tabuleiro.dart';
import 'package:jogo_da_velha/widgets/resultado.dart';

class Tabuleiro extends ConsumerWidget {
  const Tabuleiro({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Jogo da velha',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Resultado(),
            SizedBox(height: 70),
            LinhaTabuleiro(),
            SizedBox(
              height: 50,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Reiniciar',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
