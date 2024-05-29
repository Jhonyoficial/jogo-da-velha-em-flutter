import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jogo_da_velha/riverpod/jogadores_provider.dart';
import 'package:jogo_da_velha/widgets/resultado_jogador_individual.dart';

class Resultado extends ConsumerWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _jogadoresProvider = ref.watch(jogadoresProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ResultadoJogadorIndividual(jogador: _jogadoresProvider.jogador1),
        const SizedBox(width: 120),
        ResultadoJogadorIndividual(jogador: _jogadoresProvider.jogador2)
      ],
    );
  }
}
