import 'package:flutter/material.dart';
import 'package:jogo_da_velha/model/jogador.dart';

class ResultadoJogadorIndividual extends StatelessWidget {
  const ResultadoJogadorIndividual({required this.jogador, super.key});

  final Jogador jogador;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 70,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(jogador.nome),
              const Spacer(),
              Text(jogador.numeroVitorias.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
