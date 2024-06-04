import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jogo_da_velha/riverpod/entradas_tabuleiro.riverpod.dart';
import 'package:jogo_da_velha/riverpod/jogadores_provider.dart';

import '../model/jogador.dart';

class ButtonTabuleiro extends ConsumerWidget {
  const ButtonTabuleiro({required this.indiceArrayPai});

  final int indiceArrayPai;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _listEntradas = ref.watch(entradasTabuleiroRiver);
    final _funcoesEntrada = ref.read(entradasTabuleiroRiver.notifier);


    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: {
        for (var entry in _listEntradas[indiceArrayPai].asMap().entries)
          entry.key: Padding(
            padding: const EdgeInsets.all(4),
            child: ElevatedButton(
              onPressed: entry.value.isEmpty ?  () {
                _funcoesEntrada.alterarValor(indiceArrayPai, entry.key, ref.read(jogadoresProvider.notifier).getJogadorDaVez());
                ref.read(jogadoresProvider.notifier).incrementarContador();
              } : null,
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(),
                fixedSize: const Size(100, 100),
                backgroundColor: Colors.grey[500],
              ),
              child: Text(
                entry.value,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          )
      }.values.toList(),
    );
  }
}
