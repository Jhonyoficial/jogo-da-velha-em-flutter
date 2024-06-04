import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jogo_da_velha/riverpod/entradas_tabuleiro.riverpod.dart';
import 'package:jogo_da_velha/riverpod/jogadores_provider.dart';
import 'package:jogo_da_velha/widgets/linha_tabuleiro.dart';
import 'package:jogo_da_velha/widgets/resultado.dart';

class Tabuleiro extends ConsumerWidget {
  const Tabuleiro({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _jogadoresProvider = ref.watch(jogadoresProvider);

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
            const Resultado(),
            const LinhaTabuleiro(),
            Text(
              'Jogador da vez: ${_jogadoresProvider.contador % 2 != 0 ? _jogadoresProvider.jogador1.nome : _jogadoresProvider.jogador2.nome}',
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () {
                ref.read(entradasTabuleiroRiver.notifier).setPadrao();
                },
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Reiniciar',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
