import 'package:flutter/material.dart';
import 'package:jogo_da_velha/model/jogador.dart';

class ResultadoJogadorIndividual extends StatelessWidget {
  const ResultadoJogadorIndividual({required this.jogador, super.key});

  final Jogador jogador;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 80,
      child: Card(
        color: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Column(
            children: [
              Text(
                jogador.nome,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Spacer(),
              Text(
                jogador.numeroVitorias.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
