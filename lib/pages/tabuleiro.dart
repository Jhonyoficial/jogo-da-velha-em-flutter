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

    return PopScope(
      onPopInvoked: (_) => ref.invalidate(entradasTabuleiroRiver),
      child: Scaffold(
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
                'Vez do: ${_jogadoresProvider.contador % 2 != 0 ? _jogadoresProvider.jogador1.nome : _jogadoresProvider.jogador2.nome}',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              const SizedBox(height: 20),
            ],
          )),
    );
  }
}
